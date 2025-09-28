import bpy

# Define a dictionary of bone name replacements
bone_replacements = {
    "Hips": "ValveBiped.Bip01_Pelvis",
    "Spine": "ValveBiped.Bip01_Spine",
    "Chest": "ValveBiped.Bip01_Spine4",
    "Neck": "ValveBiped.Bip01_Neck1",
    "Head": "ValveBiped.Bip01_Head1",
    
    "Left shoulder": "ValveBiped.Bip01_L_Clavicle",
    "Left arm": "ValveBiped.Bip01_L_UpperArm",
    "Left elbow": "ValveBiped.Bip01_L_Forearm",
    "Left wrist": "ValveBiped.Bip01_L_Hand",
    "Thumb0_L": "ValveBiped.Bip01_L_Finger0",
    "Thumb1_L": "ValveBiped.Bip01_L_Finger01",
    "Thumb2_L": "ValveBiped.Bip01_L_Finger02",
    "IndexFinger1_L": "ValveBiped.Bip01_L_Finger1",
    "IndexFinger2_L": "ValveBiped.Bip01_L_Finger11",
    "IndexFinger3_L": "ValveBiped.Bip01_L_Finger12",
    "MiddleFinger1_L": "ValveBiped.Bip01_L_Finger2",
    "MiddleFinger2_L": "ValveBiped.Bip01_L_Finger21",
    "MiddleFinger3_L": "ValveBiped.Bip01_L_Finger22",
    "RingFinger1_L": "ValveBiped.Bip01_L_Finger3",
    "RingFinger2_L": "ValveBiped.Bip01_L_Finger31",
    "RingFinger3_L": "ValveBiped.Bip01_L_Finger32",
    "LittleFinger1_L": "ValveBiped.Bip01_L_Finger4",
    "LittleFinger2_L": "ValveBiped.Bip01_L_Finger41",
    "LittleFinger3_L": "ValveBiped.Bip01_L_Finger42",
    
    "Right shoulder": "ValveBiped.Bip01_R_Clavicle",
    "Right arm": "ValveBiped.Bip01_R_UpperArm",
    "Right elbow": "ValveBiped.Bip01_R_Forearm",
    "Right wrist": "ValveBiped.Bip01_R_Hand",
    "Thumb0_R": "ValveBiped.Bip01_R_Finger0",
    "Thumb1_R": "ValveBiped.Bip01_R_Finger01",
    "Thumb2_R": "ValveBiped.Bip01_R_Finger02",
    "IndexFinger1_R": "ValveBiped.Bip01_R_Finger1",
    "IndexFinger2_R": "ValveBiped.Bip01_R_Finger11",
    "IndexFinger3_R": "ValveBiped.Bip01_R_Finger12",
    "MiddleFinger1_R": "ValveBiped.Bip01_R_Finger2",
    "MiddleFinger2_R": "ValveBiped.Bip01_R_Finger21",
    "MiddleFinger3_R": "ValveBiped.Bip01_R_Finger22",
    "RingFinger1_R": "ValveBiped.Bip01_R_Finger3",
    "RingFinger2_R": "ValveBiped.Bip01_R_Finger31",
    "RingFinger3_R": "ValveBiped.Bip01_R_Finger32",
    "LittleFinger1_R": "ValveBiped.Bip01_R_Finger4",
    "LittleFinger2_R": "ValveBiped.Bip01_R_Finger41",
    "LittleFinger3_R": "ValveBiped.Bip01_R_Finger42",
    
    "Left leg": "ValveBiped.Bip01_L_Thigh",
    "Left knee": "ValveBiped.Bip01_L_Calf",
    "Left ankle": "ValveBiped.Bip01_L_Foot",
    "Left toe": "ValveBiped.Bip01_L_Toe0",
    
    "Right leg": "ValveBiped.Bip01_R_Thigh",
    "Right knee": "ValveBiped.Bip01_R_Calf",
    "Right ankle": "ValveBiped.Bip01_R_Foot",
    "Right toe": "ValveBiped.Bip01_R_Toe0"
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