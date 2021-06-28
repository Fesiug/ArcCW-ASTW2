// Created by Crowbar 0.68

$modelname "weapons/w_snip_awp.mdl"

$bodygroup "body"
{
	studio "w_snip_awp_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.252 -0.925 5.909

$cdmaterials "models\weapons\w_models\w_snip_awp\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 38.9 -0.9 -10.8 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 8 -0.9 -5.8 rotate 10 -90 -90

$cbox 0 0 0 0 0 0

$bbox -25.47 -1.351 -6.941 27.321 1.855 18.759

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 13.183071 4.586786 10.000005 -89.999982 -179.999978 0 0 0 0 0 0


$sequence "idle" {
	"w_snip_awp_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_snip_awp_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_338Mag 2 70" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_snip_awp_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
