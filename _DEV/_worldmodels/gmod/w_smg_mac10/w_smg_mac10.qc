// Created by Crowbar 0.68

$modelname "weapons/w_smg_mac10.mdl"

$bodygroup "body"
{
	studio "w_smg_mac10_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.114 -1.842 3.175

$cdmaterials "models\weapons\w_models\w_smg_mac10\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 12.3 -1.95 -3.75 rotate 3 -5 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 2.3 -1 -4 rotate 20 90 -90

$cbox 0 0 0 0 0 0

$bbox -5.979 -1.857 -3.542 9.664 2.085 10.049

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 3.394396 3.860126 5.000008 -94.999995 180.000005 0 0 0 0 0 0


$sequence "idle" {
	"w_smg_mac10_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_smg_mac10_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_smg_mac10_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
