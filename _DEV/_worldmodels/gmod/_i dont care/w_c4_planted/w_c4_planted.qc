// Created by Crowbar 0.68

$modelname "weapons/w_c4_planted.mdl"

$bodygroup "body"
{
	studio "w_c4_planted_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.804 -1.152 4.711

$cdmaterials "models\weapons\w_models\w_c4\"

$cbox 0 0 0 0 0 0

$bbox -4.412 -11.667 -0.25 6.717 10.058 9.672

$definebone "mesh" "" 0 0 0 0 0 0 0 0 0 0 0 0


$sequence "idle" {
	"w_c4_planted_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$collisionmodel "w_c4_planted_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
