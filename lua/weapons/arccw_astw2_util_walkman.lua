
-- Fesiug

SWEP.Spawnable			= true
SWEP.AdminOnly			= false
SWEP.UseHands			= true
SWEP.Base				= "arccw_astw2_base"
SWEP.NPCWeaponType		= "weapon_pistol"
SWEP.NPCWeight			= 100

-- -- -- -- User information
SWEP.Category			= "ArcCW, ASTW2 - Pistols"
SWEP.PrintName			= "Walkman"
SWEP.Trivia_Class		= "Portable Media Player"
SWEP.Trivia_Desc		= [[A modern handheld music player, inspired by the original Sony Walkman. Able to play multiple different music tracks.

ATTACK1 to play or stop the current track.
E or R to cycle tracks.
WALK + E or R to cycle album.
WALK + ATTACK1 to cycle repeat modes.
(Off, Single, Album)]]
--ATTACK2 + SCROLL to change volume.
SWEP.Slot				= 0

-- -- -- -- View
SWEP.ViewModel			= "models/weapons/arccw/astw2/c_cod4_beretta_5.mdl"
SWEP.ViewModelFOV		= 75

-- -- -- -- World
SWEP.WorldModel			= "models/weapons/w_eq_walkman.mdl"
SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.HoldtypeHolstered		= "normal"
SWEP.HoldtypeActive			= "pistol"
SWEP.HoldtypeSights			= "revolver"

-- -- -- -- Sound
SWEP.ShootVol			= 85
SWEP.ShootPitch			= 100
SWEP.ShootSound			= "weapons/glock/glock18-1.wav"

-- -- -- -- Damage statistics
SWEP.Damage					= 12
SWEP.DamageMin				= 8
SWEP.Range					= 40
SWEP.Penetration			= 5
SWEP.DamageType				= DMG_BULLET

SWEP.ChamberSize			= 0
SWEP.Primary.ClipSize		= -1

-- -- -- -- Weapon control
SWEP.Recoil			= 0.6
SWEP.RecoilSide		= 0.3

SWEP.ASTW2Accuracy      = 1/55
SWEP.AccuracyMOA		= 30 * math.Round(55*SWEP.ASTW2Accuracy,1)
SWEP.HipDispersion		= 250
SWEP.MoveDispersion		= 100
SWEP.SightsDispersion	= 0

SWEP.SightTime			= 0.2
SWEP.SpeedMult			= 1
SWEP.SightedSpeedMult	= 0.75

-- -- -- -- Firing
SWEP.Delay			= 60 / 400
SWEP.Num			= 1
SWEP.Primary.Ammo	= "none"
SWEP.Firemodes = {
	{
		Mode = 1
	}
}

-- -- -- -- Visual
SWEP.MuzzleEffect		= "muzzleflash_pistol"
SWEP.ShellModel			= "models/shells/shell_9mm.mdl"
SWEP.ShellScale			= 1
SWEP.ShellRotateAngle	= Angle(0, 180, 0)
SWEP.IronSightStruct	= {
	Pos	=	Vector(-2.04, 0, 1.4),
	Ang	=	Angle (-1, -0.1, 0),
	Magnification = 1.05,
	CrosshairInSights = false,
}

-- -- -- -- The thing
SWEP.AttachmentElements = {
	["weapon"] = {
		VMElements = {
			{
				Model = "models/weapons/w_eq_walkman.mdl",
				Bone = "j_gun",
				Offset = {
					pos = Vector(5.1, 0.8, -6),
					ang = Angle(-15, 0, 0),
				},
				Scale = Vector(.75, .75, .75)
			}
		},
	}
}
SWEP.DefaultElements = {"weapon"}

local apBS =  Vector(0, 0, 1)

-- -- -- -- Positions
SWEP.ActivePos		= Vector(0, 0, 1) + apBS
SWEP.ActiveAng		= Angle (-15, 0, 0)
	SWEP.HolsterPos		= Vector(0, 0, 0)
	SWEP.HolsterAng		= Angle (0, 0, 0)
		SWEP.CustomizePos	= Vector(2, 0, -2) + apBS
		SWEP.CustomizeAng	= Angle (7.5, 15, 0)
		
