$modelname "Pal.mdl"                    // Model name
$model "Pal" "Face.dmx" {               // Reference Mesh
NoAutoDMXRules                               // Disable Auto DMX Rules

    // Define Flex Controllers -- Category first, then range and name
    flexcontroller "[1] Eye Flexes" range 0 1 "Blink"
    flexcontroller "[1] Eye Flexes" range 0 1 "Eye - BlinkL"
    flexcontroller "[1] Eye Flexes" range 0 1 "Eye - BlinkR"
    flexcontroller "[1] Eye Flexes" range 0 1 "Eye - Joy"
    flexcontroller "[1] Eye Flexes" range 0 1 "Eye - JoyL"
    flexcontroller "[1] Eye Flexes" range 0 1 "Eye - JoyR"
    flexcontroller "[1] Eye Flexes" range 0 1 "Eye - ><"
    flexcontroller "[1] Eye Flexes" range 0 1 "Eye - Stare"
    flexcontroller "[1] Eye Flexes" range 0 1 "Eye - KiraKira"
    flexcontroller "[1] Eye Flexes" range 0 1 "Eye - WhiteEye"
    flexcontroller "[1] Eye Flexes" range 0 1 "Eye - Small"
	
    flexcontroller "[2] Brow Flexes" range 0 1 "Brow - ↑"
    flexcontroller "[2] Brow Flexes" range 0 1 "Brow - ↓"
    flexcontroller "[2] Brow Flexes" range 0 1 "Brow - Sad"
    flexcontroller "[2] Brow Flexes" range 0 1 "Brow - Angry"

    flexcontroller "[3] Highlight Flexes" range 0 1 "Highlights - X"
	
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - A"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - I"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - U"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - E"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - O"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - Smile"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - Sad"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - Wa"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - ∧"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - v"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - ω"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - ○"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - ○2"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - ▲"
    flexcontroller "[4] Mouth Flexes" range 0 1 "Mouth - ▲2"
	

    // Define Flex Rules
    "%Blink"                          = "Blink"
    "%Eye - BlinkL"                   = "Eye - BlinkL"
    "%Eye - BlinkR"                   = "Eye - BlinkR"
    "%Eye - Joy"                      = "Eye - Joy"
    "%Eye - JoyL"                     = "Eye - JoyL"
    "%Eye - JoyR"                     = "Eye - JoyR"
    "%Eye - ><"                       = "Eye - ><"
    "%Eye - Stare"                    = "Eye - Stare"
    "%Eye - KiraKira"                 = "Eye - KiraKira"
    "%Eye - WhiteEye"                 = "Eye - WhiteEye"
    "%Eye - Small"                    = "Eye - Small"

    "%Brow - ↑"                       = "Brow - ↑"
    "%Brow - ↓"                       = "Brow - ↓"
    "%Brow - Sad"                     = "Brow - Sad"
    "%Brow - Angry"                   = "Brow - Angry"

    "%Highlights - X"                 = "Highlights - X"

    "%Mouth - A"                      = "Mouth - A"
    "%Mouth - I"                      = "Mouth - I"
    "%Mouth - U"                      = "Mouth - U"
    "%Mouth - E"                      = "Mouth - E"
    "%Mouth - O"                      = "Mouth - O"
    "%Mouth - Smile"                  = "Mouth - Smile"
    "%Mouth - Sad"                    = "Mouth - Sad"
    "%Mouth - Wa"                     = "Mouth - Wa"
    "%Mouth - ∧"                      = "Mouth - ∧"
    "%Mouth - v"                      = "Mouth - v"
    "%Mouth - ω"                      = "Mouth - ω"
    "%Mouth - ○"                      = "Mouth - ○"
    "%Mouth - ○2"                     = "Mouth - ○2"
    "%Mouth - ▲"                      = "Mouth - ▲"
    "%Mouth - ▲2"                     = "Mouth - ▲2"
}

// Define Bodygroups
$bodygroup "Body" {
	studio "Body.dmx"
}

$bodygroup "Hair" {
	studio "Hair.dmx"
}

$bodygroup "Hat" {
	studio "Hat.dmx"
	blank
}

