// Created by Crowbar 0.68

$modelname "weapons/w_rif_m4a1.mdl"

$bodygroup "body"
{
	studio "w_rif_m4a1_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.039 2.84 5.489

$cdmaterials "models\weapons\w_models\w_rif_m4a1\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 28.3 -0.7 -8 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 7.5 -0.7 -4 rotate 30 -90 -90

$cbox 0 0 0 0 0 0

$bbox -22.33 -1.788 -4.88 16.65 1.866 15.859

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 13.183071 4.586786 10.000005 -89.999982 -179.999978 0 0 0 0 0 0


$sequence "idle" {
	"w_rif_m4a1_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_rif_m4a1_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_rif_m4a1_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
