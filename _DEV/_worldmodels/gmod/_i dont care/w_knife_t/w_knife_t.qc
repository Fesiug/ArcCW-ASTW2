// Created by Crowbar 0.68

$modelname "weapons/w_knife_t.mdl"

$bodygroup "body"
{
	studio "w_knife_t_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.138 0.386 8.091

$cdmaterials "models\weapons\w_models\w_knife_t\"

$cbox 0 0 0 0 0 0

$bbox -3.884 -2.353 0.012 3.111 2.078 16.386

$definebone "ValveBiped.Bip01_R_Hand" "" -0.39118 2.903004 3.188491 -3.611908 -101.628311 -175.197644 0 0 0 0 0 0


$sequence "idle" {
	"w_knife_t_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$collisionmodel "w_knife_t_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
