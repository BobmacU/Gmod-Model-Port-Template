import bpy

# Define a dictionary of bone name replacements
bone_replacements = {
    "Hips": "ValveBiped.Bip01_Pelvis",
    "Spine": "ValveBiped.Bip01_Spine",
    "Chest": "ValveBiped.Bip01_Spine4",
    "Neck": "ValveBiped.Bip01_Neck1",
    "Head": "ValveBiped.Bip01_Head1",
    
    "Shoulder.L": "ValveBiped.Bip01_L_Clavicle",
    "Upper_arm.L": "ValveBiped.Bip01_L_UpperArm",
    "Lower_arm.L": "ValveBiped.Bip01_L_Forearm",
    "Hand.L": "ValveBiped.Bip01_L_Hand",
    "Thumb Proximal.L": "ValveBiped.Bip01_L_Finger0",
    "Thumb Intermediate.L": "ValveBiped.Bip01_L_Finger01",
    "Thumb Distal.L": "ValveBiped.Bip01_L_Finger02",
    "Index Proximal.L": "ValveBiped.Bip01_L_Finger1",
    "Index Intermediate.L": "ValveBiped.Bip01_L_Finger11",
    "Index Distal.L": "ValveBiped.Bip01_L_Finger12",
    "Middle Proximal.L": "ValveBiped.Bip01_L_Finger2",
    "Middle Intermediate.L": "ValveBiped.Bip01_L_Finger21",
    "Middle Distal.L": "ValveBiped.Bip01_L_Finger22",
    "Ring Proximal.L": "ValveBiped.Bip01_L_Finger3",
    "Ring Intermediate.L": "ValveBiped.Bip01_L_Finger31",
    "Ring Distal.L": "ValveBiped.Bip01_L_Finger32",
    "Little Proximal.L": "ValveBiped.Bip01_L_Finger4",
    "Little Intermediate.L": "ValveBiped.Bip01_L_Finger41",
    "Little Distal.L": "ValveBiped.Bip01_L_Finger42",
    
    "Shoulder.R": "ValveBiped.Bip01_R_Clavicle",
    "Upper_arm.R": "ValveBiped.Bip01_R_UpperArm",
    "Lower_arm.R": "ValveBiped.Bip01_R_Forearm",
    "Hand.R": "ValveBiped.Bip01_R_Hand",
    "Thumb Proximal.R": "ValveBiped.Bip01_R_Finger0",
    "Thumb Intermediate.R": "ValveBiped.Bip01_R_Finger01",
    "Thumb Distal.R": "ValveBiped.Bip01_R_Finger02",
    "Index Proximal.R": "ValveBiped.Bip01_R_Finger1",
    "Index Intermediate.R": "ValveBiped.Bip01_R_Finger11",
    "Index Distal.R": "ValveBiped.Bip01_R_Finger12",
    "Middle Proximal.R": "ValveBiped.Bip01_R_Finger2",
    "Middle Intermediate.R": "ValveBiped.Bip01_R_Finger21",
    "Middle Distal.R": "ValveBiped.Bip01_R_Finger22",
    "Ring Proximal.R": "ValveBiped.Bip01_R_Finger3",
    "Ring Intermediate.R": "ValveBiped.Bip01_R_Finger31",
    "Ring Distal.R": "ValveBiped.Bip01_R_Finger32",
    "Little Proximal.R": "ValveBiped.Bip01_R_Finger4",
    "Little Intermediate.R": "ValveBiped.Bip01_R_Finger41",
    "Little Distal.R": "ValveBiped.Bip01_R_Finger42",
    
    "Upper_leg.L": "ValveBiped.Bip01_L_Thigh",
    "Lower_leg.L": "ValveBiped.Bip01_L_Calf",
    "Foot.L": "ValveBiped.Bip01_L_Foot",
    "Toe.L": "ValveBiped.Bip01_L_Toe0",
    
    "Upper_leg.R": "ValveBiped.Bip01_R_Thigh",
    "Lower_leg.R": "ValveBiped.Bip01_R_Calf",
    "Foot.R": "ValveBiped.Bip01_R_Foot",
    "Toe.R": "ValveBiped.Bip01_R_Toe0"
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