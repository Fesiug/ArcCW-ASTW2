// Created by Crowbar 0.68

$modelname "weapons/w_shot_xm1014.mdl"

$bodygroup "body"
{
	studio "w_shot_xm1014_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.25 -0.429 5.423

$cdmaterials "models\weapons\w_models\w_shot_xm1014\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 30.5 -0.9 -8.2 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 9 -1.3 -4.2 rotate 10 -90 -90

$cbox 0 0 0 0 0 0

$bbox -17.822 -0.968 -3.461 18.681 1.468 14.308

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 13.183071 4.586786 10.000005 -89.999982 -179.999978 0 0 0 0 0 0


$sequence "idle" {
	"w_shot_xm1014_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_shot_xm1014_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_12gauge 2 90" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_shot_xm1014_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