-- -- -- -- Animation
SWEP.Attachments = {
	{
		PrintName = "grip style",
		Slot = "integ",
		Bone = "j_gun",
		Offset = {
			vpos = Vector(-2.9, -0.5, -2.9),
			vang = Angle(15, 0, 0),
		},
		--Installed = "tp_integ_rootintootin",
		Integral = false,
		Hidden = false,
		FreeSlot = true,
	},
}

-- Disables most trivia info
SWEP.PrimaryBash = true
SWEP.CanBash = false

-- -- -- -- Animation
SWEP.Animations = {
	["idle"] = {
		Source = "idle",
	},
	["draw"] = {
		Source = "draw",
		Time = 0.5,
		LHIK = true,
		LHIKIn = 0,
		LHIKOut = 0.5,
	},
	["holster"] = {
		Source = "holster",
		Time = 0.5,
		LHIK = true,
		LHIKIn = 0.5,
		LHIKOut = 0,
	},
	["enter_sprint"] = {
		Source = "sprint_in",
	},
	["idle_sprint"] = {
		Source = "sprint",
		Time = 30/40,
	},
	["exit_sprint"] = {
		Source = "sprint_out",
	},
}

SWEP.Hook_ShouldNotFire = function(wep)
	return true
end
SWEP.Hook_ShouldNotSight = function(wep)
	return true
end

DEFINE_BASECLASS("arccw_base")

function SWEP:SetupDataTables()
	BaseClass.SetupDataTables( self )

	self:NetworkVar("Int",		31,	"Track")
	self:NetworkVar("Int",		30,	"Album")
	self:NetworkVar("Int",		29,	"Repeat")

	self:NetworkVar("Bool",		31,	"Playing")

	self:NetworkVar("Float",	31,	"LastPlayedTime")
	self:NetworkVar("Float",	30,	"PausedTime")
	--self:NetworkVar("Float",	29,	"Volume")
	self:NetworkVar("Float",	28,	"LastAlbumChangeTime")

	if SERVER then
		self:SetTrack( 1 )
		self:SetAlbum( 1 )
		self:SetRepeat( 0 )
		self:SetPlaying( false )
		self:SetLastPlayedTime( CurTime() )
		self:SetPausedTime( CurTime() )
		self:SetLastAlbumChangeTime( CurTime() )
	end
end

function SWEP:PauseTrack()
	self.PlayingTrackArcCW:ChangePitch( 0, 0 )
	self:SetPausedTime( self:GetTrackTime() )
	self:SetPlaying( false )
end

function SWEP:PlayTrack()
	if !self.PlayingTrackArcCW then
		self:CreateTrack( self:GetTrack() )
		self:SetLastPlayedTime( CurTime() )
	end

	self.PlayingTrackArcCW:ChangePitch( 100, 0 )
	self:SetPlaying( true )
	self:SetLastPlayedTime( CurTime() - self:GetPausedTime() )
end

function SWEP:GetTrackTime()
	local time = CurTime() - self:GetLastPlayedTime()

	if !self:GetPlaying() then
		time = self:GetPausedTime()
	end

	return time
end

--[[

-- Volume changing doesn't work for some tracks and I don't know why

if CLIENT then
	SWEP.LastVolumeChangeTime = CurTime()-3
end

function SWEP:ChangeVolume( hm )
	local amount = hm
	if self.PlayingTrackArcCW then
		local stfu = math.Clamp(self.PlayingTrackArcCW:GetVolume() + hm, 0.01, 1)
		self.PlayingTrackArcCW:ChangeVolume( stfu, 0.05 )
		self:EmitSound("ui/buttonclick.wav", 50, 80+(200*stfu))
		self.LastVolumeChangeTime = CurTime()
	end
end]]

function SWEP:CreateTrack( track )
	local album = self:GetAlbum()

	if self.PlayingTrackArcCW then
		self.PlayingTrackArcCW:Stop()
	end

	self.PlayingTrackArcCW = CreateSound( self:GetOwner(), ASTW2_Walkman_Tracks[album][1][track][3])
	self:SetLastPlayedTime( CurTime() )
	self:SetPausedTime( 0 )
	self.PlayingTrackArcCW:Play()
	if !self:GetPlaying() then
		self:PauseTrack()
	end
