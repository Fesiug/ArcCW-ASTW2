// Created by Crowbar 0.68

$modelname "weapons/w_eq_flashbang.mdl"

$bodygroup "body"
{
	studio "w_eq_flashbang_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.24 0.104 4.117

$cdmaterials "models\weapons\w_models\w_eq_flashbang\"

$cbox 0 0 0 0 0 0

$bbox -3.832 -4.368 -0.942 3.623 4.848 9.177

$definebone "ValveBiped.Bip01_R_Hand" "" 1.512041 3.00405 1.573256 -19.890899 -163.074482 -177.438602 0 0 0 0 0 0


$sequence "idle" {
	"w_eq_flashbang_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$collisionmodel "w_eq_flashbang_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
