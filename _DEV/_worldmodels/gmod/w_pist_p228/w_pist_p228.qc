// Created by Crowbar 0.68

$modelname "weapons/w_pist_p228.mdl"

$bodygroup "body"
{
	studio "w_pist_p228_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.324 -1.392 3.683

$cdmaterials "models\weapons\w_models\w_pist_p228\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 9.7 -2.2 -4.2 rotate 3 -5 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 5.7 -2 -4.2 rotate 30 -95 -90

$cbox 0 0 0 0 0 0

$bbox -3.752 -2.055 -0.008 6.643 1.407 7.373

$definebone "ValveBiped.Bip01_R_Hand" "" -1.182861 3.660735 2.522177 2.500022 -94.999995 -180.000005 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_p228_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_pist_p228_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_p228_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
