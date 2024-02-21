import json
import subprocess
import os

if not os.path.exists("objects"):
    os.makedirs("objects")

models = json.load(open("tools/3d_models.json"))

blender = "c:/Program Files/Blender Foundation/Blender 4.0/blender.exe"

args = [
    "--background",
    "--python",
    "tools/blender_extension/blender_export.py",
    "--",
]

for file in models:
    for obj in models[file]:
        if os.path.exists("objects/"+obj+".blend"):
            continue
        print(f"Exporting {obj} from {file}")
        args.append(file)
        args.append(obj)
        if subprocess.run([blender, *args]).returncode != 0 or not os.path.exists("objects/"+obj+".blend"):
            print(f"Failed to export {obj} from {file}")
            exit(1)
        args.pop()
        args.pop()