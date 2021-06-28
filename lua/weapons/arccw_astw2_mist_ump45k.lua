
-- Fesiug

SWEP.Spawnable			= true
SWEP.AdminOnly			= false
SWEP.UseHands			= true
SWEP.Base				= "arccw_astw2_base"
SWEP.NPCWeaponType		= "weapon_pistol"
SWEP.NPCWeight			= 100

-- -- -- -- User information
SWEP.Category			= "ArcCW, ASTW2 - Mach. Pistols"
SWEP.PrintName			= "UMP-45K"
SWEP.Trivia_Class		= "Machine Pistol"
SWEP.Trivia_Desc		= "Compact version of the UMP-45, adapted to a small-form PDW."
SWEP.Slot				= 1

-- -- -- -- View
SWEP.ViewModel			= "models/weapons/arccw/astw2/c_mw3_ump45_2.mdl"
SWEP.ViewModelFOV		= 75

-- -- -- -- World
SWEP.WorldModel			= "models/weapons/w_smg_ump45k.mdl"
SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.HoldtypeHolstered		= "normal"
SWEP.HoldtypeActive			= "pistol"
SWEP.HoldtypeSights			= "revolver"

-- -- -- -- Sound
SWEP.ShootVol			= 85
SWEP.ShootPitch			= 110
SWEP.ShootSound			= "weapons/ump45/ump45-1.wav"

-- -- -- -- Damage statistics
SWEP.Damage					= 16
SWEP.DamageMin				= 10
SWEP.Range					= 50
SWEP.Penetration			= 7
SWEP.DamageType				= DMG_BULLET

SWEP.ChamberSize			= 1
SWEP.Primary.ClipSize		= 15

-- -- -- -- Weapon control
SWEP.Recoil			= 0.5
SWEP.RecoilSide		= 0.25

SWEP.ASTW2Accuracy      = 1/75
SWEP.AccuracyMOA		= 30 * math.Round(55*SWEP.ASTW2Accuracy,1)
SWEP.HipDispersion		= 250
SWEP.MoveDispersion		= 100
SWEP.SightsDispersion	= 0

SWEP.SightTime			= 0.2
SWEP.SpeedMult			= 1
SWEP.SightedSpeedMult	= 0.75

-- -- -- -- Firing
SWEP.Delay			= 60 / 600
SWEP.Num			= 1
SWEP.Primary.Ammo	= "pistol"
SWEP.Firemodes = {
	{
		Mode = 2
	}
}

-- -- -- -- Visual
SWEP.MuzzleEffect		= "muzzleflash_pistol"
SWEP.ShellModel			= "models/shells/shell_9mm.mdl"
SWEP.ShellScale			= 1
SWEP.ShellRotateAngle	= Angle(0, 90, 0)
SWEP.IronSightStruct	= {
	Pos	=	Vector(-2.17, -4, 1.4),
	Ang	=	Angle (1, 0, 0),
	Magnification = 1.05,
	CrosshairInSights = false,
}

-- -- -- -- The thing
SWEP.AttachmentElements = {
	["weapon"] = {
		VMElements = {
			{
				Model = "models/weapons/arccw/astw2/worldmodels/w_smg_ump45k.mdl",
				Bone = "j_gun",
				Offset = {
					pos = Vector(2.7, 0, -6.4),
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
				Model = "models/weapons/arccw/astw2/worldmodels/w_smg_ump45k_mag.mdl",
				Bone = "tag_clip",
				Offset = {
					pos = Vector(-3.7, 0, -4.8),
					ang = Angle(-10, 0, 0),
				},
				Scale = Vector(.8, .8, .8),
                ModelBodygroups = "21",
			}
		},
	}
}
SWEP.DefaultElements = {"weapon","clip"}

local apBS =  Vector(0, 0, 1)

-- -- -- -- Positions
SWEP.ActivePos		= Vector(0.5, -1, 0.25) + apBS
SWEP.ActiveAng		= Angle (0, 0, 0)
	SWEP.HolsterPos		= Vector(0, 0, 0)
	SWEP.HolsterAng		= Angle (0, 0, 0)
		SWEP.CustomizePos	= Vector(2, 0, -2) + apBS
		SWEP.CustomizeAng	= Angle (7.5, 15, 0)
        
-- -- -- -- Animation
SWEP.Attachments = {
	{
		PrintName = "Optic",
		Slot = "tp_optic",
		Bone = "j_gun",
		Offset = {
			vpos = Vector(3, 0, 1.75),
			vang = Angle(0, 0, 0),
		},
        CorrectivePos = Vector(0.5, 0, 1.75),
	},
	{
		PrintName = "grip style",
		Slot = "integ",
		Bone = "j_gun",
		Offset = {
			vpos = Vector(8.8, 0.3, -1),
			vang = Angle(0, 0, 0),
		},
		Installed = "tp_integ_grip1",
		Integral = false,
		Hidden = false,
		FreeSlot = true,
	},
}

-- -- -- -- Animation
SWEP.Animations = {
	["idle"] = {
		Source = "reg_idle",
	},
	["draw"] = {
		Source = "reg_draw",
		Time = 0.5,
		LHIK = true,
		LHIKIn = 0,
		LHIKOut = 0.5,
	},
	["holster"] = {
		Source = "reg_holster",
		Time = 0.5,
		LHIK = true,
		LHIKIn = 0.5,
		LHIKOut = 0,
	},
	["fire"] = {
		Source = "reg_fire",
		ShellEjectAt = 0,
	},
	["fire_iron"] = {
		Source = "reg_fire_ads",
		ShellEjectAt = 0,
	},
	["enter_sprint"] = {
		Source = "reg_sprint_in",
	},
	["idle_sprint"] = {
		Source = "reg_sprint",
		Time = 30/40,
	},
	["exit_sprint"] = {
		Source = "reg_sprint_out",
	},
	["reload"] = {
		Source = "reg_reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 2,
--		MinProgress = 1.2,
		SoundTable = {
			{ s = "weapons/ump45/ump45_clipout.wav",			t = 0.3 },
			{ s = "weapons/ump45/ump45_clipin.wav",			t = 1.2 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.5,
	},
	["reload_empty"] = {
		Source = "reg_reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 2.7,
--		MinProgress = 1.2,
		SoundTable = {
			{ s = "weapons/ump45/ump45_clipout.wav",			t = 0.3 },
			{ s = "weapons/ump45/ump45_clipin.wav",			t = 1.2 },
			{ s = "weapons/mp5navy/mp5_slideback.wav",			t = 1.9 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.5,
	},
}