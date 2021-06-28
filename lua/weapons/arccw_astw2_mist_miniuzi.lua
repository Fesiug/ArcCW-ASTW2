
-- Fesiug

SWEP.Spawnable			= true
SWEP.AdminOnly			= false
SWEP.UseHands			= true
SWEP.Base				= "arccw_astw2_base"
SWEP.NPCWeaponType		= "weapon_pistol"
SWEP.NPCWeight			= 100

-- -- -- -- User information
SWEP.Category			= "ArcCW, ASTW2 - Mach. Pistols"
SWEP.PrintName			= "Mini Uzi"
SWEP.Trivia_Class		= "Machine Pistol"
SWEP.Trivia_Desc		= "A shortened version of the Uzi. Has a superior fire rate, but worse recoil and accuracy."
SWEP.Slot				= 1

-- -- -- -- View
SWEP.ViewModel			= "models/weapons/arccw/astw2/c_bo2_uzi_3.mdl"
SWEP.ViewModelFOV		= 75

-- -- -- -- World
SWEP.WorldModel			= "models/weapons/w_smg_miniuzi.mdl"
SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.HoldtypeHolstered		= "normal"
SWEP.HoldtypeActive			= "pistol"
SWEP.HoldtypeSights			= "revolver"

-- -- -- -- Sound
SWEP.ShootVol			= 85
SWEP.ShootPitch			= 145
SWEP.ShootSound			= "weapons/ump45/ump45-1.wav"

-- -- -- -- Damage statistics
SWEP.Damage					= 12
SWEP.DamageMin				= 8
SWEP.Range					= 40
SWEP.Penetration			= 5
SWEP.DamageType				= DMG_BULLET

SWEP.ChamberSize			= 0
SWEP.Primary.ClipSize		= 32

-- -- -- -- Weapon control
SWEP.Recoil			= 0.7
SWEP.RecoilSide		= 0.45

SWEP.ASTW2Accuracy      = 1/60
SWEP.AccuracyMOA		= 30 * math.Round(55*SWEP.ASTW2Accuracy,1)
SWEP.HipDispersion		= 250
SWEP.MoveDispersion		= 100
SWEP.SightsDispersion	= 0

SWEP.SightTime			= 0.2
SWEP.SpeedMult			= 1
SWEP.SightedSpeedMult	= 0.75

-- -- -- -- Firing
SWEP.Delay			= 60 / 800
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
	Pos	=	Vector(-3.06, 0, 0.15),
	Ang	=	Angle (2, 0, 0),
	Magnification = 1.05,
	CrosshairInSights = false,
}

-- -- -- -- The thing
SWEP.AttachmentElements = {
	["weapon"] = {
		VMElements = {
			{
				Model = "models/weapons/w_smg_miniuzi.mdl",
				Bone = "j_gun",
				Offset = {
					pos = Vector(-4.3, 0, -1.5),
					ang = Angle(0, 0, 0),
				},
				Scale = Vector(1, 1, 1)
			}
		},
	}
}
SWEP.DefaultElements = {"weapon"}

local apBS =  Vector(0, 0, 1)

-- -- -- -- Positions
SWEP.ActivePos		= Vector(0, 2, -0.5) + apBS
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
			vpos = Vector(-2, 0, 2.75),
			vang = Angle(0, 0, 0),
		},
        CorrectivePos = Vector(0, 0, 2),
        ExtraSightDist = 0,
	},
	{
		PrintName = "grip style",
		Slot = "integ",
		Bone = "j_gun",
		Offset = {
			vpos = Vector(1.5, -0.1, 0.2),
			vang = Angle(25, 0, 0),
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
		Source = "idle",
	},
	["draw"] = {
		Source = "pullout",
		Time = 0.5,
		LHIK = true,
		LHIKIn = 0,
		LHIKOut = 0.5,
	},
	["holster"] = {
		Source = "putaway",
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
		Source = "sprint_loop",
		Time = 30/40,
	},
	["exit_sprint"] = {
		Source = "sprint_out",
	},
	["reload"] = {
		Source = "reload",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 2,
--		MinProgress = 1.2,
		SoundTable = {
			{ s = "weapons/tmp/tmp_clipout.wav",			t = 0.3 },
			{ s = "weapons/tmp/tmp_clipin.wav",				t = 1.2 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.5,
	},
	["reload_empty"] = {
		Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 2.7,
--		MinProgress = 1.2,
		SoundTable = {
			{ s = "weapons/tmp/tmp_clipout.wav",			t = 0.3 },
			{ s = "weapons/tmp/tmp_clipin.wav",				t = 1.2 },
			{ s = "weapons/mac10/mac10_boltpull.wav",			t = 1.7 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.5,
	},
}