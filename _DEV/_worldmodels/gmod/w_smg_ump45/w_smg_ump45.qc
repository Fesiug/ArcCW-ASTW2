// Created by Crowbar 0.68

$modelname "weapons/w_smg_ump45.mdl"

$bodygroup "body"
{
	studio "w_smg_ump45_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.053 2.495 5.856

$cdmaterials "models\weapons\w_models\w_smg_ump45\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 17.8 -0.9 -6.8 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 7 -0.9 -4.6 rotate 20 -90 -90

$cbox 0 0 0 0 0 0

$bbox -17.765 -0.678 -3.632 12.775 1.049 15.345

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 6.428493 4.586786 10.000005 -89.999982 -179.999964 0 0 0 0 0 0


$sequence "idle" {
	"w_smg_ump45_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_smg_ump45_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_smg_ump45_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
