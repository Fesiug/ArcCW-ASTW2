// Created by Crowbar 0.68

$modelname "weapons/w_rif_m4a1_silencer.mdl"

$bodygroup "body"
{
	studio "w_rif_m4a1_silencer_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.007 1.203 5.3

$cdmaterials "models\weapons\w_models\w_rif_m4a1\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 31.8 -0.7 -8.9 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 7.5 -0.7 -4 rotate 30 -90 -90

$cbox 0 0 0 0 0 0

$bbox -22.386 -1.82 -5.368 19.98 1.833 15.968

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 13.183071 4.586786 10.000005 -89.999982 -179.999964 0 0 0 0 0 0


$sequence "idle" {
	"w_rif_m4a1_silencer_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_rif_m4a1_silencer_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attack_player_s" {
	"w_rif_m4a1_silencer_anims\attack_player_s.smd"
	activity "ACT_VM_PRIMARYATTACK_SILENCED" 1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 150" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_rif_m4a1_silencer_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
