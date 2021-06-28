// Created by Crowbar 0.68

$modelname "weapons/w_eq_defuser.mdl"

$bodygroup "body"
{
	studio "w_eq_defuser_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0 -2.676 3.069

$cdmaterials "models\weapons\w_models\w_eq_defuser\"

$cbox 0 0 0 0 0 0

$bbox -1.713 -7.938 -0.053 7.064 7.938 6.176

$definebone "ValveBiped.Bip01_Pelvis" "" 0 -7.064229 2.700047 0 0 89.999982 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_Spine" "" 0 -4.08233 6.045177 -85.233377 89.999873 90.000153 0 0 0 0 0 0


$sequence "idle" {
	"w_eq_defuser_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$collisionmodel "w_eq_defuser_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
