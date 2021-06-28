// Created by Crowbar 0.68

$modelname "weapons/w_rif_galil.mdl"

$bodygroup "body"
{
	studio "w_rif_galil_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.101 2.317 5.587

$cdmaterials "models\weapons\w_models\w_rif_galil\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 31.1 -1 -8.6 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 8 -1 -5 rotate 30 -90 -90

$cbox 0 0 0 0 0 0

$bbox -23.922 -1.033 -5.124 19.288 1.235 16.299

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 13.183071 4.586786 10.000005 -89.999982 -179.999978 0 0 0 0 0 0


$sequence "idle" {
	"w_rif_galil_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_rif_galil_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 100" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_rif_galil_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