$bodygroup "Ribbons" {
	studio "Ribbon.dmx"
	studio "Ribbon2.dmx"
	Blank
}

$bodygroup "Hat2" {
	blank
	studio "Hat2.dmx"
}

// Model Properties
$illumposition -0.185 -0.314 37.536    
$ambientboost                          
$mostlyopaque  

// Maxverts and Unlock Define Bones
$maxverts 65536 65536
$unlockdefinebones

// Surface Properties
$surfaceprop "flesh"                       
$contents "solid"   

// Material Paths
$cdmaterials "My Model/Pal/"
$cdmaterials "My Model/Pal/DLC/"

// Texture Groups
$texturegroup "Color Variation"
{
	{    Body          Face          Hair          Costume            }
	{    Body_Another  Face_Another  Hair_Another  Costume_Another    }
}

// Define Bones & Bonemerges
$definebone "ValveBiped.Bip01_Pelvis" "" 0.000000 0.000003 38.831017 -0.000000 0.000041 90.000008 0.000000 0.000000 0.000000 -0.000000 0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Thigh" "ValveBiped.Bip01_Pelvis" 3.611521 -5.614723 0.000002 -0.097539 -90.000023 -90.016388 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Calf" "ValveBiped.Bip01_L_Thigh" 14.597075 -0.000186 0.000001 -0.001359 4.739404 -0.284888 0.000000 0.000000 0.000000 0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_L_Foot" "ValveBiped.Bip01_L_Calf" 14.871182 -0.000088 -0.000002 0.984659 -57.434952 0.504140 0.000000 0.000000 0.000000 -0.000000 -0.000002 -0.000000
$definebone "ValveBiped.Bip01_L_Toe0" "ValveBiped.Bip01_L_Foot" 5.086899 -0.076816 0.065344 -0.199814 -31.819942 -0.060194 0.000000 0.000000 0.000000 -0.000000 -0.000003 -0.000000
$definebone "ValveBiped.Bip01_R_Thigh" "ValveBiped.Bip01_Pelvis" -3.611521 -5.614723 -0.000003 -0.097554 -90.000008 -89.984138 0.000000 0.000000 0.000000 -0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Calf" "ValveBiped.Bip01_R_Thigh" 14.597078 -0.000186 -0.000001 0.001305 4.739371 0.287390 0.000000 0.000000 -0.000000 -0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Foot" "ValveBiped.Bip01_R_Calf" 14.871188 -0.000080 -0.000001 -1.114087 -57.426208 -0.122173 0.000000 0.000000 0.000000 -0.000000 -0.000008 0.000000
$definebone "ValveBiped.Bip01_R_Toe0" "ValveBiped.Bip01_R_Foot" 5.086729 -0.077998 -0.076179 0.372239 -31.859001 -3.502272 0.000000 -0.000000 0.000000 0.000000 -0.000004 -0.000000
$definebone "ValveBiped.Bip01_Spine" "ValveBiped.Bip01_Pelvis" -0.000000 0.533493 0.000000 4.943598 89.999695 89.999924 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine1" "ValveBiped.Bip01_Spine" 3.718262 0.321619 -0.000020 0.000057 -1.676371 -0.000012 0.000000 0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_Spine2" "ValveBiped.Bip01_Spine1" 0.000000 0.000000 0.000000 -0.002501 5.749036 0.000023 0.000000 0.000000 0.000000 0.000000 -0.000000 -0.000000
$definebone "ValveBiped.Bip01_Spine4" "ValveBiped.Bip01_Spine2" -0.000004 -0.000000 0.000000 0.002964 11.121325 0.000527 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_Neck1" "ValveBiped.Bip01_Spine4" 8.245014 -2.631142 0.000038 -0.001122 21.369886 179.999741 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_Head1" "ValveBiped.Bip01_Neck1" 2.204830 1.702536 0.000038 0.000590 17.346111 -0.000250 0.000000 0.000000 0.000000 -0.000000 0.000000 -0.000000
$definebone "ValveBiped.Bip01_L_Clavicle" "ValveBiped.Bip01_Spine4" 7.289093 -2.502862 1.301670 -63.945332 170.169815 89.633850 -0.000002 -0.000004 0.000000 0.000000 0.000000 -0.000001
$definebone "ValveBiped.Bip01_L_UpperArm" "ValveBiped.Bip01_L_Clavicle" 2.217382 1.092464 -0.061669 0.298555 26.011621 -90.133766 0.000000 0.000000 0.000000 0.000003 0.000001 0.000001
$definebone "ValveBiped.Bip01_L_Forearm" "ValveBiped.Bip01_L_UpperArm" 10.556501 -0.000008 0.000008 -0.040825 -0.991706 -0.014582 0.000000 0.000000 -0.000004 0.000003 0.000000 0.000001
$definebone "ValveBiped.Bip01_L_Hand" "ValveBiped.Bip01_L_Forearm" 9.680496 -0.000025 0.000000 -6.115253 7.729487 90.152451 0.000000 0.000000 0.000000 0.000001 -0.000003 -0.000001
$definebone "ValveBiped.Anim_Attachment_LH" "ValveBiped.Bip01_L_Hand" 2.676098 -1.712433 0.000000 0.000110 90.005569 90.000000 0.000000 0.000000 0.000000 0.000003 -0.000001 -0.000001
$definebone "ValveBiped.forward" "ValveBiped.Bip01_Head1" -0.000004 0.000000 -0.000000 -0.000007 -75.999649 -89.999954 0.000000 -0.000000 0.000000 -0.000000 -0.000000 0.000000
$definebone "ValveBiped.Bip01_R_Clavicle" "ValveBiped.Bip01_Spine4" 7.289108 -2.502861 -1.301602 64.042549 169.573212 -90.208420 0.000000 0.000000 0.000000 0.000000 -0.000003 0.000001
$definebone "ValveBiped.Bip01_R_UpperArm" "ValveBiped.Bip01_R_Clavicle" 2.218908 1.088696 0.072526 -0.550394 25.915934 89.957352 0.000000 0.000000 0.000000 -0.000003 0.000000 -0.000001
$definebone "ValveBiped.Bip01_R_Forearm" "ValveBiped.Bip01_R_UpperArm" 10.556502 0.000014 0.000008 0.042496 -0.991734 -0.021904 0.000000 0.000000 0.000000 -0.000003 0.000000 -0.000000
$definebone "ValveBiped.Bip01_R_Hand" "ValveBiped.Bip01_R_Forearm" 9.680498 0.000011 0.000011 6.094724 7.463153 -89.591492 0.000002 0.000000 0.000000 -0.000001 -0.000000 0.000001
$definebone "ValveBiped.Anim_Attachment_RH" "ValveBiped.Bip01_R_Hand" 2.676085 -1.712463 0.000000 0.000113 -89.988770 -90.000587 0.000004 0.000000 0.000000 -0.000001 0.000001 -0.000001
$definebone "ValveBiped.Bip01_L_Finger2" "ValveBiped.Bip01_L_Hand" 3.707058 -0.558643 0.443053 -8.200094 -6.093694 2.148068 0.000002 0.000000 0.000000 -0.000000 -0.000003 -0.000000
$definebone "ValveBiped.Bip01_L_Finger21" "ValveBiped.Bip01_L_Finger2" 1.285112 -0.000004 0.000009 1.078143 -0.042469 -1.900726 0.000002 0.000000 -0.000000 0.000000 -0.000003 -0.000000
$definebone "ValveBiped.Bip01_L_Finger22" "ValveBiped.Bip01_L_Finger21" 0.769432 0.000004 0.000005 0.176267 -12.399029 0.000121 -0.000002 0.000000 0.000000 -0.000000 -0.000005 -0.000000
$definebone "ValveBiped.Bip01_L_Finger1" "ValveBiped.Bip01_L_Hand" 3.524124 -0.538033 1.067429 -9.088944 -6.092683 15.528894 0.000000 0.000000 0.000000 -0.000001 -0.000003 0.000003
$definebone "ValveBiped.Bip01_L_Finger11" "ValveBiped.Bip01_L_Finger1" 1.119921 0.000004 0.000003 0.370087 -0.102635 -2.410724 0.000000 0.000000 0.000000 -0.000001 -0.000003 0.000005
$definebone "ValveBiped.Bip01_L_Finger12" "ValveBiped.Bip01_L_Finger11" 0.754177 -0.000004 0.000006 0.148542 -13.998353 -0.000161 0.000000 0.000000 0.000000 0.000000 -0.000001 0.000007
$definebone "ValveBiped.Bip01_L_Finger0" "ValveBiped.Bip01_L_Hand" 1.315811 -0.521473 1.218585 -46.515671 -16.952265 -93.226677 0.000000 0.000000 0.000000 0.000003 -0.000002 -0.000003
$definebone "ValveBiped.Bip01_L_Finger01" "ValveBiped.Bip01_L_Finger0" 1.097308 -0.000004 -0.000008 -4.227002 0.559701 -5.072598 0.000000 0.000000 0.000000 0.000005 -0.000005 -0.000003
$definebone "ValveBiped.Bip01_L_Finger02" "ValveBiped.Bip01_L_Finger01" 0.723858 -0.000003 -0.000004 0.645406 20.790833 0.001860 0.000000 0.000000 0.000000 0.000007 -0.000003 0.000001
$definebone "ValveBiped.Bip01_L_Finger4" "ValveBiped.Bip01_L_Hand" 3.466084 -0.535069 -0.890259 -7.838422 -6.094348 -26.809742 0.000000 0.000004 0.000000 0.000001 -0.000003 -0.000005
$definebone "ValveBiped.Bip01_L_Finger41" "ValveBiped.Bip01_L_Finger4" 0.944555 -0.000004 0.000006 -0.686447 -0.313859 -0.054670 0.000002 0.000000 0.000000 0.000001 -0.000004 -0.000004
$definebone "ValveBiped.Bip01_L_Finger42" "ValveBiped.Bip01_L_Finger41" 0.629759 -0.000004 0.000002 0.285273 -13.994571 0.000054 0.000000 0.000000 0.000002 -0.000000 -0.000007 -0.000002
$definebone "ValveBiped.Bip01_L_Finger3" "ValveBiped.Bip01_L_Hand" 3.574898 -0.545635 -0.239532 -7.262482 -6.095712 -10.868607 0.000002 0.000000 0.000000 0.000001 -0.000003 -0.000002
$definebone "ValveBiped.Bip01_L_Finger31" "ValveBiped.Bip01_L_Finger3" 1.226561 0.000008 0.000009 0.048618 0.009427 0.465309 0.000000 -0.000004 0.000000 0.000001 -0.000003 -0.000003
$definebone "ValveBiped.Bip01_L_Finger32" "ValveBiped.Bip01_L_Finger31" 0.762182 -0.000015 0.000006 0.421486 -24.684103 0.000280 0.000000 0.000000 0.000000 0.000000 -0.000005 -0.000003
$definebone "ValveBiped.Bip01_R_Finger2" "ValveBiped.Bip01_R_Hand" 3.709200 -0.561867 -0.420511 7.873973 -6.150622 -1.916647 0.000000 0.000000 0.000000 -0.000000 -0.000003 0.000001
$definebone "ValveBiped.Bip01_R_Finger21" "ValveBiped.Bip01_R_Finger2" 1.285109 -0.000004 -0.000003 -1.078544 -0.030073 1.833135 0.000000 0.000004 0.000000 -0.000000 -0.000003 0.000000
$definebone "ValveBiped.Bip01_R_Finger22" "ValveBiped.Bip01_R_Finger21" 0.769426 0.000000 -0.000002 -0.255526 -12.396008 -0.000070 0.000000 -0.000004 0.000000 -0.000000 -0.000007 0.000001
$definebone "ValveBiped.Bip01_R_Finger1" "ValveBiped.Bip01_R_Hand" 3.529314 -0.546272 -1.045915 8.762812 -6.156063 -15.513309 0.000000 0.000000 0.000000 0.000003 -0.000003 -0.000000
$definebone "ValveBiped.Bip01_R_Finger11" "ValveBiped.Bip01_R_Finger1" 1.119921 0.000008 -0.000001 -0.370851 -0.100420 2.516824 -0.000002 0.000000 0.000001 0.000003 -0.000003 -0.000000
$definebone "ValveBiped.Bip01_R_Finger12" "ValveBiped.Bip01_R_Finger11" 0.754177 0.000004 -0.000002 -0.240872 -13.997130 0.000090 0.000002 0.000004 0.000000 0.000003 -0.000009 0.000000
$definebone "ValveBiped.Bip01_R_Finger0" "ValveBiped.Bip01_R_Hand" 1.321760 -0.531097 -1.207950 46.113930 -17.321327 109.785225 -0.000001 0.000000 0.000000 -0.000007 -0.000007 0.000003
$definebone "ValveBiped.Bip01_R_Finger01" "ValveBiped.Bip01_R_Finger0" 1.097308 -0.000003 0.000000 4.204701 -0.708318 6.530485 0.000000 0.000000 0.000000 -0.000003 -0.000005 0.000003
$definebone "ValveBiped.Bip01_R_Finger02" "ValveBiped.Bip01_R_Finger01" 0.723860 -0.000006 0.000008 -0.551461 20.791697 -0.000364 0.000001 0.000000 0.000000 -0.000005 0.000003 0.000000
$definebone "ValveBiped.Bip01_R_Finger4" "ValveBiped.Bip01_R_Hand" 3.461737 -0.527649 0.911381 7.512517 -6.148560 26.818319 0.000000 -0.000004 0.000000 -0.000001 -0.000003 -0.000001
$definebone "ValveBiped.Bip01_R_Finger41" "ValveBiped.Bip01_R_Finger4" 0.944553 0.000004 -0.000002 0.684035 -0.317999 -0.705598 0.000000 0.000000 0.000000 -0.000001 -0.000003 -0.000000
$definebone "ValveBiped.Bip01_R_Finger42" "ValveBiped.Bip01_R_Finger41" 0.629753 -0.000011 0.000000 -0.351410 -13.997192 0.000105 0.000000 0.000000 0.000000 -0.000001 -0.000007 -0.000004
$definebone "ValveBiped.Bip01_R_Finger3" "ValveBiped.Bip01_R_Hand" 3.573721 -0.543411 0.261297 6.936401 -6.145239 10.367241 0.000000 0.000000 0.000000 0.000001 -0.000003 0.000001
$definebone "ValveBiped.Bip01_R_Finger31" "ValveBiped.Bip01_R_Finger3" 1.226557 0.000004 -0.000004 -0.048633 0.009406 -0.310606 0.000000 -0.000004 0.000000 0.000001 -0.000003 -0.000000
$definebone "ValveBiped.Bip01_R_Finger32" "ValveBiped.Bip01_R_Finger31" 0.762182 -0.000008 -0.000002 -0.553476 -24.682207 0.000251 0.000000 0.000004 0.000000 0.000001 -0.000007 -0.000001

