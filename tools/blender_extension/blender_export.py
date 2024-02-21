import bpy
import os
import sys
sys.path.append('tools')
import fast64
from fast64.fast64_internal.f3d.f3d_gbi import get_F3D_GBI
from fast64.fast64_internal.f3d.f3d_material import createF3DMat
from fast64.fast64_internal.f3d.f3d_parser import F3DContext, getImportData, importMeshC

from blender_extension.clean_scene import clean_scene

dir_path = os.path.dirname(os.path.realpath(__file__))
dir_path = dir_path.replace("\\", "/")
dir_path = os.path.dirname(dir_path)
dir_path = os.path.dirname(dir_path)

print(dir_path)

fast64.register()

argv = sys.argv
argv = argv[argv.index("--") + 1:]  # get all args after "--"

bpy.context.scene.f3d_type = "F3DEX/LX"
basePath = bpy.path.abspath(dir_path)
scaleValue = bpy.context.scene.blenderF3DScale
removeDoubles = bpy.context.scene.DLRemoveDoubles
importNormals = bpy.context.scene.DLImportNormals
drawLayer = bpy.context.scene.DLImportDrawLayer

file = argv[0]
obj = argv[1]

clean_scene()
if bpy.context.mode != "OBJECT":
    bpy.ops.object.mode_set(mode="OBJECT")

importPath = bpy.path.abspath(dir_path+"/"+file)

data = getImportData([importPath])

importMeshC(
    data,
    obj,
    scaleValue,
    removeDoubles,
    importNormals,
    drawLayer,
    F3DContext(get_F3D_GBI(), basePath, createF3DMat(None)),
)
bpy.ops.wm.save_as_mainfile(filepath="objects/"+obj+".blend")