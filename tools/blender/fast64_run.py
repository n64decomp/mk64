import sys
import os
import bpy
sys.path.append('tools/blender')
import fast64
fast64.register()
dir_path = os.path.dirname(os.path.realpath(__file__))
dir_path = dir_path.replace("\\", "/")
dir_path = os.path.dirname(dir_path)
dir_path = os.path.dirname(dir_path)

print(dir_path)
bpy.context.scene.gameEditorMode = "MK64"
bpy.context.scene.DLImportName = "d_course_rainbow_road_dl_D8"
bpy.context.scene.DLImportPath = dir_path+"/courses/rainbow_road/course_data.c"
bpy.context.scene.DLImportBasePath = dir_path