end

function SWEP:HandleRepeats()
	local album = self:GetAlbum()

	if self:GetTrackTime() >= ASTW2_Walkman_Tracks[album][1][ self:GetTrack() ][4] then
		if self:GetRepeat() == 0 then
			self:SwitchTrack( 1 )
			if self:GetTrack() == 1 then
				self:SwitchAlbum( 1 )
			end
		elseif self:GetRepeat() == 1 then
			self:SwitchTrack( 0 )
		elseif self:GetRepeat() == 2 then
			self:SwitchTrack( 1 )
		end
	end
end

function SWEP:RecursiveRepeater()
	timer.Create( "astw2_walkman_repeat" .. self:EntIndex(), 1, 1, function()
		if !IsValid(self) or !IsValid(self.Owner) or !self.Owner:Alive() then return end
		self:RecursiveRepeater()
		self:HandleRepeats()
	end)
end

function SWEP:Holster()
	--if self:GetRepeat() != 0 then
		self:RecursiveRepeater()
	--end
	return true
end

function SWEP:Deploy()
	BaseClass.Deploy( self )
	if !self.PlayingTrackArcCW then
		self:CreateTrack( self:GetTrack() )
	end
	timer.Remove( "astw2_walkman_repeat" .. self:EntIndex() )
	return true
end

function SWEP:OnRemove()
	if self.PlayingTrackArcCW then
		self.PlayingTrackArcCW:Stop()
	end
end

function SWEP:OnDrop()
	if self.PlayingTrackArcCW then
		self.PlayingTrackArcCW:Stop()
	end
end

function SWEP:ToggleRepeat()
	local repeatmode = self:GetRepeat() + 1
	
	if repeatmode > 2 then
		repeatmode = 0
	end
	self:EmitSound("ui/buttonclick.wav", 50, 80+repeatmode*7)
	self:SetRepeat( repeatmode )
end

local function FormatLength(nduration)
	if (!nduration) then nduration = 0 end
	if (nduration < 0) then nduration = 0 end

	local nm = math.floor(nduration / 60)
	local ns = math.floor(nduration % 60)

	local retstring = string.format("%01d", nm) .. ":" .. string.format("%02d", ns)
	return retstring
end // Thank you Wiremod team

SWEP.Hook_GetHUDData = function(wep, data)

	-- Time
	local album = wep:GetAlbum()

	local line = FormatLength( ASTW2_Walkman_Tracks[album][1][ wep:GetTrack() ][4] )

	data.clip = FormatLength( wep:GetTrackTime() )
	data.ammo = line

	-- Heat shit
	data.heat_enabled = true
	--[[if wep.LastVolumeChangeTime + 1.5 > CurTime() and wep.PlayingTrackArcCW or wep:GetOwner():KeyDown( IN_ATTACK2 ) and wep.PlayingTrackArcCW then
		data.heat_level = wep.PlayingTrackArcCW:GetVolume()
		data.heat_maxlevel = 1
		data.heat_name = math.Round(wep.PlayingTrackArcCW:GetVolume()*100,0) .. "% volume"
	else]]
    if wep:GetTrackTime() > 2.5 and wep:GetTrackTime() < 5 then
		data.heat_name = "by: " .. ASTW2_Walkman_Tracks[album][1][ wep:GetTrack() ][2]
		data.heat_level = 0--wep:GetTrackTime()
		data.heat_maxlevel = math.huge--ASTW2_Walkman_Tracks[album][1][ wep:GetTrack() ][4]
	else
		data.heat_level = 0--wep:GetTrackTime()
		data.heat_maxlevel = math.huge--ASTW2_Walkman_Tracks[album][1][ wep:GetTrack() ][4]
		data.heat_name = ASTW2_Walkman_Tracks[wep:GetAlbum()][1][ wep:GetTrack() ][1]
	end
end

