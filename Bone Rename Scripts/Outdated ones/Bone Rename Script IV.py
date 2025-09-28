import bpy

# Define a dictionary of bone name replacements
bone_replacements = {
    "Hips": "ValveBiped.Bip01_Pelvis",
    "Spine": "ValveBiped.Bip01_Spine",
    "Chest": "ValveBiped.Bip01_Spine4",
    "Neck": "ValveBiped.Bip01_Neck1",
    "Head": "ValveBiped.Bip01_Head1",
    
    "Left_shoulder": "ValveBiped.Bip01_L_Clavicle",
    "Left_arm": "ValveBiped.Bip01_L_UpperArm",
    "Left_elbow": "ValveBiped.Bip01_L_Forearm",
    "Left_wrist": "ValveBiped.Bip01_L_Hand",
    "Thumb_Proximal_L": "ValveBiped.Bip01_L_Finger0",
    "Thumb_Intermediate_L": "ValveBiped.Bip01_L_Finger01",
    "Thumb_Distal_L": "ValveBiped.Bip01_L_Finger02",
    "Index_Proximal_L": "ValveBiped.Bip01_L_Finger1",
    "Index_Intermediate_L": "ValveBiped.Bip01_L_Finger11",
    "Index_Distal_L": "ValveBiped.Bip01_L_Finger12",
    "Middle_Proximal_L": "ValveBiped.Bip01_L_Finger2",
    "Middle_Intermediate_L": "ValveBiped.Bip01_L_Finger21",
    "Middle_Distal_L": "ValveBiped.Bip01_L_Finger22",
    "Ring_Proximal_L": "ValveBiped.Bip01_L_Finger3",
    "Ring_Intermediate_L": "ValveBiped.Bip01_L_Finger31",
    "Ring_Distal_L": "ValveBiped.Bip01_L_Finger32",
    "Little_Proximal_L": "ValveBiped.Bip01_L_Finger4",
    "Little_Intermediate_L": "ValveBiped.Bip01_L_Finger41",
    "Little_Distal_L": "ValveBiped.Bip01_L_Finger42",
    
    "Right_shoulder": "ValveBiped.Bip01_R_Clavicle",
    "Right_arm": "ValveBiped.Bip01_R_UpperArm",
    "Right_elbow": "ValveBiped.Bip01_R_Forearm",
    "Right_wrist": "ValveBiped.Bip01_R_Hand",
    "Thumb_Proximal_R": "ValveBiped.Bip01_R_Finger0",
    "Thumb_Intermediate_R": "ValveBiped.Bip01_R_Finger01",
    "Thumb_Distal_R": "ValveBiped.Bip01_R_Finger02",
    "Index_Proximal_R": "ValveBiped.Bip01_R_Finger1",
    "Index_Intermediate_R": "ValveBiped.Bip01_R_Finger11",
    "Index_Distal_R": "ValveBiped.Bip01_R_Finger12",
    "Middle_Proximal_R": "ValveBiped.Bip01_R_Finger2",
    "Middle_Intermediate_R": "ValveBiped.Bip01_R_Finger21",
    "Middle_Distal_R": "ValveBiped.Bip01_R_Finger22",
    "Ring_Proximal_R": "ValveBiped.Bip01_R_Finger3",
    "Ring_Intermediate_R": "ValveBiped.Bip01_R_Finger31",
    "Ring_Distal_R": "ValveBiped.Bip01_R_Finger32",
    "Little_Proximal_R": "ValveBiped.Bip01_R_Finger4",
    "Little_Intermediate_R": "ValveBiped.Bip01_R_Finger41",
    "Little_Distal_R": "ValveBiped.Bip01_R_Finger42",
    
    "Left_leg": "ValveBiped.Bip01_L_Thigh",
    "Left_knee": "ValveBiped.Bip01_L_Calf",
    "Left_ankle": "ValveBiped.Bip01_L_Foot",
    "Left_Toe": "ValveBiped.Bip01_L_Toe0",
    
    "Right_leg": "ValveBiped.Bip01_R_Thigh",
    "Right_knee": "ValveBiped.Bip01_R_Calf",
    "Right_ankle": "ValveBiped.Bip01_R_Foot",
    "Right_Toe": "ValveBiped.Bip01_R_Toe0"
}

# Loop through all the meshes in the scene
for mesh in bpy.data.meshes:
    # Check if the mesh has shape keys
    if mesh.shape_keys:
        # Loop through all the shape keys in the mesh
        for shape_key in mesh.shape_keys.key_blocks:
            # Replace all underscores in the shape key's name with spaces
            shape_key.name = shape_key.name.replace('_', '')

# Loop through all the armatures in the scene
for armature in bpy.data.armatures:
    # Loop through all the bones in the armature
    for bone in armature.bones:
        # Check if the bone name is in the dictionary of replacements
        if bone.name in bone_replacements and bone_replacements[bone.name] != "none":
            # Rename the bone
            bone.name = bone_replacements[bone.name]

print("Bones and shape keys have been renamed successfully!")



# 