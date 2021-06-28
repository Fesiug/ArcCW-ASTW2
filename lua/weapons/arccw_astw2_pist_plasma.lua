
-- Fesiug

SWEP.Spawnable			= true
SWEP.AdminOnly			= false
SWEP.UseHands			= true
SWEP.Base				= "arccw_astw2_base"
SWEP.NPCWeaponType		= "weapon_pistol"
SWEP.NPCWeight			= 100

-- -- -- -- User information
SWEP.Category			= "ArcCW, ASTW2 - Pistols"
SWEP.PrintName			= "Plasma Pistol"
SWEP.Trivia_Class		= "Pistol"
SWEP.Trivia_Desc		= "A shortened version of the same mechanism used by the AR2 in a pistol form."
SWEP.Slot				= 1

-- -- -- -- View
SWEP.ViewModel			= "models/weapons/arccw/astw2/c_cod4_deserteagle_1.mdl"
SWEP.ViewModelFOV		= 75

-- -- -- -- World
SWEP.WorldModel			= "models/weapons/w_pist_plasma.mdl"
SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.HoldtypeHolstered		= "normal"
SWEP.HoldtypeActive			= "pistol"
SWEP.HoldtypeSights			= "revolver"

-- -- -- -- Sound
SWEP.ShootVol			= 85
SWEP.ShootPitch			= 100
SWEP.ShootSound			= "^npc/sniper/echo1.wav"

-- -- -- -- Damage statistics
SWEP.Damage					= 26
SWEP.DamageMin				= 12
SWEP.Range					= 30
SWEP.Penetration			= 4
SWEP.DamageType				= DMG_BULLET

SWEP.ChamberSize			= 0
SWEP.Primary.ClipSize		= 8

-- -- -- -- Weapon control
SWEP.Recoil			= 0.2
SWEP.RecoilSide		= 0.1

SWEP.ASTW2Accuracy      = 1/125
SWEP.AccuracyMOA		= 30 * math.Round(55*SWEP.ASTW2Accuracy,2)
SWEP.HipDispersion		= 250
SWEP.MoveDispersion		= 100
SWEP.SightsDispersion	= 0

SWEP.SightTime			= 0.2
SWEP.SpeedMult			= 1
SWEP.SightedSpeedMult	= 0.75

-- -- -- -- Firing
SWEP.Delay			= 60 / 300
SWEP.Num			= 1
SWEP.Primary.Ammo	= "ar2"
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
	Pos	=	Vector(-1.32, 0, -1.25),
	Ang	=	Angle (-1, 0, 0),
	Magnification = 1.05,
	CrosshairInSights = false,
}

-- -- -- -- The thing
SWEP.AttachmentElements = {
	["weapon"] = {
		VMElements = {
			{
				Model = "models/weapons/w_pist_plasma.mdl",
				Bone = "j_gun",
				Offset = {
					pos = Vector(8, 0, -1.2),
					ang = Angle(0, 180, 0),
				},
				Scale = Vector(.8, .8, .8)
			}
		},
	}
}
SWEP.DefaultElements = {"weapon"}

local apBS =  Vector(0, 0, 1)

-- -- -- -- Positions
SWEP.ActivePos		= Vector(1, 0, -1) + apBS
SWEP.ActiveAng		= Angle (0, 0, 0)
	SWEP.HolsterPos		= Vector(0, 0, 0)
	SWEP.HolsterAng		= Angle (0, 0, 0)
		SWEP.CustomizePos	= Vector(2, 0, -2) + apBS
		SWEP.CustomizeAng	= Angle (7.5, 15, 0)

-- -- -- -- Animation
SWEP.Attachments = {
	{
		PrintName = "A",
		Slot = "integ",
		Bone = "j_gun",
		Offset = {
			vpos = Vector(4, 0.2, -1.35),
			vang = Angle(0, 0, 0),
		},
		Installed = "tp_integ_grip1",
		Integral = false,
		Hidden = false,
		FreeSlot = true,
	},
}

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
        Time = 0.3
	},
	["fire_iron"] = {
		Source = "fire_ads",
        Time = 0.27
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
			{ s = "weapons/ar2/ar2_reload_rotate.wav",			t = 0.1 },
			{ s = "weapons/ar2/ar2_reload_push.wav",				t = 0.6 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.25,
	},
	["reload_empty"] = {
		Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 1.8,
--		MinProgress = 1.2,
		SoundTable = {
			{ s = "weapons/ar2/ar2_reload_rotate.wav",			t = 0.1 },
			{ s = "weapons/ar2/ar2_reload_push.wav",				t = 0.6 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.25,
	},
}