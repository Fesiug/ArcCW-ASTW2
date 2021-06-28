// Created by Crowbar 0.68

$modelname "weapons/w_snip_sg550.mdl"

$bodygroup "body"
{
	studio "w_snip_sg550_lod0.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition 0.194 -0.147 5.186

$cdmaterials "models\weapons\w_models\w_snip_sg550\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 33 -0.9 -8.1 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 8 -0.9 -4.3 rotate 10 -90 -90

$cbox 0 0 0 0 0 0

$bbox -20.71 -1.037 -4.039 21.106 1.426 14.412

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 13.183071 4.586786 10.000005 -89.999982 -179.999978 0 0 0 0 0 0


$sequence "idle" {
	"w_snip_sg550_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_snip_sg550_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_556 2 80" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "w_snip_sg550_physics.smd"
{
	$mass 1
	$inertia 1
	$damping 0
	$rotdamping 0
	$rootbone " "

}
