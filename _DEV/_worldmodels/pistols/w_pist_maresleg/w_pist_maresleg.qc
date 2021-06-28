// Created by Crowbar 0.68

$modelname "weapons\w_pist_maresleg.mdl"

$bodygroup "studio"
{
	studio "w_pist_maresleg_w_maresleg.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0 -2 0

$cdmaterials "models\weapons\w_models\maresleg\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 14 0.7 -0.2 rotate 0 0 0
$attachment "ejectbrass" "ValveBiped.Bip01_R_Hand" 10 -0.7 -6 rotate 30 90 -90

$cbox 0 0 0 0 0 0

$bbox -13.149 -0.855 -6.801 9.737 2.54 2.492

$definebone "ValveBiped.Bip01_R_Hand" "" 1.783728 -5.776746 -3.330455 4.618727 90.659287 -171.24832 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5 -1.5 -5 0 0 0.000003 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_maresleg_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "attack1" {
	"w_pist_maresleg_anims\attack1.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_maresleg_physics.smd"
{
	$mass 2
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
