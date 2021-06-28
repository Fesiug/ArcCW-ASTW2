// Created by Crowbar 0.68

$modelname "weapons/arccw/astw2/worldmodels/w_smg_mp5k_mag.mdl"

$bodygroup "mag"
{
	studio "mp5k_mag.smd"
}


$surfaceprop "weapon"

$contents "solid"

$illumposition -0.395 -2.278 7.516

$cdmaterials "models\weapons\w_models\w_smg_mp5\"
$cdmaterials "models\weapons\w_models\w_smg_ump45\"

$attachment "muzzle" "ValveBiped.Bip01_R_Hand" 25.5 -1.5 -9.4 rotate 10 0 -90
$attachment "shell" "ValveBiped.Bip01_R_Hand" 12 -1.5 -7.4 rotate 20 90 -90

$cbox 0 0 0 0 0 0

$bbox -16.231 -2.642 -2.389 20.788 1.852 17.422

$definebone "ValveBiped.Bip01_R_Hand" "" -0.678304 6.428493 4.586786 9.999981 -91.999984 180.000005 0 0 0 0 0 0


$sequence "idle" {
	"w_smg_mp5k_anims\idle.smd"
	fadein 0.2
	fadeout 0.2
	fps 1
	loop
}

$sequence "attack_player" {
	"w_smg_mp5k_anims\attack_player.smd"
	activity "ACT_VM_PRIMARYATTACK" -1
	{ event 5003 0 "2" }
	{ event AE_CLIENT_EFFECT_ATTACH 0 "EjectBrass_9mm 2 100" }
	fadein 0.2
	fadeout 0.2
	fps 30
}

$collisionmodel "mp5k_mag.smd"