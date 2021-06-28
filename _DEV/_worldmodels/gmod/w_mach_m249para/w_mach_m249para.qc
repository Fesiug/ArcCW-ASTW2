// Created by Crowbar 0.68

$modelname "weapons/w_mach_m249para.mdl"

$bodygroup "body"
{
	studio "w_mach_m249_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.849 -1.492 6.452

$cdmaterials "models\weapons\w_models\w_mach_m249\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 32 -0.95 -11.05 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 9.5 -0.95 -5 rotate 30 90 -90

$cbox 0 0 0 0 0 0

$bbox -17.434 -2.81 -3.981 20.462 4.688 16.886

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 13.183071 4.586786 10.000005 -89.999982 -179.999978 0 0 0 0 0 0


$sequence "idle" {
	"w_mach_m249para_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_mach_m249para_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 100" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_mach_m249para_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
