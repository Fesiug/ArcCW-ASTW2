// Created by Crowbar 0.68

$modelname "weapons/w_snip_g3sg1.mdl"

$bodygroup "body"
{
	studio "w_snip_g3sg1_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.089 3.956 6.503

$cdmaterials "models\weapons\w_models\w_snip_g3sg1\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 29 -0.8 -9.1 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 8 -0.8 -4.5 rotate 10 90 -90

$cbox 0 0 0 0 0 0

$bbox -25.211 -1.211 -3.928 17.3 1.389 16.934

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 13.183071 4.586786 10.000005 -89.999982 -179.999978 0 0 0 0 0 0


$sequence "idle" {
	"w_snip_g3sg1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_snip_g3sg1_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 90" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_snip_g3sg1_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
