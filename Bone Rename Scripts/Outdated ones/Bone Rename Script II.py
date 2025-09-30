import bpy

# Define a dictionary of bone name replacements
bone_replacements = {
    "Hips": "ValveBiped.Bip01_Pelvis",
    "Spine": "ValveBiped.Bip01_Spine",
    "Chest": "ValveBiped.Bip01_Spine4",
    "Neck": "ValveBiped.Bip01_Neck1",
    "Head": "ValveBiped.Bip01_Head1",
    
    "Shoulder_l": "ValveBiped.Bip01_L_Clavicle",
    "UpperArm_l": "ValveBiped.Bip01_L_UpperArm",
    "LowerArm_l": "ValveBiped.Bip01_L_Forearm",
    "Hand_l": "ValveBiped.Bip01_L_Hand",
    "Thumb01_l": "ValveBiped.Bip01_L_Finger0",
    "Thumb02_l": "ValveBiped.Bip01_L_Finger01",
    "Thumb03_l": "ValveBiped.Bip01_L_Finger02",
    "Index01_l": "ValveBiped.Bip01_L_Finger1",
    "Index02_l": "ValveBiped.Bip01_L_Finger11",
    "Index03_l": "ValveBiped.Bip01_L_Finger12",
    "Middle01_l": "ValveBiped.Bip01_L_Finger2",
    "Middle02_l": "ValveBiped.Bip01_L_Finger21",
    "Middle03_l": "ValveBiped.Bip01_L_Finger22",
    "Ring01_l": "ValveBiped.Bip01_L_Finger3",
    "Ring02_l": "ValveBiped.Bip01_L_Finger31",
    "Ring03_l": "ValveBiped.Bip01_L_Finger32",
    "Little01_l": "ValveBiped.Bip01_L_Finger4",
    "Little02_l": "ValveBiped.Bip01_L_Finger41",
    "Little03_l": "ValveBiped.Bip01_L_Finger42",
    
    "Shoulder_r": "ValveBiped.Bip01_R_Clavicle",
    "UpperArm_r": "ValveBiped.Bip01_R_UpperArm",
    "LowerArm_r": "ValveBiped.Bip01_R_Forearm",
    "Hand_r": "ValveBiped.Bip01_R_Hand",
    "Thumb01_r": "ValveBiped.Bip01_R_Finger0",
    "Thumb02_r": "ValveBiped.Bip01_R_Finger01",
    "Thumb03_r": "ValveBiped.Bip01_R_Finger02",
    "Index01_r": "ValveBiped.Bip01_R_Finger1",
    "Index02_r": "ValveBiped.Bip01_R_Finger11",
    "Index03_r": "ValveBiped.Bip01_R_Finger12",
    "Middle01_r": "ValveBiped.Bip01_R_Finger2",
    "Middle02_r": "ValveBiped.Bip01_R_Finger21",
    "Middle03_r": "ValveBiped.Bip01_R_Finger22",
    "Ring01_r": "ValveBiped.Bip01_R_Finger3",
    "Ring02_r": "ValveBiped.Bip01_R_Finger31",
    "Ring03_r": "ValveBiped.Bip01_R_Finger32",
    "Little01_r": "ValveBiped.Bip01_R_Finger4",
    "Little02_r": "ValveBiped.Bip01_R_Finger41",
    "Little03_r": "ValveBiped.Bip01_R_Finger42",
    
    "UpperLeg_l": "ValveBiped.Bip01_L_Thigh",
    "LowerLeg_l": "ValveBiped.Bip01_L_Calf",
    "Foot_l": "ValveBiped.Bip01_L_Foot",
    "Toes_l": "ValveBiped.Bip01_L_Toe0",
    
    "UpperLeg_r": "ValveBiped.Bip01_R_Thigh",
    "LowerLeg_r": "ValveBiped.Bip01_R_Calf",
    "Foot_r": "ValveBiped.Bip01_R_Foot",
    "Toes_r": "ValveBiped.Bip01_R_Toe0"
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