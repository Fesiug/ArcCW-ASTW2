// Created by Crowbar 0.68

$modelname "weapons\arccw\astw2\c_cod4_beretta_5.mdl"
$scale 0.875

$bodygroup "studio"
{
	studio "c_iw3_beretta_reference.smd"
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
$definebone "tag_flash_silenced" "j_gun" 12.062 0.084614 1.29284 0 0 0 0 0 0 0 0 0
$definebone "tag_flash" "j_gun" 5.996201 0.084614 1.29284 0 0 0 0 0 0 0 0 0
$definebone "tag_clip" "j_gun" -1.474159 0.078795 -1.36102 0 0 0 0 0 0 0 0 0
$definebone "tag_brass" "j_gun" -0.74723 0 1.55903 -45.003085 -90.003076 -90.003076 0 0 0 0 0 0
$definebone "j_press_rear" "j_gun" -2.55418 0.057019 0.485518 0 0 0 0 0 0 0 0 0
$definebone "j_bolt" "j_gun" -1.23006 0.074513 1.67611 0 0 0 0 0 0 0 0 0
$definebone "j_shoulder_ri" "tag_torso" 1.1258 -7.937281 -1.80996 -61.761986 178.627629 -28.909387 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "j_shoulder_ri" 0.784231 0.543552 -0.97688 1.093028 178.06728 -120.093673 0 0 0 0 0 0
$definebone "j_elbow_ri" "j_shoulder_ri" -12.093899 0 0 49.502523 43.929646 -38.290075 0 0 0 0 0 0
$definebone "j_wristtwist_ri" "j_elbow_ri" -8.50541 0 -0.000001 0.000002 -0.000002 -0.000002 0 0 0 0 0 0
$definebone "j_wrist_ri" "j_elbow_ri" -11.571102 0.000001 0 -1.10144 4.140357 -1.285656 0 0 0 0 0 0
$definebone "tag_weapon_right" "j_wrist_ri" 2.621591 -5.812199 -8.153252 -88.597608 -19.818598 102.646999 0 0 0 0 0 0
$definebone "tag_knife_attach2" "j_wrist_ri" -2.711169 0.538999 -1.523921 0.051098 69.203552 -87.190992 0 0 0 0 0 0
$definebone "j_webbing_ri" "j_wrist_ri" -3.08304 -1.58759 -0.568237 -16.145034 -11.613625 -84.449395 0 0 0 0 0 0
$definebone "j_thumb_ri_0" "j_wrist_ri" -0.449834 -0.965002 -0.410581 -27.710248 40.620125 -24.350362 0 0 0 0 0 0
$definebone "j_thumb_ri_1" "j_thumb_ri_0" -2.157949 -0.099792 -0.055627 13.811495 -37.078443 7.096651 0 0 0 0 0 0
$definebone "j_thumb_ri_2" "j_thumb_ri_1" -1.614349 0.059652 -0.111999 -8.254892 -27.779855 0.27143 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "j_thumb_ri_2" 0.553722 -0.105749 0.015352 11.944111 -177.930321 -178.645947 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "j_thumb_ri_1" 0.015166 0.112617 0.312322 14.476926 -161.87032 -166.672271 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "j_thumb_ri_0" -0.164266 -0.500917 0.506267 7.352484 168.106965 -175.156062 0 0 0 0 0 0
$definebone "j_ringpalm_ri" "j_wrist_ri" -1.06613 0.406205 -0.062449 -0.34251 -17.885849 92.756134 0 0 0 0 0 0
$definebone "j_ring_ri_0" "j_ringpalm_ri" -2.59536 0.022061 -0.148569 0 28.873522 -3.145599 0 0 0 0 0 0
$definebone "j_ring_ri_1" "j_ring_ri_0" -1.70253 0 0 0.38726 58.409619 1.550727 0 0 0 0 0 0
$definebone "j_ring_ri_2" "j_ring_ri_1" -1.38596 0 0.000001 -0.305203 36.227255 -0.191849 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "j_ring_ri_2" 0.119129 -0.20429 -0.017984 2.589232 -179.236089 -179.335796 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "j_ring_ri_1" 0.115885 -0.245899 0.004544 0.925175 173.387917 179.35585 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "j_ring_ri_0" 0.219028 0.189796 -0.017766 -0.503768 -172.53536 177.266263 0 0 0 0 0 0
$definebone "j_pinkypalm_ri" "j_wrist_ri" -0.846192 1.070809 -0.202095 -2.46244 -34.847973 93.423628 0 0 0 0 0 0
$definebone "j_pinky_ri_0" "j_pinkypalm_ri" -2.24688 -0.122622 0.145627 12.698469 21.867341 1.961118 0 0 0 0 0 0
$definebone "j_pinky_ri_1" "j_pinky_ri_0" -1.415781 0 0.000001 0.429427 56.436689 3.179707 0 0 0 0 0 0
$definebone "j_pinky_ri_2" "j_pinky_ri_1" -0.886657 -0.000004 0.000001 2.067976 40.073639 -3.260015 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "j_pinky_ri_2" -0.09782 -0.3622 -0.053665 1.046135 175.449419 -169.940994 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "j_pinky_ri_1" -0.095209 -0.305307 0.071654 6.660576 -176.699617 -168.241042 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "j_pinky_ri_0" -0.094276 0.393644 0.30097 9.530803 -147.144732 -175.200199 0 0 0 0 0 0
$definebone "j_mid_ri_0" "j_wrist_ri" -3.78989 0.330658 0.192266 -36.753125 -2.91641 90.518728 0 0 0 0 0 0
$definebone "j_mid_ri_1" "j_mid_ri_0" -1.953561 0 0 -0.679358 50.313147 -2.363057 0 0 0 0 0 0
$definebone "j_mid_ri_2" "j_mid_ri_1" -1.46062 0 0 0.397179 33.645164 -3.344007 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "j_mid_ri_2" 0.365204 -0.236029 -0.129964 -1.827413 168.271395 -178.18185 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "j_mid_ri_1" 0.273816 -0.165022 -0.097242 0.917118 172.895748 -174.676501 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "j_mid_ri_0" 0.191228 -0.07748 0.127768 6.522093 174.467934 -176.253865 0 0 0 0 0 0
$definebone "j_index_ri_0" "j_wrist_ri" -3.89654 -0.754226 0.371659 -37.185992 5.427465 90.76568 0 0 0 0 0 0
$definebone "j_index_ri_1" "j_index_ri_0" -1.76067 0 -0.000001 -1.603482 26.195469 2.661612 0 0 0 0 0 0
$definebone "j_index_ri_2" "j_index_ri_1" -1.21573 0 0.060743 4.166655 16.68288 0.034658 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "j_index_ri_2" -0.033904 0.036926 -0.122458 3.667916 -176.227514 -178.381237 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "j_index_ri_1" -0.07776 -0.018171 -0.061857 -0.185698 178.041489 -178.543959 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "j_index_ri_0" 0.04059 -0.090969 -0.054955 0.298454 178.675167 178.426507 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "j_wrist_ri" 0.608717 -0.256521 0.241665 -0.089423 164.680669 99.715858 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_3" "j_elbow_ri" -9.943551 -0.739594 -1.14476 0.155796 -0.342388 -90.828149 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_2" "j_elbow_ri" -10.3276 -1.699059 -0.538442 0.155796 -0.342388 -90.828149 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_1" "j_elbow_ri" -10.427201 -1.483219 0.786325 0.155796 -0.342388 -90.828149 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "j_elbow_ri" 1.4724 0.530816 0.217796 -0.186773 -176.652051 179.033847 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "j_shoulder_ri" 0.784231 0.543552 -0.97688 1.093028 178.06728 -120.093673 0 0 0 0 0 0
$definebone "j_shoulder_le" "tag_torso" 1.1258 7.93729 -1.80996 61.761986 1.374847 151.093005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "j_shoulder_le" -0.794783 -0.415272 1.04992 -1.006809 -2.118465 121.157652 0 0 0 0 0 0
$definebone "j_elbow_le" "j_shoulder_le" 12.093899 0.000001 0 49.502523 43.92942 -38.290078 0 0 0 0 0 0
$definebone "j_wristtwist_le" "j_elbow_le" 8.50543 -0.000001 0.000001 -0.000003 -0.000001 0.000001 0 0 0 0 0 0
$definebone "j_wrist_le" "j_elbow_le" 11.5711 0 0.000001 -1.101527 4.140467 -1.28571 0 0 0 0 0 0
$definebone "tag_weapon_left" "j_wrist_le" -2.621651 5.812222 8.153374 -88.594172 -19.783054 -74.676364 0 0 0 0 0 0
$definebone "tag_knife_attach" "j_wrist_le" 2.711238 -0.538922 1.523911 0.000002 -110.803727 -90.003076 0 0 0 0 0 0
$definebone "j_webbing_le" "j_wrist_le" 3.082728 1.58779 0.536012 -16.145158 -11.6138 -84.449395 0 0 0 0 0 0
$definebone "j_thumb_le_0" "j_wrist_le" 0.449837 0.965056 0.410619 -27.710253 40.620132 -24.350249 0 0 0 0 0 0
$definebone "j_thumb_le_1" "j_thumb_le_0" 2.15798 0.099782 0.055676 13.811366 -37.078566 7.096657 0 0 0 0 0 0
$definebone "j_thumb_le_2" "j_thumb_le_1" 1.614349 -0.059641 0.111985 -8.254955 -27.77985 0.271419 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "j_thumb_le_2" -0.415735 0.069433 -0.036136 -7.19418 -1.562224 -179.714503 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "j_thumb_le_1" 0.044029 -0.080083 -0.262283 -12.21633 12.027815 170.459528 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "j_thumb_le_0" 0.222242 0.454216 -0.389714 -5.052133 -11.090917 178.187013 0 0 0 0 0 0
$definebone "j_ringpalm_le" "j_wrist_le" 1.066158 -0.406178 0.06247 -0.342462 -17.885856 92.756134 0 0 0 0 0 0
$definebone "j_ring_le_0" "j_ringpalm_le" 2.59547 -0.022079 0.14852 -0.000006 28.873703 -3.145579 0 0 0 0 0 0
$definebone "j_ring_le_1" "j_ring_le_0" 1.702641 -0.000002 0 0.387245 58.409613 1.550696 0 0 0 0 0 0
$definebone "j_ring_le_2" "j_ring_le_1" 1.38598 -0.000002 0 -0.305192 36.227197 -0.191825 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "j_ring_le_2" -0.002617 0.139181 0.005277 -1.976303 2.134835 -179.998721 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "j_ring_le_1" 0.016795 0.259335 -0.035496 -1.754895 -6.487715 -178.539396 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "j_ring_le_0" -0.160078 -0.080053 0.006901 1.200513 7.827243 -177.045101 0 0 0 0 0 0
$definebone "j_pinkypalm_le" "j_wrist_le" 0.846227 -1.07076 0.202107 -2.462399 -34.848038 93.423635 0 0 0 0 0 0
$definebone "j_pinky_le_0" "j_pinkypalm_le" 2.246941 0.122631 -0.145658 12.698462 21.867406 1.961189 0 0 0 0 0 0
$definebone "j_pinky_le_1" "j_pinky_le_0" 1.415829 0 0 0.429443 56.436689 3.179689 0 0 0 0 0 0
$definebone "j_pinky_le_2" "j_pinky_le_1" 0.88667 0 0 2.06802 40.073563 -3.260023 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "j_pinky_le_2" 0.047834 0.39325 0.010503 -0.116825 -3.467649 170.220608 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "j_pinky_le_1" 0.219947 0.205919 -0.066586 -2.679175 17.731256 166.996568 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "j_pinky_le_0" 0.070049 -0.244614 -0.300313 -9.714038 22.439618 176.403965 0 0 0 0 0 0
$definebone "j_mid_le_0" "j_wrist_le" 3.789978 -0.33062 -0.192279 -36.753132 -2.916396 90.518735 0 0 0 0 0 0
$definebone "j_mid_le_1" "j_mid_le_0" 1.953519 0 0 -0.679349 50.313192 -2.362982 0 0 0 0 0 0
$definebone "j_mid_le_2" "j_mid_le_1" 1.46062 0 0 0.397273 33.645153 -3.344086 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "j_mid_le_2" -0.2453 0.227097 0.07566 5.616623 -13.909421 -178.399582 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "j_mid_le_1" -0.169942 0.165911 0.161236 4.193301 -4.720513 176.238948 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "j_mid_le_0" -0.137761 0.169254 0.073839 -2.374967 -5.809836 173.512814 0 0 0 0 0 0
$definebone "j_index_le_0" "j_wrist_le" 3.89662 0.75425 -0.371625 -37.185831 5.427549 90.765687 0 0 0 0 0 0
$definebone "j_index_le_1" "j_index_le_0" 1.7607 0.000001 0 -1.603484 26.195693 2.661642 0 0 0 0 0 0
$definebone "j_index_le_2" "j_index_le_1" 1.215761 0 -0.060738 4.166666 16.682872 0.034674 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "j_index_le_2" 0.118803 -0.043657 0.100626 -5.845772 4.356504 -178.38181 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "j_index_le_1" 0.159188 0.03034 0.016146 -0.65329 -1.710192 -177.566477 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "j_index_le_0" 0.030141 0.20723 0.045088 0.700781 -3.354923 -174.520076 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "j_wrist_le" -0.612913 0.252552 -0.113739 0.090444 -15.106837 -98.854127 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_3" "j_elbow_le" 9.943541 0.739627 1.144751 0.155674 -0.342388 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_2" "j_elbow_le" 10.3276 1.69909 0.538456 0.155674 -0.342388 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_1" "j_elbow_le" 10.427199 1.48326 -0.786315 0.155674 -0.342388 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_bottom_le_2" "j_elbow_le" 9.519549 -1.255581 0.730339 0.155674 -0.342388 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_bottom_le_1" "j_elbow_le" 9.902248 -1.05613 -0.896733 0.155674 -0.342388 -90.828142 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "j_elbow_le" -1.47962 -0.52142 -0.115911 0.065813 3.298517 -178.608135 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "j_shoulder_le" -0.794783 -0.415272 1.04992 -1.006809 -2.118465 121.157652 0 0 0 0 0 0
$definebone "tag_sync" "tag_origin" 0 0 0 0 -179.999855 0 0 0 0 0 0 0

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
	"c_iw3_beretta_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "idle_empty" {
	"c_iw3_beretta_anims\idle_empty.smd"
	activity "ACT_VM_IDLE_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"c_iw3_beretta_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_last" {
	"c_iw3_beretta_anims\fire_last.smd"
	activity "ACT_VM_PRIMARYATTACK_EMPTY" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads" {
	"c_iw3_beretta_anims\fire_ads.smd"
	activity "ACT_VM_PRIMARYATTACK_1" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads_last" {
	"c_iw3_beretta_anims\fire_ads_last.smd"
	activity "ACT_VM_PRIMARYATTACK_ADS_EMPTY" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload" {
	"c_iw3_beretta_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty" {
	"c_iw3_beretta_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_ext" {
	"c_iw3_beretta_anims\reload_ext.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty_ext" {
	"c_iw3_beretta_anims\reload_empty_ext.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw" {
	"c_iw3_beretta_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw_empty" {
	"c_iw3_beretta_anims\draw_empty.smd"
	activity "ACT_VM_DRAW_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "holster" {
	"c_iw3_beretta_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "holster_empty" {
	"c_iw3_beretta_anims\holster_empty.smd"
	activity "ACT_VM_HOLSTER_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_in" {
	"c_iw3_beretta_anims\sprint_in.smd"
	activity "ACT_VM_SPRINT_IN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_in_empty" {
	"c_iw3_beretta_anims\sprint_in_empty.smd"
	activity "ACT_VM_SPRINT_IN_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint" {
	"c_iw3_beretta_anims\sprint.smd"
	activity "ACT_VM_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_empty" {
	"c_iw3_beretta_anims\sprint_empty.smd"
	activity "ACT_VM_SPRINT_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_out" {
	"c_iw3_beretta_anims\sprint_out.smd"
	activity "ACT_VM_SPRINT_OUT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_out_empty" {
	"c_iw3_beretta_anims\sprint_out_empty.smd"
	activity "ACT_VM_SPRINT_OUT_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
