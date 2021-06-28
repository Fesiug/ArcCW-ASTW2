// Created by Crowbar 0.68

$modelname "weapons\arccw\astw2\c_cod4_m16a4_2.mdl"
$scale 0.875

$bodygroup "studio"
{
	studio "c_iw3_m16a4_reference.smd"
}


$surfaceprop "default"

$contents "solid"

$illumposition 0 0 0

$attachment "1" "tag_flash" 0 0 0 rotate 0 0 0
$attachment "2" "tag_brass" 0 0 0 rotate 0 0 0
$attachment "3" "tag_flash_silenced" 0 0 0 rotate 0 0 0
$attachment "camera" "tag_camera" 0 0 0 rotate 0 0 0

$cbox 0 0 0 0 0 0

$bbox 0 0 0 0 0 0

$definebone "tag_origin" "" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_view" "tag_origin" 0 0 0 0 -90.000207 0 0 0 0 0 0 0
$definebone "tag_cambone" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_camera" "tag_cambone" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_player" "tag_camera" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_gasmask2" "tag_camera" -4.63183 0 -1.37695 0 0 0 0 0 0 0 0 0
$definebone "tag_gasmask" "tag_camera" 1.54044 0 4.13575 0 0 0 0 0 0 0 0 0
$definebone "tag_ads" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_torso" "tag_ads" -4.63183 0 -1.37695 0 0 0 0 0 0 0 0 0
$definebone "tag_weapon" "tag_torso" 15.1598 0 -6.75272 0 0 0 0 0 0 0 0 0
$definebone "j_gun" "tag_weapon" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_silencer" "j_gun" 27.711899 0 2.50214 0 0 0 0 0 0 0 0 0
$definebone "tag_flash_silenced" "tag_silencer" 10.167599 0.015751 0.001739 0 0 0 0 0 0 0 0 0
$definebone "tag_flash" "j_gun" 27.7132 0.015736 2.50387 0 0 0 0 0 0 0 0 0
$definebone "tag_clip" "j_gun" 4.293631 -0.008398 1.2854 0 0 0 0 0 0 0 0 0
$definebone "tag_brass" "j_gun" 4.5628 -0.690577 2.22606 -34.999074 -89.999067 0 0 0 0 0 0 0
$definebone "j_clip_release" "j_gun" -1.53047 0 2.93268 0 0 0 0 0 0 0 0 0
$definebone "j_shoulder_ri" "tag_torso" 1.1258 -7.937281 -1.80996 -61.761986 178.627629 -28.909387 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "j_shoulder_ri" 0.784231 0.543552 -0.976879 1.093028 178.06728 -120.093673 0 0 0 0 0 0
$definebone "j_elbow_ri" "j_shoulder_ri" -12.093899 0 0 49.502523 43.929646 -38.2899 0 0 0 0 0 0
$definebone "j_wristtwist_ri" "j_elbow_ri" -8.50541 0.000001 -0.000001 0.000003 0 -0.000003 0 0 0 0 0 0
$definebone "j_wrist_ri" "j_elbow_ri" -11.571102 0.000001 0 -1.101571 4.140302 -1.285685 0 0 0 0 0 0
$definebone "tag_weapon_right" "j_wrist_ri" 2.621581 -5.8122 -8.153261 -88.597608 -19.819315 102.646398 0 0 0 0 0 0
$definebone "tag_knife_attach2" "j_wrist_ri" -2.711161 0.538993 -1.52392 0.051057 69.203559 -87.190992 0 0 0 0 0 0
$definebone "j_webbing_ri" "j_wrist_ri" -3.083051 -1.587601 -0.568232 -16.144919 -11.613741 -84.449401 0 0 0 0 0 0
$definebone "j_thumb_ri_0" "j_wrist_ri" -0.449834 -0.965014 -0.410579 -27.71013 40.620013 -24.35019 0 0 0 0 0 0
$definebone "j_thumb_ri_1" "j_thumb_ri_0" -2.157951 -0.099794 -0.055627 13.811433 -37.078443 7.096652 0 0 0 0 0 0
$definebone "j_thumb_ri_2" "j_thumb_ri_1" -1.614349 0.059656 -0.112001 -8.254837 -27.779862 0.271399 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "j_thumb_ri_2" 0.553714 -0.105746 0.015355 11.944111 -177.930321 -178.645947 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "j_thumb_ri_1" 0.015162 0.112617 0.312316 14.476926 -161.87032 -166.672271 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "j_thumb_ri_0" -0.164268 -0.500913 0.50627 7.352483 168.106965 -175.156062 0 0 0 0 0 0
$definebone "j_ringpalm_ri" "j_wrist_ri" -1.066129 0.406199 -0.062442 -0.342464 -17.885849 92.756134 0 0 0 0 0 0
$definebone "j_ring_ri_0" "j_ringpalm_ri" -2.595367 0.022062 -0.148568 -0.000004 28.873528 -3.145601 0 0 0 0 0 0
$definebone "j_ring_ri_1" "j_ring_ri_0" -1.70253 0 -0.000001 0.387263 58.409619 1.550724 0 0 0 0 0 0
$definebone "j_ring_ri_2" "j_ring_ri_1" -1.385971 0 -0.000001 -0.3052 36.227252 -0.191849 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "j_ring_ri_2" 0.119122 -0.204297 -0.017995 2.589218 -179.236103 -179.335796 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "j_ring_ri_1" 0.115883 -0.245899 0.004544 0.92517 173.387917 179.35585 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "j_ring_ri_0" 0.219028 0.189798 -0.017761 -0.503736 -172.53536 177.266263 0 0 0 0 0 0
$definebone "j_pinkypalm_ri" "j_wrist_ri" -0.846187 1.07081 -0.202093 -2.462382 -34.848148 93.423628 0 0 0 0 0 0
$definebone "j_pinky_ri_0" "j_pinkypalm_ri" -2.246861 -0.12263 0.145638 12.698519 21.867341 1.961117 0 0 0 0 0 0
$definebone "j_pinky_ri_1" "j_pinky_ri_0" -1.415779 0 0 0.429347 56.436689 3.179696 0 0 0 0 0 0
$definebone "j_pinky_ri_2" "j_pinky_ri_1" -0.886662 0 -0.000001 2.068054 40.073577 -3.26003 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "j_pinky_ri_2" -0.097816 -0.362195 -0.053671 1.046142 175.449979 -169.940994 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "j_pinky_ri_1" -0.095211 -0.305305 0.07166 6.66058 -176.699617 -168.241028 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "j_pinky_ri_0" -0.094281 0.393639 0.300961 9.530868 -147.144732 -175.200185 0 0 0 0 0 0
$definebone "j_mid_ri_0" "j_wrist_ri" -3.78989 0.330652 0.192273 -36.753009 -2.916477 90.518728 0 0 0 0 0 0
$definebone "j_mid_ri_1" "j_mid_ri_0" -1.95355 0 -0.000001 -0.679358 50.313195 -2.363055 0 0 0 0 0 0
$definebone "j_mid_ri_2" "j_mid_ri_1" -1.46062 0.000002 0 0.397225 33.64517 -3.344006 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "j_mid_ri_2" 0.365203 -0.23603 -0.129965 -1.827412 168.271395 -178.18185 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "j_mid_ri_1" 0.273813 -0.165022 -0.097241 0.917124 172.895748 -174.676501 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "j_mid_ri_0" 0.19123 -0.07749 0.127769 6.522093 174.467934 -176.253878 0 0 0 0 0 0
$definebone "j_index_ri_0" "j_wrist_ri" -3.89653 -0.754233 0.371666 -37.185879 5.427404 90.76568 0 0 0 0 0 0
$definebone "j_index_ri_1" "j_index_ri_0" -1.760661 0 -0.000001 -1.603487 26.195519 2.661619 0 0 0 0 0 0
$definebone "j_index_ri_2" "j_index_ri_1" -1.215731 0 0.060745 4.166667 16.68287 0.034665 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "j_index_ri_2" -0.033903 0.036928 -0.122459 3.667911 -176.227514 -178.381237 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "j_index_ri_1" -0.077757 -0.018166 -0.061859 -0.185698 178.041476 -178.543959 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "j_index_ri_0" 0.040585 -0.090968 -0.054955 0.29848 178.675167 178.426507 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "j_wrist_ri" 0.608727 -0.25652 0.241661 -0.089448 164.680669 99.715858 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_3" "j_elbow_ri" -9.943561 -0.739592 -1.14476 0.155809 -0.342413 -90.828149 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_2" "j_elbow_ri" -10.3276 -1.699059 -0.538445 0.155809 -0.342413 -90.828149 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_1" "j_elbow_ri" -10.427201 -1.48322 0.786327 0.155809 -0.342413 -90.828149 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "j_elbow_ri" 1.4724 0.530819 0.217798 -0.186801 -176.652051 179.033861 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "j_shoulder_ri" 0.784231 0.543552 -0.976879 1.093028 178.06728 -120.093673 0 0 0 0 0 0
$definebone "j_shoulder_le" "tag_torso" 1.1258 7.93729 -1.80996 61.761986 1.374847 151.093005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "j_shoulder_le" -0.794783 -0.415272 1.04992 -1.006809 -2.118465 121.157652 0 0 0 0 0 0
$definebone "j_elbow_le" "j_shoulder_le" 12.093899 0.000001 0 49.502465 43.929594 -38.290023 0 0 0 0 0 0
$definebone "j_wristtwist_le" "j_elbow_le" 8.50543 0.000001 0 -0.000001 0.000004 0.000001 0 0 0 0 0 0
$definebone "j_wrist_le" "j_elbow_le" 11.5711 0.000001 0.000001 -1.101403 4.140438 -1.285716 0 0 0 0 0 0
$definebone "tag_weapon_left" "j_wrist_le" -2.621639 5.81223 8.153358 -88.594172 -19.784065 -74.675824 0 0 0 0 0 0
$definebone "tag_knife_attach" "j_wrist_le" 2.71124 -0.538928 1.52391 0.000001 -110.803741 -90.003076 0 0 0 0 0 0
$definebone "j_webbing_le" "j_wrist_le" 3.08275 1.5878 0.536016 -16.14515 -11.613794 -84.449395 0 0 0 0 0 0
$definebone "j_thumb_le_0" "j_wrist_le" 0.449841 0.965057 0.41062 -27.710241 40.620016 -24.350248 0 0 0 0 0 0
$definebone "j_thumb_le_1" "j_thumb_le_0" 2.157981 0.099794 0.055675 13.81138 -37.07844 7.096654 0 0 0 0 0 0
$definebone "j_thumb_le_2" "j_thumb_le_1" 1.614359 -0.05965 0.111978 -8.254887 -27.779858 0.271345 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "j_thumb_le_2" -0.415731 0.069434 -0.036133 -7.194168 -1.562263 -179.714517 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "j_thumb_le_1" 0.04404 -0.080091 -0.262291 -12.216315 12.027811 170.459528 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "j_thumb_le_0" 0.222242 0.454222 -0.38971 -5.05215 -11.090858 178.187013 0 0 0 0 0 0
$definebone "j_ringpalm_le" "j_wrist_le" 1.06617 -0.406178 0.062466 -0.342463 -17.885846 92.756134 0 0 0 0 0 0
$definebone "j_ring_le_0" "j_ringpalm_le" 2.595482 -0.022077 0.14852 0.000003 28.873631 -3.145572 0 0 0 0 0 0
$definebone "j_ring_le_1" "j_ring_le_0" 1.70263 -0.000002 -0.000001 0.387246 58.409613 1.55069 0 0 0 0 0 0
$definebone "j_ring_le_2" "j_ring_le_1" 1.38598 0 0 -0.305198 36.227204 -0.191815 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "j_ring_le_2" -0.002615 0.139176 0.005278 -1.976321 2.134832 -179.998707 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "j_ring_le_1" 0.016796 0.259327 -0.035497 -1.754894 -6.487713 -178.539383 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "j_ring_le_0" -0.160074 -0.080057 0.006899 1.20051 7.827239 -177.045101 0 0 0 0 0 0
$definebone "j_pinkypalm_le" "j_wrist_le" 0.84622 -1.07076 0.202106 -2.462418 -34.848144 93.423635 0 0 0 0 0 0
$definebone "j_pinky_le_0" "j_pinkypalm_le" 2.246948 0.122625 -0.145667 12.698463 21.867395 1.961193 0 0 0 0 0 0
$definebone "j_pinky_le_1" "j_pinky_le_0" 1.415829 0 0 0.429425 56.436689 3.179685 0 0 0 0 0 0
$definebone "j_pinky_le_2" "j_pinky_le_1" 0.88666 -0.000002 0 2.068047 40.073577 -3.26002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "j_pinky_le_2" 0.047832 0.393251 0.010503 -0.116834 -3.46767 170.220608 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "j_pinky_le_1" 0.219944 0.205906 -0.066584 -2.679156 17.731262 166.996568 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "j_pinky_le_0" 0.070049 -0.244608 -0.300313 -9.714043 22.439608 176.403965 0 0 0 0 0 0
$definebone "j_mid_le_0" "j_wrist_le" 3.790002 -0.330619 -0.192268 -36.753115 -2.916425 90.518735 0 0 0 0 0 0
$definebone "j_mid_le_1" "j_mid_le_0" 1.95352 0 0 -0.679349 50.313144 -2.362977 0 0 0 0 0 0
$definebone "j_mid_le_2" "j_mid_le_1" 1.46062 0 0.000001 0.397297 33.64517 -3.34411 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "j_mid_le_2" -0.245308 0.227097 0.075661 5.616589 -13.909403 -178.399582 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "j_mid_le_1" -0.169945 0.165915 0.161235 4.193273 -4.720482 176.238948 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "j_mid_le_0" -0.137767 0.169254 0.07384 -2.374992 -5.809907 173.512814 0 0 0 0 0 0
$definebone "j_index_le_0" "j_wrist_le" 3.896621 0.754246 -0.371632 -37.185872 5.427478 90.765687 0 0 0 0 0 0
$definebone "j_index_le_1" "j_index_le_0" 1.760699 0.000001 0 -1.603454 26.195632 2.661617 0 0 0 0 0 0
$definebone "j_index_le_2" "j_index_le_1" 1.215759 0.000002 -0.06074 4.16658 16.68287 0.034675 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "j_index_le_2" 0.118803 -0.043655 0.100622 -5.845774 4.356493 -178.38181 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "j_index_le_1" 0.159191 0.030338 0.016148 -0.65329 -1.710225 -177.566477 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "j_index_le_0" 0.030143 0.207227 0.045093 0.700807 -3.354913 -174.520076 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "j_wrist_le" -0.612907 0.252547 -0.113741 0.09038 -15.106828 -98.854127 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_3" "j_elbow_le" 9.943539 0.739633 1.14474 0.155761 -0.342378 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_2" "j_elbow_le" 10.327598 1.699091 0.538445 0.155761 -0.342378 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_1" "j_elbow_le" 10.427199 1.483252 -0.786325 0.155761 -0.342378 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_bottom_le_2" "j_elbow_le" 9.519548 -1.255589 0.730326 0.155761 -0.342378 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_bottom_le_1" "j_elbow_le" 9.90225 -1.056129 -0.896757 0.155761 -0.342378 -90.828142 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "j_elbow_le" -1.47962 -0.521419 -0.11591 0.065933 3.298522 -178.608135 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "j_shoulder_le" -0.794783 -0.415272 1.04992 -1.006809 -2.118465 121.157652 0 0 0 0 0 0
$definebone "tag_sync" "tag_origin" 0 0 0 0 -179.999855 0 0 0 0 0 0 0
$definebone "j_grenade_ammo" "j_gun" 16.110094 0.001996 0.177304 0 90.002905 0 0 0 0 0 0 0
$definebone "j_m16m203_slide" "j_gun" 10.180517 0.001996 0.232312 -67.541528 -179.991536 -90.005651 0 0 0 0 0 0
$definebone "j_trigger" "j_gun" 5.824503 0.001996 -0.244857 0 0 0 0 0 0 0 0 0
$definebone "j_grenade_tip" "j_grenade_ammo" 0 -1.446358 -0.004357 0 0 0 0 0 0 0 0 0
$definebone "tag_iron_sight" "j_gun" 1.825643 0 3.339009 0 0 0 0 0 0 0 0 0
$definebone "tag_reflex_sight" "j_gun" 1.82564 0 3.33901 0 0 0 0 0 0 0 0 0
$definebone "tag_acog" "j_gun" 1.82564 0 3.33901 0 0 0 0 0 0 0 0 0

