
-- Fesiug

SWEP.Spawnable			= true
SWEP.AdminOnly			= false
SWEP.UseHands			= true
SWEP.Base				= "arccw_astw2_base"
SWEP.NPCWeaponType		= "weapon_pistol"
SWEP.NPCWeight			= 100

-- -- -- -- User information
SWEP.Category			= "ArcCW, ASTW2 - Pistols"
SWEP.PrintName			= "Five-seveN"
SWEP.Trivia_Class		= "Pistol"
SWEP.Trivia_Desc		= "Belgian automatic handgun using PDW ammunition. The rounds have a rifle-round-like design, allowing more to be carried in a magazine. Their pointed tips also aid in penetrating soft body armor."
SWEP.Slot				= 1

-- -- -- -- View
SWEP.ViewModel			= "models/weapons/arccw/astw2/c_cod4_beretta_5.mdl"
SWEP.ViewModelFOV		= 75

-- -- -- -- World
SWEP.WorldModel			= "models/weapons/w_pist_fiveseven.mdl"
SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.HoldtypeHolstered		= "normal"
SWEP.HoldtypeActive			= "pistol"
SWEP.HoldtypeSights			= "revolver"

-- -- -- -- Sound
SWEP.ShootVol			= 85
SWEP.ShootPitch			= 100
SWEP.ShootSound			= "weapons/fiveseven/fiveseven-1.wav"

-- -- -- -- Damage statistics
SWEP.Damage					= 12
SWEP.DamageMin				= 8
SWEP.Range					= 50
SWEP.Penetration			= 9
SWEP.DamageType				= DMG_BULLET

SWEP.ChamberSize			= 1
SWEP.Primary.ClipSize		= 20

-- -- -- -- Weapon control
SWEP.Recoil			= 0.6
SWEP.RecoilSide		= 0.3

SWEP.ASTW2Accuracy      = 1/75
SWEP.AccuracyMOA		= 30 * math.Round(55*SWEP.ASTW2Accuracy,2)
SWEP.HipDispersion		= 250
SWEP.MoveDispersion		= 100
SWEP.SightsDispersion	= 0

SWEP.SightTime			= 0.2
SWEP.SpeedMult			= 1
SWEP.SightedSpeedMult	= 0.75

-- -- -- -- Firing
SWEP.Delay			= 60 / 350
SWEP.Num			= 1
SWEP.Primary.Ammo	= "pistol"
SWEP.Firemodes = {
	{
		Mode = 1
	}
}

-- -- -- -- Visual
SWEP.MuzzleEffect		= "muzzleflash_pistol"
SWEP.ShellModel			= "models/shells/shell_556.mdl"
SWEP.ShellScale			= 0.75
SWEP.ShellRotateAngle	= Angle(0, 180, 0)
SWEP.IronSightStruct	= {
	Pos	=	Vector(-2.08, 0, 1.44),
	Ang	=	Angle (-1, -0.1, 0),
	Magnification = 1.05,
	CrosshairInSights = false,
}

-- -- -- -- The thing
SWEP.AttachmentElements = {
	["weapon"] = {
		VMElements = {
			{
				Model = "models/weapons/w_pist_fiveseven.mdl",
				Bone = "j_gun",
				Offset = {
					pos = Vector(-1, 0, -3.8),
					ang = Angle(0, 0, 0),
				},
				Scale = Vector(.8, .8, .8),
			}
		},
	}
}
SWEP.DefaultElements = {"weapon"}

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
			vpos = Vector(-2, 0.5, -3.5),
			vang = Angle(0, 0, 0),
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
			{ s = "weapons/fiveseven/fiveseven_slideback.wav",			t = 0 },
			--{ s = "weapons/fiveseven/fiveseven_clipout.wav",			t = 0 },
			{ s = "weapons/fiveseven/fiveseven_clipin.wav",				t = 0.3 },
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
			{ s = "weapons/fiveseven/fiveseven_slideback.wav",			t = 0 },
			--{ s = "weapons/fiveseven/fiveseven_clipout.wav",			t = 0 },
			{ s = "weapons/fiveseven/fiveseven_clipin.wav",				t = 0.3 },
			{ s = "weapons/fiveseven/fiveseven_slidepull.wav",			t = 1.3 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.5,
	},
}