$bonemerge ValveBiped.Bip01_Pelvis
$bonemerge ValveBiped.Bip01_Spine
$bonemerge ValveBiped.Bip01_Spine1
$bonemerge ValveBiped.Bip01_Spine2
$bonemerge ValveBiped.Bip01_Spine4
$bonemerge ValveBiped.Bip01_Neck1
$bonemerge ValveBiped.Bip01_Head1
$bonemerge ValveBiped.forward
$bonemerge ValveBiped.Bip01_L_Clavicle
$bonemerge ValveBiped.Bip01_L_UpperArm
$bonemerge ValveBiped.Bip01_L_Forearm
$bonemerge ValveBiped.Bip01_L_Hand
$bonemerge ValveBiped.Anim_Attachment_LH
$bonemerge ValveBiped.Bip01_R_Clavicle
$bonemerge ValveBiped.Bip01_R_UpperArm
$bonemerge ValveBiped.Bip01_R_Forearm
$bonemerge ValveBiped.Bip01_R_Hand
$bonemerge ValveBiped.Anim_Attachment_RH
$bonemerge ValveBiped.Bip01_L_Thigh
$bonemerge ValveBiped.Bip01_L_Calf
$bonemerge ValveBiped.Bip01_L_Foot
$bonemerge ValveBiped.Bip01_L_Toe0
$bonemerge ValveBiped.Bip01_R_Thigh
$bonemerge ValveBiped.Bip01_R_Calf
$bonemerge ValveBiped.Bip01_R_Foot
$bonemerge ValveBiped.Bip01_R_Toe0

