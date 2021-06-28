// Created by Crowbar 0.68

$modelname "weapons\c_iw4_raffica.mdl"

$bodygroup "studio"
{
	studio "c_iw4_raffica_reference.smd"
}
$bodygroup "muzzle"
{
	blank
	studio "c_iw4_raffica_silencer.smd"
}
$bodygroup "sight"
{
	blank
	studio "c_iw4_raffica_reflex.smd"
	studio "c_iw4_raffica_eotech.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$cdmaterials "models\weapons\iw4\raffica\"
$cdmaterials "models\weapons\iw4\beretta\"
$cdmaterials "models\weapons\iw4\common\tritium\"
$cdmaterials "models\weapons\iw4\attachments\reflex\"
$cdmaterials "models\weapons\iw4\attachments\eotech\"
$cdmaterials "models\weapons\iw4\attachments\silencer\"
$cdmaterials "models\weapons\iw4\attachments\rail\secondary\"

$attachment "1" "tag_flash" 0 0 0 rotate 0 0 0
$attachment "2" "tag_brass" 0 0 0 rotate 0 0 0
$attachment "3" "tag_flash_silenced" 0 0 0 rotate 0 0 0
$attachment "camera" "tag_camera" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$definebone "tag_origin" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_sync" "tag_origin" 0 0 0 0 -179.999855 0 0 0 0 0 0 0
$definebone "tag_view" "tag_origin" 0 0 0 0 -90.000207 0 0 0 0 0 0 0
$definebone "tag_ads" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_torso" "tag_ads" -4.63183 0 -1.37695 0 0 0 0 0 0 0 0 0
$definebone "j_shoulder_le" "tag_torso" 1.1258 7.93729 -1.80996 61.761986 1.374847 151.093005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "j_shoulder_le" -0.794783 -0.415272 1.04992 -1.006809 -2.118465 121.157652 0 0 0 0 0 0
$definebone "j_elbow_le" "j_shoulder_le" 12.093899 0.000001 0 49.502523 43.929478 -38.290023 0 0 0 0 0 0
$definebone "j_sleave_reshape_bottom_le_1" "j_elbow_le" 9.90226 -1.056129 -0.896739 0.155755 -0.342373 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_bottom_le_2" "j_elbow_le" 9.51956 -1.255569 0.730348 0.155755 -0.342373 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_1" "j_elbow_le" 10.4272 1.483251 -0.786311 0.155755 -0.342373 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_2" "j_elbow_le" 10.3276 1.6991 0.538454 0.155755 -0.342373 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_3" "j_elbow_le" 9.943551 0.739635 1.144761 0.155755 -0.342373 -90.828142 0 0 0 0 0 0
$definebone "j_wrist_le" "j_elbow_le" 11.5711 0.000001 0 -1.10153 4.140412 -1.285705 0 0 0 0 0 0
$definebone "j_index_le_0" "j_wrist_le" 3.896629 0.754236 -0.37163 -37.185886 5.427529 90.76568 0 0 0 0 0 0
$definebone "j_index_le_1" "j_index_le_0" 1.760701 0.000001 0.000001 -1.603454 26.195574 2.661671 0 0 0 0 0 0
$definebone "j_index_le_2" "j_index_le_1" 1.21576 0 -0.060734 4.16666 16.682875 0.034725 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "j_index_le_2" 0.118802 -0.043659 0.10062 -5.84577 4.356508 -178.38181 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "j_index_le_1" 0.159186 0.030334 0.016151 -0.653318 -1.710195 -177.566491 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "j_index_le_0" 0.030142 0.207225 0.04509 0.70081 -3.354953 -174.520076 0 0 0 0 0 0
$definebone "j_mid_le_0" "j_wrist_le" 3.789978 -0.330622 -0.192272 -36.753128 -2.916371 90.518735 0 0 0 0 0 0
$definebone "j_mid_le_1" "j_mid_le_0" 1.95353 0 -0.000001 -0.679349 50.313199 -2.362979 0 0 0 0 0 0
$definebone "j_mid_le_2" "j_mid_le_1" 1.46062 0.000004 0.000001 0.397271 33.645222 -3.344089 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "j_mid_le_2" -0.245304 0.227104 0.07566 5.616648 -13.909363 -178.399582 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "j_mid_le_1" -0.169945 0.165913 0.161235 4.193272 -4.720485 176.238948 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "j_mid_le_0" -0.137757 0.169247 0.073839 -2.375051 -5.809896 173.512814 0 0 0 0 0 0
$definebone "j_pinkypalm_le" "j_wrist_le" 0.846215 -1.07076 0.202105 -2.462391 -34.848154 93.423635 0 0 0 0 0 0
$definebone "j_pinky_le_0" "j_pinkypalm_le" 2.246939 0.122622 -0.145668 12.698458 21.867402 1.961196 0 0 0 0 0 0
$definebone "j_pinky_le_1" "j_pinky_le_0" 1.41584 0 0.000003 0.429426 56.436627 3.179659 0 0 0 0 0 0
$definebone "j_pinky_le_2" "j_pinky_le_1" 0.886666 -0.000002 0.000001 2.068021 40.073635 -3.260007 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "j_pinky_le_2" 0.047838 0.39325 0.010498 -0.116827 -3.467753 170.220595 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "j_pinky_le_1" 0.219945 0.205915 -0.066586 -2.679153 17.731263 166.996568 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "j_pinky_le_0" 0.07005 -0.24461 -0.30031 -9.714046 22.439615 176.403965 0 0 0 0 0 0
$definebone "j_ringpalm_le" "j_wrist_le" 1.066159 -0.406179 0.062468 -0.342457 -17.885849 92.756134 0 0 0 0 0 0
$definebone "j_ring_le_0" "j_ringpalm_le" 2.59549 -0.022067 0.148521 -0.000001 28.873699 -3.145575 0 0 0 0 0 0
$definebone "j_ring_le_1" "j_ring_le_0" 1.702649 0 0 0.387272 58.409613 1.550708 0 0 0 0 0 0
$definebone "j_ring_le_2" "j_ring_le_1" 1.38597 0 -0.000001 -0.305225 36.227255 -0.191767 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "j_ring_le_2" -0.002615 0.139176 0.005278 -1.976285 2.134824 -179.998721 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "j_ring_le_1" 0.01679 0.259333 -0.0355 -1.754924 -6.487712 -178.539383 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "j_ring_le_0" -0.16007 -0.080061 0.006901 1.200523 7.827186 -177.045101 0 0 0 0 0 0
$definebone "j_thumb_le_0" "j_wrist_le" 0.449842 0.965053 0.410618 -27.710253 40.620067 -24.350248 0 0 0 0 0 0
$definebone "j_thumb_le_1" "j_thumb_le_0" 2.157981 0.099791 0.055679 13.81137 -37.078505 7.096658 0 0 0 0 0 0
$definebone "j_thumb_le_2" "j_thumb_le_1" 1.61435 -0.059657 0.111982 -8.255004 -27.779855 0.271434 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "j_thumb_le_2" -0.415734 0.069433 -0.036135 -7.194171 -1.562226 -179.714503 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "j_thumb_le_1" 0.044037 -0.080094 -0.262285 -12.21632 12.027811 170.459528 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "j_thumb_le_0" 0.222242 0.454219 -0.389712 -5.05211 -11.090865 178.187013 0 0 0 0 0 0
$definebone "j_webbing_le" "j_wrist_le" 3.082759 1.587801 0.536016 -16.145153 -11.613798 -84.449395 0 0 0 0 0 0
$definebone "tag_knife_attach" "j_wrist_le" 2.71124 -0.538918 1.52391 0.000001 -110.803734 -90.003076 0 0 0 0 0 0
$definebone "tag_weapon_left" "j_wrist_le" -2.621649 5.81223 8.153371 -88.594172 -19.784126 -74.675831 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "j_wrist_le" -0.612908 0.252548 -0.113748 0.090413 -15.106831 -98.854127 0 0 0 0 0 0
$definebone "j_wristtwist_le" "j_elbow_le" 8.50543 0.000001 0.000001 -0.000002 0.000001 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "j_elbow_le" -1.47962 -0.521419 -0.115909 0.065867 3.298496 -178.608135 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "j_shoulder_le" -0.794783 -0.415272 1.04992 -1.006809 -2.118465 121.157652 0 0 0 0 0 0
$definebone "j_shoulder_ri" "tag_torso" 1.1258 -7.937281 -1.80996 -61.761986 178.627629 -28.909387 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "j_shoulder_ri" 0.784231 0.543552 -0.97688 1.093028 178.06728 -120.093673 0 0 0 0 0 0
$definebone "j_elbow_ri" "j_shoulder_ri" -12.093899 0 0 49.502523 43.929646 -38.29002 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_1" "j_elbow_ri" -10.427201 -1.483219 0.786325 0.155807 -0.342419 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_2" "j_elbow_ri" -10.3276 -1.699068 -0.538442 0.155807 -0.342419 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_3" "j_elbow_ri" -9.943551 -0.739594 -1.144761 0.155807 -0.342419 -90.828142 0 0 0 0 0 0
$definebone "j_wrist_ri" "j_elbow_ri" -11.571102 0.000001 -0.000001 -1.101568 4.140334 -1.285618 0 0 0 0 0 0
$definebone "j_index_ri_0" "j_wrist_ri" -3.89652 -0.754222 0.371666 -37.185879 5.427421 90.765687 0 0 0 0 0 0
$definebone "j_index_ri_1" "j_index_ri_0" -1.760659 0 0 -1.603537 26.195633 2.661622 0 0 0 0 0 0
$definebone "j_index_ri_2" "j_index_ri_1" -1.215721 0 0.060753 4.166669 16.682872 0.034659 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "j_index_ri_2" -0.033903 0.036926 -0.122459 3.667897 -176.227514 -178.381237 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "j_index_ri_1" -0.07776 -0.018167 -0.061867 -0.185699 178.041476 -178.543959 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "j_index_ri_0" 0.04059 -0.090965 -0.054957 0.298453 178.675167 178.426507 0 0 0 0 0 0
$definebone "j_mid_ri_0" "j_wrist_ri" -3.789889 0.330659 0.192268 -36.752958 -2.916453 90.518735 0 0 0 0 0 0
$definebone "j_mid_ri_1" "j_mid_ri_0" -1.953548 -0.000002 0 -0.679332 50.31326 -2.363028 0 0 0 0 0 0
$definebone "j_mid_ri_2" "j_mid_ri_1" -1.46062 0 0 0.397222 33.645157 -3.344034 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "j_mid_ri_2" 0.365202 -0.236028 -0.129969 -1.827417 168.271382 -178.18185 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "j_mid_ri_1" 0.273815 -0.165016 -0.097235 0.917161 172.895748 -174.676501 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "j_mid_ri_0" 0.191227 -0.077492 0.127767 6.522093 174.467934 -176.253865 0 0 0 0 0 0
$definebone "j_pinkypalm_ri" "j_wrist_ri" -0.846189 1.070809 -0.202089 -2.462429 -34.848086 93.423635 0 0 0 0 0 0
$definebone "j_pinky_ri_0" "j_pinkypalm_ri" -2.246861 -0.122642 0.145638 12.698521 21.867281 1.961101 0 0 0 0 0 0
$definebone "j_pinky_ri_1" "j_pinky_ri_0" -1.41578 0 0 0.42943 56.436634 3.179667 0 0 0 0 0 0
$definebone "j_pinky_ri_2" "j_pinky_ri_1" -0.886667 0 -0.000002 2.068014 40.07369 -3.259994 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "j_pinky_ri_2" -0.097807 -0.362198 -0.05366 1.046121 175.449979 -169.940994 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "j_pinky_ri_1" -0.095211 -0.305313 0.07165 6.660576 -176.699617 -168.241028 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "j_pinky_ri_0" -0.094281 0.393646 0.300969 9.530807 -147.144732 -175.200185 0 0 0 0 0 0
$definebone "j_ringpalm_ri" "j_wrist_ri" -1.06613 0.406202 -0.062445 -0.342442 -17.885851 92.756134 0 0 0 0 0 0
$definebone "j_ring_ri_0" "j_ringpalm_ri" -2.595383 0.022056 -0.148562 0.000001 28.873467 -3.145579 0 0 0 0 0 0
$definebone "j_ring_ri_1" "j_ring_ri_0" -1.702521 0.000002 0.000001 0.387281 58.409613 1.550701 0 0 0 0 0 0
$definebone "j_ring_ri_2" "j_ring_ri_1" -1.38596 0.000002 0.000001 -0.305229 36.227262 -0.191821 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "j_ring_ri_2" 0.119122 -0.204289 -0.017995 2.589233 -179.236103 -179.335796 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "j_ring_ri_1" 0.11588 -0.245905 0.004539 0.925172 173.387917 179.35585 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "j_ring_ri_0" 0.219032 0.189798 -0.017762 -0.503742 -172.53536 177.266263 0 0 0 0 0 0
$definebone "j_thumb_ri_0" "j_wrist_ri" -0.449839 -0.965004 -0.410583 -27.710192 40.620006 -24.350191 0 0 0 0 0 0
$definebone "j_thumb_ri_1" "j_thumb_ri_0" -2.15795 -0.099792 -0.055622 13.811373 -37.078454 7.096657 0 0 0 0 0 0
$definebone "j_thumb_ri_2" "j_thumb_ri_1" -1.61435 0.059656 -0.111997 -8.254775 -27.779851 0.27141 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "j_thumb_ri_2" 0.553717 -0.105748 0.015351 11.944107 -177.930307 -178.645947 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "j_thumb_ri_1" 0.01516 0.112618 0.312319 14.476931 -161.870333 -166.672271 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "j_thumb_ri_0" -0.164266 -0.500916 0.506266 7.352482 168.106952 -175.156062 0 0 0 0 0 0
$definebone "j_webbing_ri" "j_wrist_ri" -3.08305 -1.5876 -0.568239 -16.144923 -11.613684 -84.449395 0 0 0 0 0 0
$definebone "tag_knife_attach2" "j_wrist_ri" -2.71116 0.538986 -1.52392 0.051079 69.203559 -87.190998 0 0 0 0 0 0
$definebone "tag_weapon_right" "j_wrist_ri" 2.62158 -5.8122 -8.153263 -88.597608 -19.816793 102.647156 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "j_wrist_ri" 0.608724 -0.25652 0.241664 -0.089426 164.680669 99.715858 0 0 0 0 0 0
$definebone "j_wristtwist_ri" "j_elbow_ri" -8.50541 0.000001 -0.000001 0.000001 -0.000002 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "j_elbow_ri" 1.4724 0.530816 0.217799 -0.186707 -176.652051 179.033847 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "j_shoulder_ri" 0.784231 0.543552 -0.97688 1.093028 178.06728 -120.093673 0 0 0 0 0 0
$definebone "tag_weapon" "tag_torso" 15.1598 0 -6.75272 0 0 0 0 0 0 0 0 0
$definebone "j_gun" "tag_weapon" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_bolt" "j_gun" -1.23006 0.074513 1.67611 0 0 0 0 0 0 0 0 0
$definebone "j_rear_press" "j_gun" -2.55418 0.057019 0.485518 0 0 0 0 0 0 0 0 0
$definebone "tag_silencer" "j_gun" 6.885071 0.084614 1.33373 0 0 0 0 0 0 0 0 0
$definebone "tag_flash_silenced" "tag_silencer" 5.253201 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_brass" "j_gun" -0.74723 0 1.55903 -34.999074 -89.999067 0 0 0 0 0 0 0
$definebone "tag_clip" "j_gun" -1.50358 0.078795 -1.36188 16.500899 0 0 0 0 0 0 0 0
$definebone "tag_flash" "j_gun" 7.68141 0.084614 1.33373 0 0 0 0 0 0 0 0 0
$definebone "tag_stock" "j_gun" -4.39962 0.084616 -3.93332 0 0 0 0 0 0 0 0 0
$definebone "tag_cambone" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_camera" "tag_cambone" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_gasmask" "tag_camera" 1.54044 0 4.13575 0 0 0 0 0 0 0 0 0
$definebone "tag_gasmask2" "tag_camera" -4.63183 0 -1.37695 0 0 0 0 0 0 0 0 0
$definebone "tag_player" "tag_camera" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_rail" "j_gun" -0.071474 0.084613 -0.620345 0 0 0 0 0 0 0 0 0
$definebone "tag_red_dot" "j_gun" -0.80684 0.084613 2.055836 0 0 0 0 0 0 0 0 0
$definebone "tag_eotech" "j_gun" -1.205413 0.084613 2.075591 0 0 0 0 0 0 0 0 0

$bonemerge "tag_origin"
$bonemerge "tag_sync"
$bonemerge "tag_view"
$bonemerge "tag_ads"
$bonemerge "tag_torso"
$bonemerge "j_shoulder_le"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "j_elbow_le"
$bonemerge "j_sleave_reshape_bottom_le_1"
$bonemerge "j_sleave_reshape_bottom_le_2"
$bonemerge "j_sleave_reshape_top_le_1"
$bonemerge "j_sleave_reshape_top_le_2"
$bonemerge "j_sleave_reshape_top_le_3"
$bonemerge "j_wrist_le"
$bonemerge "j_index_le_0"
$bonemerge "j_index_le_1"
$bonemerge "j_index_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "j_mid_le_0"
$bonemerge "j_mid_le_1"
$bonemerge "j_mid_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "j_pinkypalm_le"
$bonemerge "j_pinky_le_0"
$bonemerge "j_pinky_le_1"
$bonemerge "j_pinky_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "j_ringpalm_le"
$bonemerge "j_ring_le_0"
$bonemerge "j_ring_le_1"
$bonemerge "j_ring_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "j_thumb_le_0"
$bonemerge "j_thumb_le_1"
$bonemerge "j_thumb_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "j_webbing_le"
$bonemerge "tag_knife_attach"
$bonemerge "tag_weapon_left"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "j_wristtwist_le"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "j_shoulder_ri"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "j_elbow_ri"
$bonemerge "j_sleave_reshape_top_ri_1"
$bonemerge "j_sleave_reshape_top_ri_2"
$bonemerge "j_sleave_reshape_top_ri_3"
$bonemerge "j_wrist_ri"
$bonemerge "j_index_ri_0"
$bonemerge "j_index_ri_1"
$bonemerge "j_index_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "j_mid_ri_0"
$bonemerge "j_mid_ri_1"
$bonemerge "j_mid_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "j_pinkypalm_ri"
$bonemerge "j_pinky_ri_0"
$bonemerge "j_pinky_ri_1"
$bonemerge "j_pinky_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "j_ringpalm_ri"
$bonemerge "j_ring_ri_0"
$bonemerge "j_ring_ri_1"
$bonemerge "j_ring_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "j_thumb_ri_0"
$bonemerge "j_thumb_ri_1"
$bonemerge "j_thumb_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "j_webbing_ri"
$bonemerge "tag_knife_attach2"
$bonemerge "tag_weapon_right"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "j_wristtwist_ri"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "tag_weapon"
$bonemerge "j_gun"
$bonemerge "tag_cambone"
$bonemerge "tag_camera"
$bonemerge "tag_gasmask"
$bonemerge "tag_gasmask2"
$bonemerge "tag_player"


$sequence "idle" {
	"c_iw4_raffica_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_empty" {
	"c_iw4_raffica_anims\idle_empty.smd"
	activity "ACT_VM_IDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"c_iw4_raffica_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_last" {
	"c_iw4_raffica_anims\fire_last.smd"
	activity "ACT_VM_PRIMARYATTACK_EMPTY" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads" {
	"c_iw4_raffica_anims\fire_ads.smd"
	activity "ACT_VM_PRIMARYATTACK_1" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads_last" {
	"c_iw4_raffica_anims\fire_ads_last.smd"
	activity "ACT_VM_PRIMARYATTACK_ADS_EMPTY" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads_reflex" {
	"c_iw4_raffica_anims\fire_ads_reflex.smd"
	activity "ACT_VM_PRIMARYATTACK_1" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads_reflex_last" {
	"c_iw4_raffica_anims\fire_ads_reflex_last.smd"
	activity "ACT_VM_PRIMARYATTACK_ADS_RDS_EMPTY" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads_eotech" {
	"c_iw4_raffica_anims\fire_ads_eotech.smd"
	activity "ACT_VM_PRIMARYATTACK_1" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads_eotech_last" {
	"c_iw4_raffica_anims\fire_ads_eotech_last.smd"
	activity "ACT_VM_PRIMARYATTACK_ADS_EOTECH_EMPTY" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload" {
	"c_iw4_raffica_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty" {
	"c_iw4_raffica_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw" {
	"c_iw4_raffica_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw_empty" {
	"c_iw4_raffica_anims\draw_empty.smd"
	activity "ACT_VM_DRAW_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "holster" {
	"c_iw4_raffica_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "holster_empty" {
	"c_iw4_raffica_anims\holster_empty.smd"
	activity "ACT_VM_HOLSTER_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_in" {
	"c_iw4_raffica_anims\sprint_in.smd"
	activity "ACT_VM_SPRINT_IN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_in_empty" {
	"c_iw4_raffica_anims\sprint_in_empty.smd"
	activity "ACT_VM_SPRINT_IN_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint" {
	"c_iw4_raffica_anims\sprint.smd"
	activity "ACT_VM_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_empty" {
	"c_iw4_raffica_anims\sprint_empty.smd"
	activity "ACT_VM_SPRINT_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_out" {
	"c_iw4_raffica_anims\sprint_out.smd"
	activity "ACT_VM_SPRINT_OUT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_out_empty" {
	"c_iw4_raffica_anims\sprint_out_empty.smd"
	activity "ACT_VM_SPRINT_OUT_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_idle" {
	"c_iw4_raffica_anims\akimbo_left_idle.smd"
	activity "ACT_VM_LEFT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_idle" {
	"c_iw4_raffica_anims\akimbo_right_idle.smd"
	activity "ACT_VM_RIGHT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_idle_empty" {
	"c_iw4_raffica_anims\akimbo_left_idle_empty.smd"
	activity "ACT_VM_LEFT_IDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_idle_empty" {
	"c_iw4_raffica_anims\akimbo_right_idle_empty.smd"
	activity "ACT_VM_RIGHT_IDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_fire" {
	"c_iw4_raffica_anims\akimbo_left_fire.smd"
	activity "ACT_VM_LEFT_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "akimbo_right_fire" {
	"c_iw4_raffica_anims\akimbo_right_fire.smd"
	activity "ACT_VM_RIGHT_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "akimbo_left_fire_last" {
	"c_iw4_raffica_anims\akimbo_left_fire_last.smd"
	activity "ACT_VM_LEFT_PRIMARYATTACK_EMPTY" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "akimbo_right_fire_last" {
	"c_iw4_raffica_anims\akimbo_right_fire_last.smd"
	activity "ACT_VM_RIGHT_PRIMARYATTACK_EMPTY" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "akimbo_left_reload" {
	"c_iw4_raffica_anims\akimbo_left_reload.smd"
	activity "ACT_VM_LEFT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 45
}

$sequence "akimbo_right_reload" {
	"c_iw4_raffica_anims\akimbo_right_reload.smd"
	activity "ACT_VM_RIGHT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 45
}

$sequence "akimbo_left_reload_empty" {
	"c_iw4_raffica_anims\akimbo_left_reload_empty.smd"
	activity "ACT_VM_LEFT_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 45
}

$sequence "akimbo_right_reload_empty" {
	"c_iw4_raffica_anims\akimbo_right_reload_empty.smd"
	activity "ACT_VM_RIGHT_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 45
}

$sequence "akimbo_left_draw" {
	"c_iw4_raffica_anims\akimbo_left_draw.smd"
	activity "ACT_VM_LEFT_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_draw" {
	"c_iw4_raffica_anims\akimbo_right_draw.smd"
	activity "ACT_VM_RIGHT_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_draw_empty" {
	"c_iw4_raffica_anims\akimbo_left_draw_empty.smd"
	activity "ACT_VM_LEFT_DRAW_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_draw_empty" {
	"c_iw4_raffica_anims\akimbo_right_draw_empty.smd"
	activity "ACT_VM_RIGHT_DRAW_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_holster" {
	"c_iw4_raffica_anims\akimbo_left_holster.smd"
	activity "ACT_VM_LEFT_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_holster" {
	"c_iw4_raffica_anims\akimbo_right_holster.smd"
	activity "ACT_VM_RIGHT_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_holster_empty" {
	"c_iw4_raffica_anims\akimbo_left_holster_empty.smd"
	activity "ACT_VM_LEFT_HOLSTER_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_holster_empty" {
	"c_iw4_raffica_anims\akimbo_right_holster_empty.smd"
	activity "ACT_VM_RIGHT_HOLSTER_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_sprint_in" {
	"c_iw4_raffica_anims\akimbo_left_sprint_in.smd"
	activity "ACT_VM_LEFT_SPRINT_IN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_sprint_in" {
	"c_iw4_raffica_anims\akimbo_right_sprint_in.smd"
	activity "ACT_VM_RIGHT_SPRINT_IN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_sprint_in_empty" {
	"c_iw4_raffica_anims\akimbo_left_sprint_in_empty.smd"
	activity "ACT_VM_LEFT_SPRINT_IN_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_sprint_in_empty" {
	"c_iw4_raffica_anims\akimbo_right_sprint_in_empty.smd"
	activity "ACT_VM_RIGHT_SPRINT_IN_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_sprint" {
	"c_iw4_raffica_anims\akimbo_left_sprint.smd"
	activity "ACT_VM_LEFT_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_sprint" {
	"c_iw4_raffica_anims\akimbo_right_sprint.smd"
	activity "ACT_VM_RIGHT_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_sprint_empty" {
	"c_iw4_raffica_anims\akimbo_left_sprint_empty.smd"
	activity "ACT_VM_LEFT_SPRINT_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_sprint_empty" {
	"c_iw4_raffica_anims\akimbo_right_sprint_empty.smd"
	activity "ACT_VM_RIGHT_SPRINT_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_sprint_out" {
	"c_iw4_raffica_anims\akimbo_left_sprint_out.smd"
	activity "ACT_VM_LEFT_SPRINT_OUT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_sprint_out" {
	"c_iw4_raffica_anims\akimbo_right_sprint_out.smd"
	activity "ACT_VM_RIGHT_SPRINT_OUT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_sprint_out_empty" {
	"c_iw4_raffica_anims\akimbo_left_sprint_out_empty.smd"
	activity "ACT_VM_LEFT_SPRINT_OUT_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_sprint_out_empty" {
	"c_iw4_raffica_anims\akimbo_right_sprint_out_empty.smd"
	activity "ACT_VM_RIGHT_SPRINT_OUT_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
