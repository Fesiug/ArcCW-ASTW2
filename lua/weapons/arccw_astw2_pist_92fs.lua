
-- Fesiug

SWEP.Spawnable			= true
SWEP.AdminOnly			= false
SWEP.UseHands			= true
SWEP.Base				= "arccw_astw2_base"
SWEP.NPCWeaponType		= "weapon_pistol"
SWEP.NPCWeight			= 100

-- -- -- -- User information
SWEP.Category			= "ArcCW, ASTW2 - Pistols"
SWEP.PrintName			= "92FS"
SWEP.Trivia_Class		= "Pistol"
SWEP.Trivia_Desc		= "Italian 9mm autoloading handgun, developed in the '80s as part of a new wave of 'wonder nine' double-stack polymer handguns. It was deployed as the M9 in the US military through the latter quarter of the 20th century."
SWEP.Slot				= 1

-- -- -- -- View
SWEP.ViewModel			= "models/weapons/arccw/astw2/c_cod4_beretta_5.mdl"
SWEP.ViewModelFOV		= 75

-- -- -- -- World
SWEP.WorldModel			= "models/weapons/arccw/astw2/worldmodels/w_smg_elite_single_1.mdl"
SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.HoldtypeHolstered		= "normal"
SWEP.HoldtypeActive			= "pistol"
SWEP.HoldtypeSights			= "revolver"

-- -- -- -- Sound
SWEP.ShootVol			= 85
SWEP.ShootPitch			= 135
SWEP.ShootSound			= "weapons/fiveseven/fiveseven-1.wav"

-- -- -- -- Damage statistics
SWEP.Damage					= 12
SWEP.DamageMin				= 8
SWEP.Range					= 40
SWEP.Penetration			= 5
SWEP.DamageType				= DMG_BULLET

SWEP.ChamberSize			= 1
SWEP.Primary.ClipSize		= 15

-- -- -- -- Weapon control
SWEP.Recoil			= 0.6
SWEP.RecoilSide		= 0.3

SWEP.ASTW2Accuracy      = 1/50
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
SWEP.Primary.Ammo	= "pistol"
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
	Pos	=	Vector(-2.10, 0, 1.05),
	Ang	=	Angle (-0.3, -0.1, 0),
	Magnification = 1.05,
	CrosshairInSights = false,
}

-- -- -- -- The thing
SWEP.AttachmentElements = {
	["weapon"] = {
		VMElements = {
			{
				Model = "models/weapons/arccw/astw2/worldmodels/w_smg_elite_single_1.mdl",
				Bone = "j_gun",
				Offset = {
					pos = Vector(-1, 0, -4),
					ang = Angle(0, 0, 0),
				},
				Scale = Vector(.8, .7, .8),
                ModelBodygroups = "10",
			}
		},
	},
	["mag"] = {
		VMElements = {
			{
				Model = "models/weapons/arccw/astw2/worldmodels/w_smg_elite_single_1.mdl",
				Bone = "tag_clip",
				Offset = {
					pos = Vector(0, 0.1, -2.9),
					ang = Angle(0, 0, 0),
				},
				Scale = Vector(.8, .7, .8),
                ModelBodygroups = "21",
			}
		},
	}
}
SWEP.DefaultElements = {"weapon","mag"}

local apBS =  Vector(0, 0, 1)

-- -- -- -- Positions
SWEP.ActivePos		= Vector(0, 0, 0) + apBS
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
			vpos = Vector(0, 0.75, -3.25),
			vang = Angle(15, -7.5, 0),
		},
		Installed = "tp_integ_grip3",
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
		Source = "reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 1.5,
--		MinProgress = 1.2,
		SoundTable = {
			{ s = "weapons/elite/elite_clipout.wav",			t = 0.1 },
			{ s = "weapons/elite/elite_leftclipin.wav",				t = 0.6 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.5,
	},
	["reload_empty"] = {
		Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 1.8,
--		MinProgress = 1.2,
		SoundTable = {
			{ s = "weapons/elite/elite_clipout.wav",			t = 0.1 },
			{ s = "weapons/elite/elite_leftclipin.wav",				t = 0.6 },
			{ s = "weapons/elite/elite_sliderelease.wav",			t = 1.3 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.5,
	},
}