// Define Jigglebones
$jigglebone "Bell"
{
	is_flexible
	{
		length 30
		tip_mass 200
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 30.000001
	}
}

$jigglebone "Hoodie"               
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}

$jigglebone "PonchoTwist.L"
{
	is_flexible
	{
		length 10
		tip_mass 5
		pitch_stiffness 500
		pitch_damping 50
		yaw_stiffness 500
		yaw_damping 50
		along_stiffness 100
		along_damping 0
		angle_constraint 15
	}
}

$jigglebone "PonchoTwist.R"
{
	is_flexible
	{
		length 10
		tip_mass 5
		pitch_stiffness 500
		pitch_damping 50
		yaw_stiffness 500
		yaw_damping 50
		along_stiffness 100
		along_damping 0
		angle_constraint 15
	}
}

$jigglebone "PonchoTwistMiddle"
{
	is_flexible
	{
		length 10
		tip_mass 5
		pitch_stiffness 500
		pitch_damping 50
		yaw_stiffness 500
		yaw_damping 50
		along_stiffness 100
		along_damping 0
		angle_constraint 15
	}
}

$jigglebone "PonchoPhysM"
{
	is_flexible
	{
		length 10
		tip_mass 5
		pitch_stiffness 500
		pitch_damping 50
		yaw_stiffness 500
		yaw_damping 50
		along_stiffness 100
		along_damping 0
		angle_constraint 15
	}
}

