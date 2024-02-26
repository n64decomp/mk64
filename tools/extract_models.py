import json
import subprocess
import threading
import os
import argparse

parser = argparse.ArgumentParser(description="Extract 3D models from .blend files")
parser.add_argument("-t", "--threads", type=int, default=1, help="Number of threads to use")
args = parser.parse_args()

if not os.path.exists("models"):
    os.makedirs("models")

models = json.load(open("tools/3d_models.json"))

blender = "c:/Program Files/Blender Foundation/Blender 4.0/blender.exe"

args_blender = [
    "--background",
    "--python",
    "tools/blender_extension/blender_export.py",
    "--",
]

failed = []

threads:list[tuple[threading.Thread, str]] = []

for file in models:
    for obj in models[file]:
        if os.path.exists("models/"+obj+".blend"):
            continue
        while len(threads) >= args.threads:
            for i, (thread, out) in enumerate(threads):
                if not thread.is_alive():
                    thread.join()
                    if os.path.exists(out):
                        print(f"Exported {out}")
                    else:
                        print(f"Failed to export {out}")
                        failed.append(out)
                    del threads[i]
                    break
        print(f"Exporting {obj} from {file}")
        args_blender.append(file)
        args_blender.append(obj)
        thread = threading.Thread(target=lambda: subprocess.run([blender]+args_blender))
        thread.start()
        threads.append((
            thread, 
            "models/"+obj+".blend"
        ))
        args_blender.pop()
        args_blender.pop()

for thread, out in threads:
    thread.join()
    if os.path.exists(out):
        print(f"Exported {out}")
    else:
        print(f"Failed to export {out}")
        failed.append(out)

print("Failed to export:")
print("\n".join(failed))
