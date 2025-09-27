import bpy

# Define a dictionary of bone name replacements
bone_replacements = {
    "Hips": "ValveBiped.Bip01_Pelvis",
    "Spine": "ValveBiped.Bip01_Spine",
    "Chest": "ValveBiped.Bip01_Spine4",
    "Neck": "ValveBiped.Bip01_Neck1",
    "Head": "ValveBiped.Bip01_Head1",
    
    "Shoulder_L": "ValveBiped.Bip01_L_Clavicle",
    "UpperArm_L": "ValveBiped.Bip01_L_UpperArm",
    "LowerArm_L": "ValveBiped.Bip01_L_Forearm",
    "Hand_L": "ValveBiped.Bip01_L_Hand",
    "ThumbProximal_L": "ValveBiped.Bip01_L_Finger0",
    "ThumbIntermediate_L": "ValveBiped.Bip01_L_Finger01",
    "ThumbDistal_L": "ValveBiped.Bip01_L_Finger02",
    "IndexProximal_L": "ValveBiped.Bip01_L_Finger1",
    "IndexIntermediate_L": "ValveBiped.Bip01_L_Finger11",
    "IndexDistal_L": "ValveBiped.Bip01_L_Finger12",
    "MiddleProximal_L": "ValveBiped.Bip01_L_Finger2",
    "MiddleIntermediate_L": "ValveBiped.Bip01_L_Finger21",
    "MiddleDistal_L": "ValveBiped.Bip01_L_Finger22",
    "RingProximal_L": "ValveBiped.Bip01_L_Finger3",
    "RingIntermediate_L": "ValveBiped.Bip01_L_Finger31",
    "RingDistal_L": "ValveBiped.Bip01_L_Finger32",
    "LittleProximal_L": "ValveBiped.Bip01_L_Finger4",
    "LittleIntermediate_L": "ValveBiped.Bip01_L_Finger41",
    "LittleDistal_L": "ValveBiped.Bip01_L_Finger42",
    
    "Shoulder_R": "ValveBiped.Bip01_R_Clavicle",
    "UpperArm_R": "ValveBiped.Bip01_R_UpperArm",
    "LowerArm_R": "ValveBiped.Bip01_R_Forearm",
    "Hand_R": "ValveBiped.Bip01_R_Hand",
    "ThumbProximal_R": "ValveBiped.Bip01_R_Finger0",
    "ThumbIntermediate_R": "ValveBiped.Bip01_R_Finger01",
    "ThumbDistal_R": "ValveBiped.Bip01_R_Finger02",
    "IndexProximal_R": "ValveBiped.Bip01_R_Finger1",
    "IndexIntermediate_R": "ValveBiped.Bip01_R_Finger11",
    "IndexDistal_R": "ValveBiped.Bip01_R_Finger12",
    "MiddleProximal_R": "ValveBiped.Bip01_R_Finger2",
    "MiddleIntermediate_R": "ValveBiped.Bip01_R_Finger21",
    "MiddleDistal_R": "ValveBiped.Bip01_R_Finger22",
    "RingProximal_R": "ValveBiped.Bip01_R_Finger3",
    "RingIntermediate_R": "ValveBiped.Bip01_R_Finger31",
    "RingDistal_R": "ValveBiped.Bip01_R_Finger32",
    "LittleProximal_R": "ValveBiped.Bip01_R_Finger4",
    "LittleIntermediate_R": "ValveBiped.Bip01_R_Finger41",
    "LittleDistal_R": "ValveBiped.Bip01_R_Finger42",
    
    "UpperLeg_L": "ValveBiped.Bip01_L_Thigh",
    "LowerLeg_L": "ValveBiped.Bip01_L_Calf",
    "Foot_L": "ValveBiped.Bip01_L_Foot",
    "Toe_L": "ValveBiped.Bip01_L_Toe0",
    
    "UpperLeg_R": "ValveBiped.Bip01_R_Thigh",
    "LowerLeg_R": "ValveBiped.Bip01_R_Calf",
    "Foot_R": "ValveBiped.Bip01_R_Foot",
    "Toe_R": "ValveBiped.Bip01_R_Toe0"
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