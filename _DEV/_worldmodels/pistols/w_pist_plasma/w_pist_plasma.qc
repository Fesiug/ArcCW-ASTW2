// Created by Crowbar 0.68

$modelname "weapons/w_pist_plasma.mdl"

$bodygroup "studio"
{
	studio "w_pist_plasma_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.655 -4.184 1.736

$cdmaterials "models\weapons\w_Irifle\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 27.64 -0.84 -9.61 rotate 12.96 -0.39 178.03
$attachment "1" "ValveBiped.Bip01_R_Hand" 7.77 1.2 2.08 rotate 2.17 88.96 -77.08

$cbox 0 0 0 0 0 0

$bbox -18.562 -6.792 -9.804 26.93 5.482 13.277

$definebone "ValveBiped.Bip01_R_Hand" "" 0.312503 -16.71932 0.282627 12.461602 88.326429 177.528802 0 0 0 0 0 0


$sequence "idle1" {
	"w_pist_plasma_anims\idle1.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
	loop
}

$sequence "fire" {
	"w_pist_plasma_anims\fire.smd"
	activity "ACT_RANGE_ATTACK_AR2" 1
	{ event AE_NPC_MUZZLEFLASH 0 "COMBINE MUZZLE" }
	{ event 3007 0 "1" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_pist_plasma_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
