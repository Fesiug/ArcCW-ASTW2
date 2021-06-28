// Created by Crowbar 0.68

$modelname "weapons/arccw/astw2/worldmodels/w_smg_m93r.mdl"

$bodygroup "body"
{
	studio "elite_ref.smd"
	studio "elite_ref_nomag.smd"
	blank
}
$bodygroup "mag"
{
	blank
	studio "elite_mag.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.294 -2.13 3.569

$cdmaterials "models\weapons\w_models\w_pist_elite\"
$cdmaterials "models\weapons\w_models\w_smg_ump45\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 9.2 -2 -4.5 rotate 0 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 5 -1 -4 rotate 50 90 -90

$cbox 0 0 0 0 0 0

$bbox -3.772 -2.185 -0.538 8.128 1.598 7.675

$definebone "ValveBiped.Bip01_R_Hand" "" -1.182861 3.660735 2.522177 2.500022 -94.999995 180.000005 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_m93r_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_pist_m93r_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 90" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_m93r_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
