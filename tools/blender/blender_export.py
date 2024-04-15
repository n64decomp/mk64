import bpy
import os
import sys

sys.path.append('tools/blender')
import fast64
from fast64.fast64_internal.f3d.f3d_gbi import get_F3D_GBI
from fast64.fast64_internal.f3d.f3d_material import createF3DMat
from fast64.fast64_internal.f3d.f3d_parser import F3DContext, getImportData, importMeshC
from fast64.fast64_internal.mk64.f3d_course_parser import MK64F3DContext, parseCourseVtx

from clean_scene import clean_scene

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
out_file = argv[2]

clean_scene()
if bpy.context.mode != "OBJECT":
    bpy.ops.object.mode_set(mode="OBJECT")

importPath = bpy.path.abspath(dir_path+"/"+file)

paths = [importPath]
if "segment" in out_file:

    if "course_data" in importPath:
        paths += [importPath.replace("course_data", "course_displaylists.inc")]

    paths += [
        importPath.replace("course_data", "course_textures.linkonly").replace(
            "course_displaylists.inc", "course_textures.linkonly"
        )
    ]

    material = createF3DMat(None)

    # material.f3d_mat.rdp_settings.set_rendermode = context.scene.fast64.mk64.EnableRenderModeDefault

    f3d_context = MK64F3DContext(get_F3D_GBI(), basePath, material)
    if "course_displaylists" in importPath or "course_data" in importPath:
        vertexPath = importPath.replace("course_displaylists.inc", "course_vertices.inc").replace(
            "course_data", "course_vertices.inc"
        )
        print(vertexPath)
        f3d_context.vertexData["0x4000000"] = parseCourseVtx(vertexPath, f3d_context.f3d)

else:
    f3d_context = F3DContext(get_F3D_GBI(), basePath, createF3DMat(None))

data = getImportData(paths)

importMeshC(
    data,
    obj,
    scaleValue,
    removeDoubles,
    importNormals,
    drawLayer,
    f3d_context,
)
bpy.ops.wm.save_as_mainfile(filepath=out_file)