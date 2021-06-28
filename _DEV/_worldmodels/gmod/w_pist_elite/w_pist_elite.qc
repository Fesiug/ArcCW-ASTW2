// Created by Crowbar 0.68

$modelname "weapons/w_pist_elite.mdl"

$bodygroup "body"
{
	studio "w_pist_elite_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.21 1.673 0.862

$cdmaterials "models\weapons\w_models\w_pist_elite\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 11.2 -2.65 -3.9 rotate 0 -11 -90
$attachment "muzzle2" "ValveBiped.Bip01_L_Hand" 11.4 -2.05 3.9 rotate 0 -9 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 6 -1.5 -3.8 rotate 50 79 -90
$attachment "shell2" "ValveBiped.Bip01_L_Hand" 6 -1 3.8 rotate -50 81 -90

$cbox 0 0 0 0 0 0

$bbox -9.205 -6.019 -1.761 5.859 6.438 3.485

$definebone "ValveBiped.Bip01_L_Hand" "" 5.861386 0.275702 0.279689 7.881665 -171.391849 -81.274122 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "" 3.268646 7.766371 0.279689 10.066901 -109.175827 -91.829414 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_elite_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_pist_elite_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 3 90" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_elite_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