$jigglebone "Ear.R"
{
	is_flexible
	{
		length 100
		tip_mass 25
		pitch_stiffness 35
		pitch_damping 2
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 50
		along_damping 7
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -20.000001 20.000001
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 35
	}
}

$jigglebone "Ear.R.001"
{
	is_flexible
	{
		length 100
		tip_mass 25
		pitch_stiffness 35
		pitch_damping 2
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 50
		along_damping 7
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -20.000001 20.000001
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 35
	}
}

$jigglebone "Ear.R.002"
{
	is_flexible
	{
		length 100
		tip_mass 25
		pitch_stiffness 35
		pitch_damping 2
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 50
		along_damping 7
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -20.000001 20.000001
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 35
	}
}

$jigglebone "Ear.L"
{
	is_flexible
	{
		length 100
		tip_mass 25
		pitch_stiffness 35
		pitch_damping 2
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 50
		along_damping 7
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -20.000001 20.000001
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 35
	}
}

$jigglebone "Ear.L.001"
{
	is_flexible
	{
		length 100
		tip_mass 25
		pitch_stiffness 35
		pitch_damping 2
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 50
		along_damping 7
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -20.000001 20.000001
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 35
	}
}

$jigglebone "Ear.L.002"
{
	is_flexible
	{
		length 100
		tip_mass 25
		pitch_stiffness 35
		pitch_damping 2
		yaw_stiffness 80
		yaw_damping 8
		along_stiffness 50
		along_damping 7
		pitch_constraint -19.999999 19.999999
		pitch_friction 0
		pitch_bounce 0
		yaw_constraint -20.000001 20.000001
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 35
	}
}

