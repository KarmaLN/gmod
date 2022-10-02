SWEP.Base = "arccw_base"
SWEP.Spawnable = true
SWEP.Category = "ArcCW - Imperial Weapons"
SWEP.AdminOnly = false
SWEP.UseHands = true
SWEP.PrintName = "Scout Pistol"

-- Muzzle and shell effects --
SWEP.GMMuzzleEffect = false 
SWEP.MuzzleEffect = "muzzleflash_smg"
SWEP.ShellScale = 0
SWEP.Tracer = "effect_sw_laser_red"


-- Trivia --

SWEP.Trivia_Class = ""
SWEP.Trivia_Desc = ""	
SWEP.Trivia_Manufacturer = "BlasTech Industries"
SWEP.Trivia_Calibre = "Sapphire Gas"
SWEP.Trivia_Mechanism = "Tibanna Operated"
SWEP.Trivia_Country = ""
SWEP.Trivia_Year = ""

-- Weapon slot --

SWEP.Slot = 1

-- Weapon's manufacturer real name --

if GetConVar("arccw_truenames"):GetBool() then end

-- Viewmodel / Worldmodel / Model FOV / Animations --

SWEP.ViewModel = "models/weapons/synbf3/c_scoutblaster.mdl"
SWEP.WorldModel = "models/weapons/synbf3/w_scoutblaster.mdl"
SWEP.ViewModelFOV = 70
SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
 
SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    pos = Vector(-18, 5, -4),
    ang = Angle(-9, 0, 180)

}

-- Damage parameters --

SWEP.Damage = 30
SWEP.DamageMin = 14
SWEP.Range = 250
SWEP.Penetration = 7
SWEP.DamageType = DMG_BULLET
SWEP.ShootEntity = nil
SWEP.MuzzleVelocity = 314
SWEP.NeverPhysBullet = true -- Mag size --
SWEP.AlwaysPhysBullet = false
SWEP.ChamberSize = 0
SWEP.Primary.ClipSize = 10

-- Recoil --

SWEP.Recoil = 0.6
SWEP.RecoilSide = 0.5

SWEP.MaxRecoilBlowback = 2
SWEP.VisualRecoilMult = 1


-- Firerate / Firemodes --

SWEP.Delay = 0.2
SWEP.Num = 1
SWEP.Firemodes = {
    {
        Mode = 1,
    },
    {
        Mode = 0
    }
}

SWEP.BulletBones = {
    [2] = "Bullet1",    [3] = "Bullet2"
}

-- NPC stuff -- 

SWEP.NPCWeaponType = "weapon_pistol"
SWEP.NPCWeight = 78

-- Accuracy --

SWEP.AccuracyMOA = 7
SWEP.HipDispersion = 300
SWEP.MoveDispersion = 350

SWEP.Primary.Ammo = "pistol"
SWEP.MagID = "scoutpistol"

-- Speed mult --

SWEP.SpeedMult = 1
SWEP.SightedSpeedMult = 0.86 
SWEP.SightTime = 0.2

-- Gun length --

SWEP.BarrelLength = 15
SWEP.ExtraSightDist = 13

-- Ironsight / Customization pos ang --

SWEP.IronSightStruct = {
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 0),
    Magnification = 1.1,
    SwitchToSound = "",
}

SWEP.ActivePos = Vector(0, -5, 0)
SWEP.ActiveAng = Angle(5, 0, -10)

SWEP.CustomizePos = Vector(20, -15, 3)
SWEP.CustomizeAng = Angle(0, 70, 10)

SWEP.CrouchPos = Vector(1, 0, -2)
SWEP.CrouchAng = Angle(2, 0, 0)

SWEP.HolsterPos = Vector(0, -10, -5)
SWEP.HolsterAng = Angle(40, 0, 0)

-- Weapon sounds --

SWEP.ShootSound = {"weapons/synbf3/scoutblaster_fire.wav"}
-- Animations --

SWEP.ReloadInSights = false

SWEP.Animations = {
    ["idle"] = {
        Source = "base_idle",
        Framerate = 60,
        Time = 500 / 60,
    },


    ["fire"] = {
        Source = {"shoot1", "shoot2", "shoot3"},
        Time = 0.4,
        ShellEjectAt = 0,
    },

    -- Default reload  --
    ["reload"] = {
        Source = "reload",
        Time = 2,
        TPAnim = ACT_HL2MP_GESTURE_RELOAD_PISTOL,
        Framerate = 37,
        Checkpoints = {28, 38, 69},
        LHIK = true,
        LHIKIn = 0.5,
        LHIKOut = 0.5,
		SoundTable = {{s = "weapons/synbf3/scoutblaster_reload.wav", t = 0.1}},
    },

}

SWEP.ProceduralRegularFire = false
SWEP.ProceduralIronFire = false

SWEP.HoldtypeHolstered = "none"
SWEP.HoldtypeActive = "pistol"
SWEP.HoldtypeSights = "pistol"

-- Bodygroups --

SWEP.DefaultBodygroups = "000000000000"

SWEP.AttachmentElements = {
}