$bonemerge "tag_origin"
$bonemerge "tag_view"
$bonemerge "tag_cambone"
$bonemerge "tag_camera"
$bonemerge "tag_player"
$bonemerge "tag_gasmask2"
$bonemerge "tag_gasmask"
$bonemerge "tag_ads"
$bonemerge "tag_torso"
$bonemerge "tag_weapon"
$bonemerge "j_gun"
$bonemerge "j_shoulder_ri"
$bonemerge "ValveBiped.Bip01_R_Clavicle"
$bonemerge "j_elbow_ri"
$bonemerge "j_wristtwist_ri"
$bonemerge "j_wrist_ri"
$bonemerge "tag_weapon_right"
$bonemerge "tag_knife_attach2"
$bonemerge "j_webbing_ri"
$bonemerge "j_thumb_ri_0"
$bonemerge "j_thumb_ri_1"
$bonemerge "j_thumb_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger02"
$bonemerge "ValveBiped.Bip01_R_Finger01"
$bonemerge "ValveBiped.Bip01_R_Finger0"
$bonemerge "j_ringpalm_ri"
$bonemerge "j_ring_ri_0"
$bonemerge "j_ring_ri_1"
$bonemerge "j_ring_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger32"
$bonemerge "ValveBiped.Bip01_R_Finger31"
$bonemerge "ValveBiped.Bip01_R_Finger3"
$bonemerge "j_pinkypalm_ri"
$bonemerge "j_pinky_ri_0"
$bonemerge "j_pinky_ri_1"
$bonemerge "j_pinky_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger42"
$bonemerge "ValveBiped.Bip01_R_Finger41"
$bonemerge "ValveBiped.Bip01_R_Finger4"
$bonemerge "j_mid_ri_0"
$bonemerge "j_mid_ri_1"
$bonemerge "j_mid_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger22"
$bonemerge "ValveBiped.Bip01_R_Finger21"
$bonemerge "ValveBiped.Bip01_R_Finger2"
$bonemerge "j_index_ri_0"
$bonemerge "j_index_ri_1"
$bonemerge "j_index_ri_2"
$bonemerge "ValveBiped.Bip01_R_Finger12"
$bonemerge "ValveBiped.Bip01_R_Finger11"
$bonemerge "ValveBiped.Bip01_R_Finger1"
$bonemerge "ValveBiped.Bip01_R_Hand"
$bonemerge "j_sleave_reshape_top_ri_3"
$bonemerge "j_sleave_reshape_top_ri_2"
$bonemerge "j_sleave_reshape_top_ri_1"
$bonemerge "ValveBiped.Bip01_R_Forearm"
$bonemerge "ValveBiped.Bip01_R_UpperArm"
$bonemerge "j_shoulder_le"
$bonemerge "ValveBiped.Bip01_L_Clavicle"
$bonemerge "j_elbow_le"
$bonemerge "j_wristtwist_le"
$bonemerge "j_wrist_le"
$bonemerge "tag_weapon_left"
$bonemerge "tag_knife_attach"
$bonemerge "j_webbing_le"
$bonemerge "j_thumb_le_0"
$bonemerge "j_thumb_le_1"
$bonemerge "j_thumb_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger02"
$bonemerge "ValveBiped.Bip01_L_Finger01"
$bonemerge "ValveBiped.Bip01_L_Finger0"
$bonemerge "j_ringpalm_le"
$bonemerge "j_ring_le_0"
$bonemerge "j_ring_le_1"
$bonemerge "j_ring_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger32"
$bonemerge "ValveBiped.Bip01_L_Finger31"
$bonemerge "ValveBiped.Bip01_L_Finger3"
$bonemerge "j_pinkypalm_le"
$bonemerge "j_pinky_le_0"
$bonemerge "j_pinky_le_1"
$bonemerge "j_pinky_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger42"
$bonemerge "ValveBiped.Bip01_L_Finger41"
$bonemerge "ValveBiped.Bip01_L_Finger4"
$bonemerge "j_mid_le_0"
$bonemerge "j_mid_le_1"
$bonemerge "j_mid_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger22"
$bonemerge "ValveBiped.Bip01_L_Finger21"
$bonemerge "ValveBiped.Bip01_L_Finger2"
$bonemerge "j_index_le_0"
$bonemerge "j_index_le_1"
$bonemerge "j_index_le_2"
$bonemerge "ValveBiped.Bip01_L_Finger12"
$bonemerge "ValveBiped.Bip01_L_Finger11"
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Hand"
$bonemerge "j_sleave_reshape_top_le_3"
$bonemerge "j_sleave_reshape_top_le_2"
$bonemerge "j_sleave_reshape_top_le_1"
$bonemerge "j_sleave_reshape_bottom_le_2"
$bonemerge "j_sleave_reshape_bottom_le_1"
$bonemerge "ValveBiped.Bip01_L_Forearm"
$bonemerge "ValveBiped.Bip01_L_UpperArm"
$bonemerge "tag_sync"

