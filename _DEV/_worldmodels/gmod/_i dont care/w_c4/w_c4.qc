// Created by Crowbar 0.68

$modelname "weapons/w_c4.mdl"

$bodygroup "body"
{
	studio "w_c4_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.964 -0.511 1.518

$cdmaterials "models\weapons\w_models\w_c4\"

$cbox 0 0 0 0 0 0

$bbox -4.841 -7.626 -5.429 5.864 5.699 8.465

$definebone "ValveBiped.Bip01_R_Hand" "" -7.035686 1.586472 2.616629 51.247008 -52.084956 -138.967534 0 0 0 0 0 0


$sequence "idle" {
	"w_c4_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$collisionmodel "w_c4_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
