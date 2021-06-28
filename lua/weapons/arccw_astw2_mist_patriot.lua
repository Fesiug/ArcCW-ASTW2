
-- Fesiug

SWEP.Spawnable			= true
SWEP.AdminOnly			= false
SWEP.UseHands			= true
SWEP.Base				= "arccw_astw2_base"
SWEP.NPCWeaponType		= "weapon_pistol"
SWEP.NPCWeight			= 100

-- -- -- -- User information
SWEP.Category			= "ArcCW, ASTW2 - Mach. Pistols"
SWEP.PrintName			= "The Patriot"
SWEP.Trivia_Class		= "Machine Pistol"
SWEP.Trivia_Desc		= "A stockless XM16E1 made specially for Legendary Soldier 'The Boss', mother of Special Operations. Combines the power of a rifle and the quick handling of a pistol. The short barrel results in a high deal of tumble, and thus makes this pistol only usable by the toughest of individuals. Due to using a different, non-infinity-symbol-shaped magazine, this gun does not have unlimited ammo."
SWEP.Slot				= 1

-- -- -- -- View
SWEP.ViewModel			= "models/weapons/arccw/astw2/c_cod4_m16a4_2.mdl"
SWEP.ViewModelFOV		= 75

-- -- -- -- World
SWEP.WorldModel			= "models/weapons/arccw/astw2/worldmodels/w_smg_thepatriot.mdl"
SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.HoldtypeHolstered		= "normal"
SWEP.HoldtypeActive			= "pistol"
SWEP.HoldtypeSights			= "revolver"

-- -- -- -- Sound
SWEP.ShootVol			= 85
SWEP.ShootPitch			= 125
SWEP.ShootSound			= "weapons/m4a1/m4a1_unsil-1.wav"

-- -- -- -- Damage statistics
SWEP.Damage					= 18
SWEP.DamageMin				= 12
SWEP.Range					= 40
SWEP.Penetration			= 9
SWEP.DamageType				= DMG_BULLET

SWEP.ChamberSize			= 1
SWEP.Primary.ClipSize		= 100

-- -- -- -- Weapon control
SWEP.Recoil			= 0.7
SWEP.RecoilSide		= 0.5

SWEP.ASTW2Accuracy      = 1/50
SWEP.AccuracyMOA		= 30 * math.Round(55*SWEP.ASTW2Accuracy,2)
SWEP.HipDispersion		= 250
SWEP.MoveDispersion		= 100
SWEP.SightsDispersion	= 0

SWEP.SightTime			= 0.2
SWEP.SpeedMult			= 1
SWEP.SightedSpeedMult	= 0.75

-- -- -- -- Firing
SWEP.Delay			= 60 / 900
SWEP.Num			= 1
SWEP.Primary.Ammo	= "pistol"
SWEP.Firemodes = {
	{
		Mode = 2
	}
}

-- -- -- -- Visual
SWEP.MuzzleEffect		= "muzzleflash_pistol"
SWEP.ShellModel			= "models/shells/shell_556.mdl"
SWEP.ShellScale			= 1
SWEP.ShellRotateAngle	= Angle(0, 90, 0)
SWEP.IronSightStruct	= {
	Pos	=	Vector(-3.34, 2, 0),
	Ang	=	Angle (-1, -0.1, -15),
	Magnification = 1.05,
	CrosshairInSights = false,
}

-- -- -- -- The thing
SWEP.AttachmentElements = {
	["weapon"] = {
		VMElements = {
			{
				Model = "models/weapons/arccw/astw2/worldmodels/w_smg_thepatriot.mdl",
				Bone = "j_gun",
				Offset = {
					pos = Vector(7, 0, -4),
					ang = Angle(0, 0, 0),
				},
				Scale = Vector(.8, .8, .8),
                ModelBodygroups = "10",
			}
		},
	},
	["clip"] = {
		VMElements = {
			{
				Model = "models/weapons/arccw/astw2/worldmodels/w_smg_thepatriot_mag.mdl",
				Bone = "tag_clip",
				Offset = {
					pos = Vector(3.5, 0, -5),
					ang = Angle(0, 0, 0),
				},
				Scale = Vector(.8, .8, .8),
                ModelBodygroups = "21",
			}
		},
	}
}
SWEP.DefaultElements = {"weapon","clip"}
SWEP.MagazineDrop_Model = ""
SWEP.MagazineDrop_Time  = 1.5
SWEP.MagazineDrop_Angle = Angle(0, 0, 0)

-- It's so fucking big O_O
SWEP.Hook_FiremodeBars = function(wep)
	local hng = ""
    local mc = math.ceil
    local split = 4

	local plus = mc(math.max(wep:Clip1()/split-wep:GetCapacity()/split, 0))

	for i=1, mc(wep:GetCapacity()/split)-mc(wep:Clip1()/split) do
		hng = "#" .. hng
	end

	for i=1, plus do
		hng = "!" .. hng 
	end

	for i=1, mc(wep:Clip1()/split)-plus*2 do
		hng = hng .. "-"
	end

	return hng
end

local apBS =  Vector(0, 0, 1)

-- -- -- -- Positions
SWEP.ActivePos		= Vector(0.5, 2, 0) + apBS
SWEP.ActiveAng		= Angle (0, 0, 0)
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
			vpos = Vector(-2, -0.5, -3.5),
			vang = Angle(0, 0, 40),
		},
        Installed = "tp_integ_rootintootin",
		Integral = false,
		Hidden = false,
		FreeSlot = true,
	},
}

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
	["fire"] = {
		Source = "fire",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "fire_ads",
		ShellEjectAt = 0,
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
	["reload"] = {
		Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 2,
--		MinProgress = 1.2,
		SoundTable = {
			{ s = "weapons/m4a1/m4a1_clipout.wav",			t = 0.3 },
			{ s = "weapons/g3sg1/g3sg1_clipin.wav",			t = 1 },
			{ s = "weapons/m4a1/m4a1_boltpull.wav",			t = 1.4 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.4,
	},
}