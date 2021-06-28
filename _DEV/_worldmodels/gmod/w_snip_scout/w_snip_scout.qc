// Created by Crowbar 0.68

$modelname "weapons/w_snip_scout.mdl"

$bodygroup "body"
{
	studio "w_snip_scout_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.758 0.568 4.921

$cdmaterials "models\weapons\w_models\w_snip_scout\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 33.3 -0.8 -9 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 6.6 -0.9 -4.6 rotate 10 -90 -90

$cbox 0 0 0 0 0 0

$bbox -22.587 -2.613 -5.483 21.495 1.114 15.326

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 13.183071 4.586786 10.000005 -89.999982 -179.999978 0 0 0 0 0 0


$sequence "idle" {
	"w_snip_scout_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_snip_scout_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_762Nato 2 40" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_snip_scout_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
