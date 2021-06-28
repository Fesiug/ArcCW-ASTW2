// Created by Crowbar 0.68

$modelname "weapons\w_pist_saa.mdl"

$bodygroup "studio"
{
	studio "w_peacemaker.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0 -2 0

$cdmaterials "models\Weapons\w_models\saa\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 9 -0.2 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -9.937 -1.178 -5.87 5.777 2.54 2.193

$definebone "ValveBiped.Bip01_R_Hand" "" 1.783728 -5.776746 -3.330455 4.618727 90.659287 -171.24832 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5 -1.5 -5 0 0 0.000001 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_saa_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_pist_saa_anims\attack1.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attack2" {
	"w_pist_saa_anims\attack2.smd"
	activity "ACT_RANGE_ATTACK_PISTOL2" 1
	{ event AE_NPC_MUZZLEFLASH 0 "PISTOL MUZZLE" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_saa_physics.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
