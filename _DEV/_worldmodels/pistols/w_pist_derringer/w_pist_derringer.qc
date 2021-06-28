// Created by Crowbar 0.68

$modelname "weapons\w_pist_derringer.mdl"

$bodygroup "studio"
{
	studio "w_deringer.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0 -2 0

$cdmaterials "models\weapons\w_models\derringer\"

$attachment "muzzle" "ValveBiped.Weapon_bone" 3.5 -0.3 1.65 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox -2.97 -0.335 -4.293 5.777 2.54 1.823

$definebone "ValveBiped.Bip01_R_Hand" "" 1.783728 -5.776746 -3.330455 4.618727 90.659287 -171.24832 0 0 0 0 0 0
$definebone "ValveBiped.Weapon_bone" "ValveBiped.Bip01_R_Hand" 5 -1.5 -5 0 0 0.000002 0 0 0 0 0 0


$sequence "idle" {
	"w_pist_derringer_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "attack1" {
	"w_pist_derringer_anims\attack1.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_derringer_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
