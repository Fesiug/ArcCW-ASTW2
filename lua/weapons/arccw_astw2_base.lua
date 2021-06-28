
-- Fesiug

SWEP.Spawnable			= false
SWEP.AdminOnly			= false
SWEP.Base				= "arccw_base"
SWEP.Category			= "ArcCW, ASTW2"

SWEP.PrintName			= "ArcCW ASTW2 Sub-Base"
SWEP.Trivia_Class		= "Pistol"
SWEP.Trivia_Desc		= ""
SWEP.Trivia_Manufacturer = nil
SWEP.Trivia_Calibre		= nil
SWEP.Trivia_Mechanism	= nil
SWEP.Trivia_Country		= nil
SWEP.Trivia_Year		= nil

SWEP.Slot			= 1

SWEP.UseHands			= true

SWEP.ViewModel			= "models/weapons/c_pistol.mdl"
SWEP.WorldModel			= "models/weapons/w_pist_usp.mdl"
SWEP.ViewModelFOV		= 65

SWEP.Delay			= 0.025
SWEP.Num			= 1
SWEP.Firemodes = {
	{
		Mode = 2,
	}
}

SWEP.MuzzleEffectAttachment = 1
SWEP.CaseEffectAttachment	= 2
SWEP.ShootSoundSilenced	= ""
SWEP.DistantShootSound	= ""
SWEP.BarrelLength		= 0

SWEP.CanBash = false
SWEP.MeleeTime = 69/1000
SWEP.MeleeDamage = 420

SWEP.FeASTW2_RandChance_Recoil		= 0.33
SWEP.FeASTW2_RandChance_RecoilSide	= 0.33

SWEP.FeASTW2_RandMult_Recoil		= 3
SWEP.FeASTW2_RandMult_RecoilSide	= 3

SWEP.IronSightStruct	= {
	Pos			=	Vector(0, -3, 0),
	Ang			=	Angle (0.5, 0, 0),
	Magnification		= 1.2,
	CrosshairInSights	= false,
    SwitchToSound		= "weapons/tfa_csgo/movement2.wav",
    SwitchFromSound		= "weapons/tfa_csgo/movement3.wav",
}

SWEP.Hook_ModifyRecoil = function(wep)    
	local dice		= util.SharedRandom( CurTime(), 0, 1 )
	local dics		= util.SharedRandom( CurTime(), 0, 1, 1 )

	local c_ru = wep.FeASTW2_RandChance_Recoil
	local c_rs = wep.FeASTW2_RandChance_RecoilSide
	local m_ru = wep.FeASTW2_RandMult_Recoil
	local m_rs = wep.FeASTW2_RandMult_RecoilSide

	local r = 1
	local rs = 1

    local fuckx = 0
    local fucky = 0
    

	if (dice < c_ru) then
		r = m_ru
        fuckx = 2
	end

	if (dics < c_rs) then
		rs = m_rs
        fucky = (util.SharedRandom( CurTime(), 0, 1 ) < 0.5 and 2 or -2)
	end

	if wep:GetState() == ArcCW.STATE_SIGHTS then
		r	=	r * 0.5
		rs	=	rs * 0.5
        fuckx   = fuckx * 0.5
        fucky   = fucky * 0.5
	end

    local owner = wep:GetOwner()
    local vpa = owner:GetViewPunchAngles()

    owner:SetViewPunchAngles(Angle(vpa.x - fuckx, vpa.y - fucky, vpa.z))
    --owner:SetEyeAngles( owner:EyeAngles() - Angle(fuckx - 0.5, fucky, 0) )

	return {
		Recoil		= 1 * r,
		RecoilSide	= 1 * rs,
		VisualRecoilMult = 1,
	}
end

SWEP.Hook_GetHUDData = function(wep, data)
	local anim = wep:SelectReloadAnimation()
	local mult = wep:GetBuff_Mult("Mult_ReloadTime")
	local reloadtime = 3
	if wep.Animations[anim].MinProgress then
		reloadtime = wep.Animations[anim].MinProgress * mult
	else
		reloadtime = wep:GetAnimKeyTime(anim) * mult
	end

	local time = math.ceil(math.Round(wep:GetNextPrimaryFire() - CurTime(), 1)*10)/10

	-- I'm lazy
	if time > 3 then
		time = math.ceil(time)
	elseif string.len(time) == 1 then
		time = time .. ".0"
	end

	data.heat_enabled = wep:GetReloading()
	data.heat_level = reloadtime+(CurTime() - wep:GetNextPrimaryFire())--(wep:GetNextPrimaryFire() - CurTime())
	data.heat_maxlevel = reloadtime
	data.heat_name = time.."s left"
	data.heat_locked = false
end

SWEP.Hook_FiremodeName = function(wep)
    if wep:GetInUBGL() then
        return wep:GetBuff_Override("UBGL_PrintName") or "UBGL"
    end

    if wep.ManualAction then
        return "Manual"
    end

    local fm = wep:GetCurrentFiremode()

    local mode = fm.Mode
    if mode == 0 then return "Safety" end
    if mode == 1 then return "Semi" end
    if mode >= 2 then return "Automatic" end
    if mode < 0 then return tostring(-mode) .. "-Burst" end
end

SWEP.Hook_FiremodeBars = function(wep)
	local hng = ""

	local plus = math.max(wep:Clip1()-wep:GetCapacity(), 0)

	for i=1, wep:GetCapacity()-wep:Clip1() do
		hng = "#" .. hng
	end

	for i=1, plus do
		hng = "!" .. hng 
	end

	for i=1, wep:Clip1()-plus*2 do
		hng = hng .. "-"
	end

	return hng
end

--[[DEFINE_BASECLASS("arccw_base")
function SWEP:Reload()
    BaseClass.Reload(self)
end]]

--[[SWEP.Hook_Think = function(wep)
    if IsFirstTimePredicted() then
        local vpa = wep:GetOwner():GetViewPunchAngles()
        local csk = (-10 * wep:GetSightDelta())--wep:GetHALOZOOM()
        --local ft = FrameTime() * 600
        --local sfsafwesdf = (wep:GetState() == ArcCW.STATE_SIGHTS and ft or -ft)
        
            --wep:SetHALOZOOM(math.max(math.min(csk + sfsafwesdf, 0),-10))
            --wep:SetHALOZOOM(-10 * wep:GetSightDelta())

        --wep:SetHALOZOOM(math.Clamp(csk, 0, -10))
        wep:GetOwner():SetViewPunchAngles(Angle(csk, vpa.y, vpa.z))
    end
end]]
--DEFINE_BASECLASS("arccw_base")
--[[function SWEP:SetupDataTables()
    BaseClass.SetupDataTables( self )

    self:NetworkVar("Float", 27, "HALOZOOM")

    if SERVER then
        self:SetHALOZOOM(-10)
    end
end]]
--[[SWEP.Hook_DrawHUD = function(wep)
	surface.SetTextColor(255, 255, 255, 255)
	surface.SetFont("ArcCW_26")

	local troll = wep:GetHALOZOOM()
	
	surface.SetTextPos(ScrW()/2-surface.GetTextSize(troll)/2, ScreenScale(64))
	surface.DrawText(wep:GetHALOZOOM())
	--surface.SetTextPos(ScrW()/2-surface.GetTextSize(math.Round(CurTime(),1)-troll)/2, ScreenScale(128))
	--surface.DrawText(math.Round(CurTime(),1) - troll)
end]]

SWEP.Animations = {
	["idle"] = {
		Source = "idle",
	},
	["reload"] = {
		Source = "reload",
	},
}