$jigglebone "WhiskerTop.L"               
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}

$jigglebone "WhiskerTop.R"               
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}

$jigglebone "WhiskerTop.L.001"               
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}

$jigglebone "WhiskerTop.R.001"               
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}

$jigglebone "WhiskerBottom.L"               
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}

$jigglebone "WhiskerBottom.L.001"               
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}

$jigglebone "WhiskerBottom.R"               
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}

$jigglebone "WhiskerBottom.R.001"               
{
	is_flexible
	{
		length 10
		tip_mass 0
		pitch_stiffness 75
		pitch_damping 7
		yaw_stiffness 75
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		angle_constraint 19.999999
	}
}

$jigglebone "Tail.001" 
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		yaw_constraint -15 60.000002
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 60.000002
	}
}

$jigglebone "Tail.002" 
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		yaw_constraint -15 60.000002
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 60.000002
	}
}

$jigglebone "Tail.003" 
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		yaw_constraint -15 60.000002
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 60.000002
	}
}

$jigglebone "Tail.004" 
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		yaw_constraint -15 60.000002
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 60.000002
	}
}

$jigglebone "Tail.005" 
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		yaw_constraint -15 60.000002
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 60.000002
	}
}

$jigglebone "Tail.006" 
{
	is_flexible
	{
		length 50
		tip_mass 0
		pitch_stiffness 50
		pitch_damping 7
		yaw_stiffness 50
		yaw_damping 7
		along_stiffness 100
		along_damping 0
		yaw_constraint -15 60.000002
		yaw_friction 0
		yaw_bounce 0
		angle_constraint 60.000002
	}
}

