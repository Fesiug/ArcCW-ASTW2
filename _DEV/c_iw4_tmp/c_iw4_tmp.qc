// Created by Crowbar 0.68

$modelname "weapons\arccw\astw2\c_mw2_tmp_1.mdl"
$scale 0.875

$bodygroup "studio"
{
	studio "c_iw4_tmp_reference.smd"
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
$definebone "tag_sync" "tag_origin" 0 0 0 0 -179.999855 0 0 0 0 0 0 0
$definebone "tag_view" "tag_origin" 0 0 0 0 -90.000207 0 0 0 0 0 0 0
$definebone "tag_ads" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_torso" "tag_ads" -4.63183 0 -1.37695 0 0 0 0 0 0 0 0 0
$definebone "j_shoulder_le" "tag_torso" 1.1258 7.93729 -1.80996 61.761986 1.374847 151.093005 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Clavicle" "j_shoulder_le" 0 0.000001 0 -1.097244 -0.760098 120.106281 0 0 0 0 0 0
$definebone "j_elbow_le" "j_shoulder_le" 12.093899 0.000001 0 49.502465 43.929594 -38.289965 0 0 0 0 0 0
$definebone "j_sleave_reshape_bottom_le_1" "j_elbow_le" 9.90225 -1.056129 -0.896749 0.15576 -0.342382 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_bottom_le_2" "j_elbow_le" 9.519548 -1.255579 0.730336 0.15576 -0.342382 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_1" "j_elbow_le" 10.427199 1.483251 -0.786318 0.15576 -0.342382 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_2" "j_elbow_le" 10.327598 1.699091 0.538449 0.15576 -0.342382 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_le_3" "j_elbow_le" 9.943539 0.739629 1.144751 0.15576 -0.342382 -90.828142 0 0 0 0 0 0
$definebone "j_wrist_le" "j_elbow_le" 11.5711 0 0 -1.101496 4.140418 -1.285711 0 0 0 0 0 0
$definebone "j_index_le_0" "j_wrist_le" 3.89662 0.754237 -0.37163 -37.185886 5.427464 90.76568 0 0 0 0 0 0
$definebone "j_index_le_1" "j_index_le_0" 1.760708 0.000002 -0.000001 -1.603456 26.195637 2.661648 0 0 0 0 0 0
$definebone "j_index_le_2" "j_index_le_1" 1.21576 0 -0.060743 4.166629 16.682869 0.034663 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger12" "j_index_le_2" 0 0 0 -13.191319 -10.514809 -160.622417 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger1" "j_index_le_1" -1.604739 0.791046 0.008177 3.210273 -26.352381 -159.687924 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger11" "j_index_le_1" 0 0 0 -4.274493 -6.931464 -159.827724 0 0 0 0 0 0
$definebone "j_mid_le_0" "j_wrist_le" 3.789991 -0.330626 -0.192271 -36.753125 -2.916428 90.518735 0 0 0 0 0 0
$definebone "j_mid_le_1" "j_mid_le_0" 1.953519 0.000002 0 -0.679356 50.313195 -2.36299 0 0 0 0 0 0
$definebone "j_mid_le_2" "j_mid_le_1" 1.46062 0 0 0.397298 33.645164 -3.344002 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger22" "j_mid_le_2" 0 0 0 0.429761 -31.630534 -170.928776 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger21" "j_mid_le_1" 0 0 0 0.499196 -10.270554 -173.950561 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger2" "j_mid_le_0" 0.000001 0 0 -0.928877 -11.286459 -174.784213 0 0 0 0 0 0
$definebone "j_pinkypalm_le" "j_wrist_le" 0.84622 -1.07076 0.202108 -2.462391 -34.848144 93.423635 0 0 0 0 0 0
$definebone "j_pinky_le_0" "j_pinkypalm_le" 2.246941 0.122622 -0.14567 12.698467 21.8674 1.961181 0 0 0 0 0 0
$definebone "j_pinky_le_1" "j_pinky_le_0" 1.41584 0 0.000001 0.429431 56.436692 3.179682 0 0 0 0 0 0
$definebone "j_pinky_le_2" "j_pinky_le_1" 0.886663 -0.000002 0.000001 2.068043 40.073628 -3.260025 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger42" "j_pinky_le_2" 0 0 0 8.23128 -32.654004 164.434878 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger41" "j_pinky_le_1" 0 0 0.000001 3.356454 -6.284424 159.198609 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger4" "j_pinky_le_0" -0.000001 -0.000001 0 1.813122 -1.066135 155.358076 0 0 0 0 0 0
$definebone "j_ringpalm_le" "j_wrist_le" 1.06617 -0.406185 0.062468 -0.342435 -17.885848 92.756134 0 0 0 0 0 0
$definebone "j_ring_le_0" "j_ringpalm_le" 2.595469 -0.022069 0.14852 0.000003 28.873641 -3.145602 0 0 0 0 0 0
$definebone "j_ring_le_1" "j_ring_le_0" 1.702648 0 0.000001 0.387247 58.409613 1.550707 0 0 0 0 0 0
$definebone "j_ring_le_2" "j_ring_le_1" 1.385981 0.000002 0.000001 -0.305199 36.227252 -0.191815 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger32" "j_ring_le_2" 0 0 0 -2.244292 -23.921684 176.084831 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger31" "j_ring_le_1" 0 0 0 -4.018415 -12.377774 177.481127 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger3" "j_ring_le_0" -0.000001 0 0 2.444795 1.043844 174.245065 0 0 0 0 0 0
$definebone "j_thumb_le_0" "j_wrist_le" 0.449841 0.96505 0.410625 -27.710248 40.620009 -24.350253 0 0 0 0 0 0
$definebone "j_thumb_le_1" "j_thumb_le_0" 2.15798 0.099791 0.055671 13.811377 -37.078443 7.096655 0 0 0 0 0 0
$definebone "j_thumb_le_2" "j_thumb_le_1" 1.61435 -0.059647 0.111982 -8.254947 -27.779844 0.271415 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger02" "j_thumb_le_2" 0 0 0 5.628743 8.001998 -179.684723 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger01" "j_thumb_le_1" 0 0 0 -2.221237 1.024254 178.55542 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Finger0" "j_thumb_le_0" 0 0 0 2.260659 -6.447963 -164.487594 0 0 0 0 0 0
$definebone "j_webbing_le" "j_wrist_le" 3.082748 1.587799 0.536016 -16.145155 -11.613794 -84.449395 0 0 0 0 0 0
$definebone "tag_knife_attach" "j_wrist_le" 2.71124 -0.538924 1.523911 0.000001 -110.803741 -90.003076 0 0 0 0 0 0
$definebone "tag_weapon_left" "j_wrist_le" -2.621651 5.812229 8.153373 -88.594172 -19.78323 -74.676432 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Hand" "j_wrist_le" 0 0 0.000001 8.259759 -12.229897 -89.69597 0 0 0 0 0 0
$definebone "j_wristtwist_le" "j_elbow_le" 8.50543 0.000001 0 -0.000002 0.000003 0 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_Forearm" "j_elbow_le" 0 0 0 0.905146 0.134366 179.191406 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_L_UpperArm" "j_shoulder_le" 0 0.000001 0 -1.097244 -0.760098 120.106281 0 0 0 0 0 0
$definebone "j_shoulder_ri" "tag_torso" 1.1258 -7.937281 -1.80996 -61.761986 178.627629 -28.909387 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Clavicle" "j_shoulder_ri" 0 0 0 -0.022626 179.944844 -98.597442 0 0 0 0 0 0
$definebone "j_elbow_ri" "j_shoulder_ri" -12.093899 0 0 49.502523 43.929646 -38.289965 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_1" "j_elbow_ri" -10.427201 -1.48322 0.786328 0.155793 -0.342383 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_2" "j_elbow_ri" -10.3276 -1.699069 -0.538443 0.155793 -0.342383 -90.828142 0 0 0 0 0 0
$definebone "j_sleave_reshape_top_ri_3" "j_elbow_ri" -9.943551 -0.739595 -1.144761 0.155793 -0.342383 -90.828142 0 0 0 0 0 0
$definebone "j_wrist_ri" "j_elbow_ri" -11.571102 0.000001 -0.000001 -1.101481 4.140358 -1.285654 0 0 0 0 0 0
$definebone "j_index_ri_0" "j_wrist_ri" -3.896529 -0.754231 0.371661 -37.185882 5.427439 90.76568 0 0 0 0 0 0
$definebone "j_index_ri_1" "j_index_ri_0" -1.76066 0.000002 0 -1.603485 26.195635 2.661611 0 0 0 0 0 0
$definebone "j_index_ri_2" "j_index_ri_1" -1.21573 -0.000002 0.060741 4.166668 16.682863 0.034666 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger12" "j_index_ri_2" 0 0 0 -3.049898 174.465093 -169.910641 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger11" "j_index_ri_1" 0 0 0 -4.706108 177.261113 -168.066859 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger1" "j_index_ri_0" 0 0.000001 0.000001 -0.1189 -176.894414 -170.12836 0 0 0 0 0 0
$definebone "j_mid_ri_0" "j_wrist_ri" -3.789889 0.330659 0.192266 -36.753125 -2.916435 90.518735 0 0 0 0 0 0
$definebone "j_mid_ri_1" "j_mid_ri_0" -1.95355 0.000002 -0.000001 -0.679332 50.313141 -2.363055 0 0 0 0 0 0
$definebone "j_mid_ri_2" "j_mid_ri_1" -1.46062 -0.000002 0.000001 0.397202 33.645225 -3.344033 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger22" "j_mid_ri_2" -0.000001 0.000001 0 -3.160167 140.659987 -167.3329 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger21" "j_mid_ri_1" 0 0 0 -3.687894 162.735486 -164.564379 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger2" "j_mid_ri_0" 0 0.000002 0 -1.927613 179.325483 -160.494078 0 0 0 0 0 0
$definebone "j_pinkypalm_ri" "j_wrist_ri" -0.84619 1.070809 -0.202096 -2.462449 -34.848151 93.423635 0 0 0 0 0 0
$definebone "j_pinky_ri_0" "j_pinkypalm_ri" -2.246861 -0.122628 0.14563 12.698519 21.867344 1.961104 0 0 0 0 0 0
$definebone "j_pinky_ri_1" "j_pinky_ri_0" -1.415781 0 0.000001 0.429375 56.436689 3.179693 0 0 0 0 0 0
$definebone "j_pinky_ri_2" "j_pinky_ri_1" -0.886662 -0.000002 -0.000001 2.06805 40.073632 -3.260026 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger42" "j_pinky_ri_2" 0 -0.000002 0 -13.228447 139.279756 -142.906559 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger41" "j_pinky_ri_1" 0 0 -0.000001 -3.297532 168.002682 -137.523605 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger4" "j_pinky_ri_0" 0 0 0 2.049987 -155.204533 -143.393579 0 0 0 0 0 0
$definebone "j_ringpalm_ri" "j_wrist_ri" -1.066119 0.406198 -0.062446 -0.342499 -17.885848 92.756134 0 0 0 0 0 0
$definebone "j_ring_ri_0" "j_ringpalm_ri" -2.595371 0.022066 -0.148562 0.000002 28.873528 -3.145602 0 0 0 0 0 0
$definebone "j_ring_ri_1" "j_ring_ri_0" -1.70254 0 0 0.387256 58.409613 1.55073 0 0 0 0 0 0
$definebone "j_ring_ri_2" "j_ring_ri_1" -1.38596 0 0 -0.305201 36.227262 -0.191814 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger32" "j_ring_ri_2" 0 -0.000001 0 -9.027751 158.16557 -158.785519 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger31" "j_ring_ri_1" 0 0 0 0.733791 171.481694 -157.107888 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger3" "j_ring_ri_0" -0.000001 0 0 -0.824546 -171.692528 -153.779004 0 0 0 0 0 0
$definebone "j_thumb_ri_0" "j_wrist_ri" -0.449837 -0.965009 -0.410576 -27.710192 40.620006 -24.350309 0 0 0 0 0 0
$definebone "j_thumb_ri_1" "j_thumb_ri_0" -2.15795 -0.099791 -0.055621 13.811437 -37.078443 7.096655 0 0 0 0 0 0
$definebone "j_thumb_ri_2" "j_thumb_ri_1" -1.61434 0.059653 -0.112002 -8.254887 -27.779846 0.271402 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger02" "j_thumb_ri_2" 0 0 0.000001 -0.033282 -174.079488 -159.486215 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger01" "j_thumb_ri_1" 0 0 0 0.397223 177.543008 -157.431038 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Finger0" "j_thumb_ri_0" 0 -0.000001 0.000001 -12.554483 -179.023548 -177.936058 0 0 0 0 0 0
$definebone "j_webbing_ri" "j_wrist_ri" -3.083049 -1.587609 -0.56824 -16.145039 -11.613739 -84.449395 0 0 0 0 0 0
$definebone "tag_knife_attach2" "j_wrist_ri" -2.71116 0.538984 -1.523921 0.051081 69.203552 -87.190998 0 0 0 0 0 0
$definebone "tag_weapon_right" "j_wrist_ri" 2.621591 -5.812209 -8.153251 -88.597608 -19.818429 102.647744 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Hand" "j_wrist_ri" 0 0 0 -2.283601 161.730519 111.152094 0 0 0 0 0 0
$definebone "j_wristtwist_ri" "j_elbow_ri" -8.50541 0 -0.000001 -0.000004 0 0.000001 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_Forearm" "j_elbow_ri" 0 0 0 0.00596 -179.877813 -157.719819 0 0 0 0 0 0
$definebone "ValveBiped.Bip01_R_UpperArm" "j_shoulder_ri" 0 0 0 -0.022626 179.944844 -98.597442 0 0 0 0 0 0
$definebone "tag_weapon" "tag_torso" 15.1598 0 -6.75272 0 0 0 0 0 0 0 0 0
$definebone "j_gun" "tag_weapon" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "j_reload" "j_gun" -5.75219 0 2.11061 0 0 0 0 0 0 0 0 0
$definebone "tag_silencer" "j_gun" 6.10816 0 0.903461 0 0 0 0 0 0 0 0 0
$definebone "tag_flash_silenced" "tag_silencer" 6.009621 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_brass" "j_gun" -2.31165 0 0.998161 -34.999074 -89.999067 0 0 0 0 0 0 0
$definebone "tag_clip" "j_gun" -2.29335 0 0.46259 0 0 0 0 0 0 0 0 0
$definebone "tag_flash" "j_gun" 6.10816 0 0.903461 0 0 0 0 0 0 0 0 0
$definebone "tag_cambone" "tag_view" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_camera" "tag_cambone" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_gasmask" "tag_camera" 1.54044 0 4.13575 0 0 0 0 0 0 0 0 0
$definebone "tag_gasmask2" "tag_camera" -4.63183 0 -1.37695 0 0 0 0 0 0 0 0 0
$definebone "tag_player" "tag_camera" 0 0 0 0 0 0 0 0 0 0 0 0
$definebone "tag_red_dot" "j_gun" -1.04573 0 2.25377 0 0 0 0 0 0 0 0 0
$definebone "tag_eotech" "j_gun" -1.04573 0 2.221481 0 0 0 0 0 0 0 0 0

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
$bonemerge "ValveBiped.Bip01_L_Finger1"
$bonemerge "ValveBiped.Bip01_L_Finger11"
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
	"c_iw4_tmp_anims\idle.smd"
	activity "ACT_VM_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "fire" {
	"c_iw4_tmp_anims\fire.smd"
	activity "ACT_VM_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads" {
	"c_iw4_tmp_anims\fire_ads.smd"
	activity "ACT_VM_PRIMARYATTACK_1" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads_reflex" {
	"c_iw4_tmp_anims\fire_ads_reflex.smd"
	activity "ACT_VM_PRIMARYATTACK_ADS_RDS" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "fire_ads_eotech" {
	"c_iw4_tmp_anims\fire_ads_eotech.smd"
	activity "ACT_VM_PRIMARYATTACK_ADS_EOTECH" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "reload" {
	"c_iw4_tmp_anims\reload.smd"
	activity "ACT_VM_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "reload_empty" {
	"c_iw4_tmp_anims\reload_empty.smd"
	activity "ACT_VM_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "draw" {
	"c_iw4_tmp_anims\draw.smd"
	activity "ACT_VM_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "holster" {
	"c_iw4_tmp_anims\holster.smd"
	activity "ACT_VM_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_in" {
	"c_iw4_tmp_anims\sprint_in.smd"
	activity "ACT_VM_SPRINT_IN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint" {
	"c_iw4_tmp_anims\sprint.smd"
	activity "ACT_VM_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "sprint_out" {
	"c_iw4_tmp_anims\sprint_out.smd"
	activity "ACT_VM_SPRINT_OUT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_idle" {
	"c_iw4_tmp_anims\akimbo_left_idle.smd"
	activity "ACT_VM_LEFT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_idle" {
	"c_iw4_tmp_anims\akimbo_right_idle.smd"
	activity "ACT_VM_RIGHT_IDLE" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_fire" {
	"c_iw4_tmp_anims\akimbo_left_fire.smd"
	activity "ACT_VM_LEFT_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "akimbo_right_fire" {
	"c_iw4_tmp_anims\akimbo_right_fire.smd"
	activity "ACT_VM_RIGHT_PRIMARYATTACK" 1
	{ event 5001 0 "1" }
	fadein 0.2
	fadeout 0.2
	snap
	fps 30
}

$sequence "akimbo_left_reload" {
	"c_iw4_tmp_anims\akimbo_left_reload.smd"
	activity "ACT_VM_LEFT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_reload" {
	"c_iw4_tmp_anims\akimbo_right_reload.smd"
	activity "ACT_VM_RIGHT_RELOAD" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_reload_empty" {
	"c_iw4_tmp_anims\akimbo_left_reload_empty.smd"
	activity "ACT_VM_LEFT_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_reload_empty" {
	"c_iw4_tmp_anims\akimbo_right_reload_empty.smd"
	activity "ACT_VM_RIGHT_RELOAD_EMPTY" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_draw" {
	"c_iw4_tmp_anims\akimbo_left_draw.smd"
	activity "ACT_VM_LEFT_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_draw" {
	"c_iw4_tmp_anims\akimbo_right_draw.smd"
	activity "ACT_VM_RIGHT_DRAW" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_holster" {
	"c_iw4_tmp_anims\akimbo_left_holster.smd"
	activity "ACT_VM_LEFT_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_holster" {
	"c_iw4_tmp_anims\akimbo_right_holster.smd"
	activity "ACT_VM_RIGHT_HOLSTER" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_sprint_in" {
	"c_iw4_tmp_anims\akimbo_left_sprint_in.smd"
	activity "ACT_VM_LEFT_SPRINT_IN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_sprint_in" {
	"c_iw4_tmp_anims\akimbo_right_sprint_in.smd"
	activity "ACT_VM_RIGHT_SPRINT_IN" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_sprint" {
	"c_iw4_tmp_anims\akimbo_left_sprint.smd"
	activity "ACT_VM_LEFT_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_sprint" {
	"c_iw4_tmp_anims\akimbo_right_sprint.smd"
	activity "ACT_VM_RIGHT_SPRINT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_left_sprint_out" {
	"c_iw4_tmp_anims\akimbo_left_sprint_out.smd"
	activity "ACT_VM_LEFT_SPRINT_OUT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}

$sequence "akimbo_right_sprint_out" {
	"c_iw4_tmp_anims\akimbo_right_sprint_out.smd"
	activity "ACT_VM_RIGHT_SPRINT_OUT" 1
	fadein 0.2
	fadeout 0.2
	fps 30
}
