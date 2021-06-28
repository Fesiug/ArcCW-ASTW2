// Created by Crowbar 0.68

$modelname "weapons/w_smg_p90.mdl"

$bodygroup "body"
{
	studio "w_smg_p90_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.077 -0.612 7.742

$cdmaterials "models\weapons\w_models\w_smg_p90\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 19.4 -1.6 -6.3 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 0 -1.6 1 rotate -90 -90 0

$cbox 0 0 0 0 0 0

$bbox -13.533 -1.714 -1.171 14.757 1.867 16.656

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 6.428493 4.586786 9.99998 -91.999984 -180.000005 0 0 0 0 0 0


$sequence "idle" {
	"w_smg_p90_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_smg_p90_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_57 2 100" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_smg_p90_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