// Define attachments
$attachment "eyes" "ValveBiped.Bip01_Head1" 2.63 -4.13 0.04 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" -0.2 -5.8 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 4 4 0 rotate 0 95 90
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0

// Inverse Kinematics chains
$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

// Auto-play locks for IK chains
$ikautoplaylock "rfoot" 0.5 0.1
$ikautoplaylock "lfoot" 0.5 0.1

// Sequences
$sequence Proportion anims/proportions delta subtract Proportion 1 numframes 1 autoplay hidden
$sequence ragdoll anims/ragdoll.smd ACT_DIERAGDOLL 1 

// Animations
$includemodel "f_anm.mdl"

// Collision model
$collisionjoints "Collision Model.dmx"
{
	$mass 90
	$inertia 10
	$damping 0.01
	$rotdamping 0
	$rootbone "ValveBiped.Bip01_Pelvis"


	$jointconstrain "valvebiped.bip01_spine" x limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_spine" y limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_spine" z limit -20.00 10.00 0.00

	$jointconstrain "valvebiped.bip01_r_clavicle" x limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_r_clavicle" y limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_r_clavicle" z limit -5.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_clavicle" x limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_l_clavicle" y limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_l_clavicle" z limit -5.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_upperarm" x limit -45.00 45.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" y limit -45.00 50.00 0.00
	$jointconstrain "valvebiped.bip01_l_upperarm" z limit -90.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_forearm" z limit -130.00 0.00 0.00

	$jointconstrain "valvebiped.bip01_l_hand" x limit -45.00 45.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" y limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_hand" z limit -30.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_r_upperarm" x limit -45.00 45.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" y limit -50.00 45.00 0.00
	$jointconstrain "valvebiped.bip01_r_upperarm" z limit -90.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_neck1" x limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_neck1" y limit -15.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_neck1" z limit -20.00 20.00 0.00

	$jointconstrain "valvebiped.bip01_r_forearm" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_forearm" z limit -130.00 0.00 0.00

	$jointconstrain "valvebiped.bip01_r_hand" x limit -45.00 45.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" y limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_r_hand" z limit -30.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_r_thigh" x limit -15.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" y limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_r_thigh" z limit -60.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_r_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_r_calf" z limit 0.00 110.00 0.00

	$jointconstrain "valvebiped.bip01_head1" x limit -45.00 45.00 0.00
	$jointconstrain "valvebiped.bip01_head1" y limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_head1" z limit -15.00 15.00 0.00

	$jointconstrain "valvebiped.bip01_l_thigh" x limit -15.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" y limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_thigh" z limit -60.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_l_calf" x limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" y limit 0.00 0.00 0.00
	$jointconstrain "valvebiped.bip01_l_calf" z limit 0.00 110.00 0.00

	$jointconstrain "valvebiped.bip01_l_foot" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" y limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_l_foot" z limit -30.00 30.00 0.00

	$jointconstrain "valvebiped.bip01_r_foot" x limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" y limit -30.00 30.00 0.00
	$jointconstrain "valvebiped.bip01_r_foot" z limit -30.00 30.00 0.00
}