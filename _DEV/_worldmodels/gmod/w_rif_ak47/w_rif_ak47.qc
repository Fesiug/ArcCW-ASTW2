// Created by Crowbar 0.68

$modelname "weapons/w_rif_ak47.mdl"

$bodygroup "body"
{
	studio "w_rif_ak47_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.029 1.208 5.297

$cdmaterials "models\weapons\w_models\w_rif_ak47\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 31.6 -0.7 -8.05 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 9.5 -0.7 -5 rotate 30 -90 -90

$cbox 0 0 0 0 0 0

$bbox -22.295 -0.912 -5.555 19.88 0.889 16.148

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 13.183071 4.586786 10.000005 -89.999982 -179.999978 0 0 0 0 0 0


$sequence "idle" {
	"w_rif_ak47_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_rif_ak47_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 150" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_rif_ak47_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