SWEP.Hook_FiremodeName = function(wep)
	local line2 = ""
	local album = wep:GetAlbum()

	if wep:GetLastAlbumChangeTime() + 1.5 > CurTime() then
		line2 = ASTW2_Walkman_Tracks[album][2]
	else

		line2 = line2 .. (wep:GetPlaying() and "⏸" or "⏵")
		--line2 = line2 .. (wep:GetPlaying() and "||" or ">")
		
		if wep:GetRepeat() == 0 then
			line2 = line2 .. "R. Off"
		elseif wep:GetRepeat() == 1 then
			line2 = line2 .. "R. Single"
		elseif wep:GetRepeat() == 2 then
			line2 = line2 .. "R. Album"
		end

		line2 = line2 .. " " .. wep:GetTrack() .. "/" .. #ASTW2_Walkman_Tracks[album][1]

	end
	return line2
end

SWEP.Hook_FiremodeBars = function(wep)
	local album = wep:GetAlbum()
	local line2 = wep:GetTrack() .. "/" .. #ASTW2_Walkman_Tracks[album][1]
	local indanger = #ASTW2_Walkman_Tracks[album][1] > 30

	local hmg = ""

	if indanger then
		for i=1, #ASTW2_Walkman_Tracks[album][1] do
			hmg = hmg .. "#"
		end
	else
		for i=1, #ASTW2_Walkman_Tracks[album][1] do
			hmg = hmg .. "_"
		end
	end

	hmg = string.SetChar(hmg, tonumber(wep:GetTrack()), (indanger and "_" or "-"))

	return hmg
end

function SWEP:SwitchTrack( forward )
	local track = self:GetTrack()
	local album = self:GetAlbum()

	track = track + forward
	if track > #ASTW2_Walkman_Tracks[album][1] then
		track = 1
	elseif track < 1 then
		track = #ASTW2_Walkman_Tracks[album][1]
	end

	self:SetTrack( track )

	self:CreateTrack( self:GetTrack() )
end

function SWEP:SwitchAlbum( forward )
	local album = self:GetAlbum()

	album = album + forward
	if album > #ASTW2_Walkman_Tracks then
		album = 1
	elseif album < 1 then
		album = #ASTW2_Walkman_Tracks
	end

	self:SetAlbum( album )
	self:SetTrack( 1 )

	self:CreateTrack( self:GetTrack() )
	self:SetLastAlbumChangeTime( CurTime() )
end

function SWEP:Reload()
end

SWEP.Hook_Think = function(wep)
	if !wep:IsValid() then return end
	if !IsFirstTimePredicted() then return end

	wep:HandleRepeats()

	if wep.Owner:KeyPressed( IN_ATTACK ) then
		if wep.Owner:KeyDown( IN_WALK ) then
			wep:ToggleRepeat()
		else
			if wep:GetPlaying() then
				wep:PauseTrack()
			else
				wep:PlayTrack()
			end
			wep:EmitSound("ui/buttonclick.wav", 50, 100)
		end
	elseif wep.Owner:KeyPressed( IN_USE ) then
		if wep.Owner:KeyDown( IN_WALK ) then
			wep:SwitchAlbum( -1 )
			wep:EmitSound("ui/buttonclick.wav", 50, 90)
		else
			wep:SwitchTrack( -1 )
			wep:EmitSound("ui/buttonclick.wav", 50, 95)
		end
	elseif wep.Owner:KeyPressed( IN_RELOAD ) then
		if wep.Owner:KeyDown( IN_WALK ) then
			wep:SwitchAlbum( 1 )
			wep:EmitSound("ui/buttonclick.wav", 50, 110)
		else
			wep:SwitchTrack( 1 )
			wep:EmitSound("ui/buttonclick.wav", 50, 105)
		end
	end
end


--[[local function ArcCW_Walkman_Volume(ply, bind, pressed)
    if !(ply:IsValid() and pressed) then return end

    local wep = ply:GetActiveWeapon()

    if !wep.ArcCW then return end
    if !wep:GetClass() == "arccw_astw2_util_walkman" then return end

    local block = false

    if ply:KeyDown( IN_ATTACK2 ) then
        if bind == "invnext" then
            wep:ChangeVolume( -0.05 )
            block = true
        elseif bind == "invprev" then
            wep:ChangeVolume( 0.05 )
            block = true
        end
    end

    if block then return true end
end

hook.Add("PlayerBindPress", "ArcCW_Walkman_Volume", ArcCW_Walkman_Volume)]]