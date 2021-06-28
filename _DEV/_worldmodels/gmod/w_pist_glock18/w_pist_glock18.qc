// Created by Crowbar 0.68

$modelname "weapons/w_pist_glock18.mdl"

$bodygroup "body"
{
	studio "w_pist_glock18_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.313 -1.689 3.529

$cdmaterials "models\weapons\w_models\w_pist_glock18\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 10.4 -2.15 -3.95 rotate 3 -5 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 5.6 -2 -4 rotate 30 -95 -90

$cbox 0 0 0 0 0 0

$bbox -3.755 -2.107 -0.096 7.132 1.48 7.154

$definebone "ValveBiped.Bip01_R_Hand" "" -1.182861 3.660735 2.522177 2.500022 -94.999995 -180.000005 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_glock18_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_pist_glock18_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_glock18_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
