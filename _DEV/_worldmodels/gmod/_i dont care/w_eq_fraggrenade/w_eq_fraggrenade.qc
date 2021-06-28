// Created by Crowbar 0.68

$modelname "weapons/w_eq_fraggrenade.mdl"

$bodygroup "body"
{
	studio "w_eq_fraggrenade_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.709 -0.03 3.02

$cdmaterials "models\weapons\w_models\w_eq_fraggrenade\"

$cbox 0 0 0 0 0 0

$bbox -3.313 -2.884 -0.852 3.373 4.302 6.892

$definebone "ValveBiped.Bip01_R_Hand" "" 2.01408 2.452335 0.965339 -14.902033 -162.824224 -172.514309 0 0 0 0 0 0


$sequence "idle" {
	"w_eq_fraggrenade_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$collisionmodel "w_eq_fraggrenade_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
