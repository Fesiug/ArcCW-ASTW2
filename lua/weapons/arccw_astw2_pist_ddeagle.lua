
-- Fesiug

SWEP.Spawnable			= true
SWEP.AdminOnly			= false
SWEP.UseHands			= true
SWEP.Base				= "arccw_astw2_base"
SWEP.NPCWeaponType		= "weapon_pistol"
SWEP.NPCWeight			= 100

-- -- -- -- User information
SWEP.Category			= "ArcCW, ASTW2 - Pistols"
SWEP.PrintName			= "Double Deagle"
SWEP.Trivia_Class		= "Pistol"
SWEP.Trivia_Desc		= "Some madman decided it would be a good idea to combine two Desert Eagle handguns into one pistol, capable of firing both barrels at the same time. It's unwieldy, heavy, expensive and too big to fit in pistol holsters. There is really no good reason to ever use this weapon. Only an idiot would attempt to kill someone with it. But hey, you're here right now, aren't you?"
SWEP.Slot				= 1

-- -- -- -- View
SWEP.ViewModel			= "models/weapons/arccw/astw2/c_cod4_deserteagle_1.mdl"
SWEP.ViewModelFOV		= 75

-- -- -- -- World
SWEP.WorldModel			= "models/weapons/w_pist_ddeagle.mdl"
SWEP.AnimShoot				= ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.HoldtypeHolstered		= "normal"
SWEP.HoldtypeActive			= "pistol"
SWEP.HoldtypeSights			= "revolver"

-- -- -- -- Sound
SWEP.ShootVol			= 85
SWEP.ShootPitch			= 100
SWEP.ShootSound			= "weapons/deagle/deagle-1.wav"
SWEP.Hook_AddShootSound = function(wep, data)
    print( data.pitch )
	local thepitch = wep.ShootPitch - (data.pitch-100)
	wep:MyEmitSound(data.sound, data.volume, thepitch, 1, CHAN_WEAPON-1)
end
SWEP.ShootPitchVariation = 0.1

-- -- -- -- Damage statistics
SWEP.Damage					= 40
SWEP.DamageMin				= 30
SWEP.Range					= 50
SWEP.Penetration			= 8
SWEP.DamageType				= DMG_BULLET

SWEP.AmmoPerShot            = 2
SWEP.ChamberSize			= 2
SWEP.Primary.ClipSize		= 14 -- ???

-- -- -- -- Weapon control
SWEP.Recoil			= 1.2
SWEP.RecoilSide		= 1.2

SWEP.ASTW2Accuracy      = 1/45
SWEP.AccuracyMOA		= 30 * math.Round(55*SWEP.ASTW2Accuracy,2)
SWEP.HipDispersion		= 250
SWEP.MoveDispersion		= 100
SWEP.SightsDispersion	= 0

SWEP.SightTime			= 0.2
SWEP.SpeedMult			= 1
SWEP.SightedSpeedMult	= 0.75

-- -- -- -- Firing
SWEP.Delay			= 60 / 300
SWEP.Num			= 2
SWEP.Primary.Ammo	= "pistol"
SWEP.Firemodes = {
	{
		Mode = 1
	}
}

-- -- -- -- Visual
SWEP.MuzzleEffect		= "muzzleflash_pistol"
SWEP.ShellModel			= "models/shells/shell_9mm.mdl"
SWEP.ShellScale			= 1.5
SWEP.ShellRotateAngle	= Angle(0, 180, 0)
SWEP.IronSightStruct	= {
	Pos	=	Vector(-1.68, -2, 0.74),
	Ang	=	Angle (0.5, 0, 0),
	Magnification = 1.05,
	CrosshairInSights = false,
}

-- -- -- -- The thing
SWEP.AttachmentElements = {
	["weapon"] = {
		VMElements = {
			{
				Model = "models/weapons/w_pist_ddeagle.mdl",
				Bone = "j_gun",
				Offset = {
					pos = Vector(-1.7, -0.35, -3.9),
					ang = Angle(0, 0, 0),
				},
				Scale = Vector(.8, .8, .8)
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
		Source = "draw",
		Time = 0.5,
		LHIK = true,
		LHIKIn = 0,
		LHIKOut = 0.25,
	},
	["holster"] = {
		Source = "holster",
		Time = 0.5,
		LHIK = true,
		LHIKIn = 0.25,
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
		Time = 1.5*2.16,
--		MinProgress = 1.2,
		SoundTable = {
			{ s = "weapons/deagle/de_clipout.wav",			t = 0.1*2.16 },
			{ s = "weapons/usp/usp_clipin.wav",				t = 0.6*2.16 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.5,
	},
	["reload_empty"] = {
		Source = "reload_empty",
		TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
		Time = 1.8*2.16,
--		MinProgress = 1.2,
		SoundTable = {
			{ s = "weapons/deagle/de_clipout.wav",			t = 0.1*2.16 },
			{ s = "weapons/deagle/de_clipin.wav",				t = 0.9*2.16 },
			--	{ s = "weapons/deagle/de_slideback.wav",			t = 1.3 },
		},
		LHIK = true,
		LHIKIn = 0.25,
		LHIKOut = 0.5,
	},
}