$bonemerge "tag_clip"


$sequence "idle" {
	"c_iw3_m16a4_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"c_iw3_m16a4_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads" {
	"c_iw3_m16a4_anims\fire_ads.smd"
	activity "ACT_VM_PRIMARYATTACK_1" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads_reflex" {
	"c_iw3_m16a4_anims\fire_ads_reflex.smd"
	activity "ACT_VM_PRIMARYATTACK_RDS" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads_acog" {
	"c_iw3_m16a4_anims\fire_ads_acog.smd"
	activity "ACT_VM_PRIMARYATTACK_ACOG" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload" {
	"c_iw3_m16a4_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty" {
	"c_iw3_m16a4_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw" {
	"c_iw3_m16a4_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "holster" {
	"c_iw3_m16a4_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_in" {
	"c_iw3_m16a4_anims\sprint_in.smd"
	activity "ACT_VM_SPRINT_IN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint" {
	"c_iw3_m16a4_anims\sprint.smd"
	activity "ACT_VM_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_out" {
	"c_iw3_m16a4_anims\sprint_out.smd"
	activity "ACT_VM_SPRINT_OUT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_idle" {
	"c_iw3_m16a4_anims\grenade_idle.smd"
	activity "ACT_VM_GL_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_fire" {
	"c_iw3_m16a4_anims\grenade_fire.smd"
	activity "ACT_VM_GL_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "grenade_fire_ads" {
	"c_iw3_m16a4_anims\grenade_fire_ads.smd"
	activity "ACT_VM_GL_PRIMARYATTACK_1" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "grenade_reload" {
	"c_iw3_m16a4_anims\grenade_reload.smd"
	activity "ACT_VM_GL_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_reload_empty" {
	"c_iw3_m16a4_anims\grenade_reload_empty.smd"
	activity "ACT_VM_GL_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_draw" {
	"c_iw3_m16a4_anims\grenade_draw.smd"
	activity "ACT_VM_GL_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_holster" {
	"c_iw3_m16a4_anims\grenade_holster.smd"
	activity "ACT_VM_GL_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_sprint_in" {
	"c_iw3_m16a4_anims\grenade_sprint_in.smd"
	activity "ACT_VM_GL_SPRINT_IN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_sprint" {
	"c_iw3_m16a4_anims\grenade_sprint.smd"
	activity "ACT_VM_GL_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_sprint_out" {
	"c_iw3_m16a4_anims\grenade_sprint_out.smd"
	activity "ACT_VM_GL_SPRINT_OUT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_on" {
	"c_iw3_m16a4_anims\grenade_on.smd"
	activity "ACT_VM_IIN_M203" 1
	fadein 0.2
	fadeout 0
	fps 30
}

$sequence "grenade_off" {
	"c_iw3_m16a4_anims\grenade_off.smd"
	activity "ACT_VM_IOUT_M203" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_alt_idle" {
	"c_iw3_m16a4_anims\grenade_alt_idle.smd"
	activity "ACT_VM_IDLE_M203" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_alt_fire" {
	"c_iw3_m16a4_anims\grenade_alt_fire.smd"
	activity "ACT_VM_ISHOOT_M203" 1
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "grenade_alt_reload" {
	"c_iw3_m16a4_anims\grenade_alt_reload.smd"
	activity "ACT_VM_RELOAD_M203" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_alt_draw" {
	"c_iw3_m16a4_anims\grenade_alt_draw.smd"
	activity "ACT_VM_DRAW_M203" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_alt_holster" {
	"c_iw3_m16a4_anims\grenade_alt_holster.smd"
	activity "ACT_VM_HOLSTER_M203" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_alt_sprint_in" {
	"c_iw3_m16a4_anims\grenade_alt_sprint_in.smd"
	activity "ACT_VM_GL_ALT_SPRINT_IN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_alt_sprint" {
	"c_iw3_m16a4_anims\grenade_alt_sprint.smd"
	activity "ACT_VM_GL_ALT_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "grenade_alt_sprint_out" {
	"c_iw3_m16a4_anims\grenade_alt_sprint_out.smd"
	activity "ACT_VM_GL_ALT_SPRINT_OUT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
