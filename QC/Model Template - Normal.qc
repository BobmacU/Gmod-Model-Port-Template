$modelname "model_name.mdl"            // Output model name
$model     "main_model" "X.dmx"        // Model label and reference DMX file

// Type 1, Static bodygroup
$bodygroup "Bodygroup Type 1" {        // Defines the name of the bodygroup
	studio "X.dmx"                     // Specifies the mesh used for this bodygroup
}

// Type 2, Toggle-able bodygroup
$bodygroup "Bodygroup Type 2" {        // Defines the name of the bodygroup    
	studio "X.dmx"                     // Specifies the mesh used for this bodygroup
	blank                              // Disabled state
}

// Type 3, Switch-able bodygroup
$bodygroup "Bodygroup Type 3" {        // Defines the name of the bodygroup   
	studio "X.dmx"                     // Specifies the mesh used for this bodygroup 1
	studio "Y.dmx"                     // Specifies the mesh used for this bodygroup 2
	blank                              // Disabled state
}

// Type 4, Switch-able but Disabled first bodygroup
$bodygroup "Bodygroup Type 4" {        // Defines the name of the bodygroup   
	blank                              // Disabled state
	studio "X.dmx"                     // Specifies the mesh used for this bodygroup
}

$illumposition -0.185 -0.314 37.536          // Lighting origin
$ambientboost                                // Indicates the model be rendered with the ambient boost heuristic
$mostlyopaque                                // Improves lighting on translucent materials

$maxverts 65536 65536                        // It defines when to split and the maximum amount of vertices allowed in each model
$unlockdefinebones                           // use the bone positions of the first frame in the last defined smd/dmx file of the qc for the definebone values.

$surfaceprop "flesh"                         // Surfaceprop type, Example : "Flesh" is used on humans, "Metal" will be used for robots.
$contents "solid"                            // Makes the model solid. 

$cdmaterials "My material path/My model"     // Defines the Material folder path

// Definebones goes below
$definebone "My bone" "" -0.000005 -0.533615 38.566917 0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "My bone2" "" -0.000005 -0.533615 38.566917 0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000
$definebone "My bone3" "" -0.000005 -0.533615 38.566917 0.000000 0.000000 89.999985 0.000000 0.000000 0.000000 0.000000 0.000000 0.000000

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
$bonemerge ValveBiped.Bip01_L_Finger4
$bonemerge ValveBiped.Bip01_L_Finger41
$bonemerge ValveBiped.Bip01_L_Finger42
$bonemerge ValveBiped.Bip01_L_Finger3
$bonemerge ValveBiped.Bip01_L_Finger31
$bonemerge ValveBiped.Bip01_L_Finger32
$bonemerge ValveBiped.Bip01_L_Finger2
$bonemerge ValveBiped.Bip01_L_Finger21
$bonemerge ValveBiped.Bip01_L_Finger22
$bonemerge ValveBiped.Bip01_L_Finger1
$bonemerge ValveBiped.Bip01_L_Finger11
$bonemerge ValveBiped.Bip01_L_Finger12
$bonemerge ValveBiped.Bip01_L_Finger0
$bonemerge ValveBiped.Bip01_L_Finger01
$bonemerge ValveBiped.Bip01_L_Finger02
$bonemerge ValveBiped.Bip01_R_Finger4
$bonemerge ValveBiped.Bip01_R_Finger41
$bonemerge ValveBiped.Bip01_R_Finger42
$bonemerge ValveBiped.Bip01_R_Finger3
$bonemerge ValveBiped.Bip01_R_Finger31
$bonemerge ValveBiped.Bip01_R_Finger32
$bonemerge ValveBiped.Bip01_R_Finger2
$bonemerge ValveBiped.Bip01_R_Finger21
$bonemerge ValveBiped.Bip01_R_Finger22
$bonemerge ValveBiped.Bip01_R_Finger1
$bonemerge ValveBiped.Bip01_R_Finger11
$bonemerge ValveBiped.Bip01_R_Finger12
$bonemerge ValveBiped.Bip01_R_Finger0
$bonemerge ValveBiped.Bip01_R_Finger01

// Jigglebones goes here
$jigglebone "Bob" {                   // Jigglebone named "Bob"
	is_flexible {
		length 20
		tip_mass 10
		pitch_stiffness 30
		pitch_damping 5
		yaw_stiffness 30
		yaw_damping 5
		along_stiffness 70
		yaw_constraint -15 60
		angle_constraint 60
	}
}

// Defines attachments.
$attachment "eyes" "ValveBiped.Bip01_Head1" 2.63 -4.13 0.04 rotate 0 -80.1 -90
$attachment "mouth" "ValveBiped.Bip01_Head1" -0.2 -5.8 0 rotate 0 -80 -90
$attachment "chest" "ValveBiped.Bip01_Spine2" 4 4 0 rotate 0 95 90
$attachment "forward" "ValveBiped.forward" 0 0 0 rotate 0 0 0
$attachment "anim_attachment_RH" "ValveBiped.Anim_Attachment_RH" 0 0 0 rotate -90 -90 0
$attachment "anim_attachment_LH" "ValveBiped.Anim_Attachment_LH" 0 0 0 rotate -90 -90 0

// Defines IK for model.
$ikchain "rhand" "ValveBiped.Bip01_R_Hand" knee 0.707 0.707 0
$ikchain "lhand" "ValveBiped.Bip01_L_Hand" knee 0.707 0.707 0
$ikchain "rfoot" "ValveBiped.Bip01_R_Foot" knee 0.707 -0.707 0
$ikchain "lfoot" "ValveBiped.Bip01_L_Foot" knee 0.707 -0.707 0

//The first value, 0.1, dictates how high the foot is off the ground. Generally values between 0-1 are acceptable enough. Can go higher if feet clips the ground.
//The second value, 0.1 can be left untouched (or even at 0). This controls the rotation of the foot and isn't really necessary.

$ikautoplaylock "rfoot" 0.1 0.1
$ikautoplaylock "lfoot" 0.1 0.1

// Proportion trick & Ragdoll command, No need to touch.
$sequence Proportion anims/proportions delta subtract Proportion 1 numframes 1 autoplay hidden
$sequence ragdoll anims/ragdoll ACT_DIERAGDOLL 1

// Animation commands
$includemodel "f_anm.mdl"
$includemodel "m_anm.mdl"

// Defines Collision model and joints.
$collisionjoints "Collision Model.dmx"
{
	$mass 90
	$inertia 10
	$damping 0.01
	$rotdamping 0
	$rootbone "ValveBiped.Bip01_Pelvis"       // Main root for physics
	

	$jointconstrain "valvebiped.bip01_spine" x limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_spine" y limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_spine" z limit -20.00 10.00 0.00

	$jointconstrain "valvebiped.bip01_spine1" x limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_spine1" y limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_spine1" z limit -20.00 10.00 0.00

	$jointconstrain "valvebiped.bip01_spine2" x limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" y limit -15.00 15.00 0.00
	$jointconstrain "valvebiped.bip01_spine2" z limit -30.00 45.00 0.00

	$jointconstrain "valvebiped.bip01_spine4" x limit -20.00 20.00 0.00
	$jointconstrain "valvebiped.bip01_spine4" y limit -10.00 10.00 0.00
	$jointconstrain "valvebiped.bip01_spine4" z limit -20.00 10.00 0.00

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