import json
import subprocess
import threading
import os
import argparse

parser = argparse.ArgumentParser(description="Extract 3D models from .blend files")
parser.add_argument("blender", type=str, help="Path to blender executable")
parser.add_argument("-t", "--threads", type=int, default=1, help="Number of threads to use")
args = parser.parse_args()

if not os.path.exists("models"):
    os.makedirs("models")

models:list[dict[str, str|list[str]]] = json.load(open("tools/blender/3d_models.json"))

blender = args.blender

args_blender = [
    "--background",
    "--python",
    "tools/blender/blender_export.py",
    "--",
]

failed = []

class QueueThread:
    def __init__(self, max_threads:int, check):
        self.threads:list[tuple[threading.Thread, str]] = []
        self.max_threads = max_threads
        self.check = check
    def check_available(self):
        while len(self.threads) >= args.threads:
            for i, (thread, out) in enumerate(self.threads):
                if not thread.is_alive():
                    thread.join()
                    if not self.check(out):
                        failed.append(out)
                    del self.threads[i]
                    break
    
    def append(self, thread:threading.Thread, out:str):
        self.check_available()
        self.threads.append((thread, out))
        thread.start()
    
    def finish(self):
        for thread, out in self.threads:
            thread.join()
            if not self.check(out):
                failed.append(out)

queue = QueueThread(args.threads, lambda out: os.path.exists(out))

for model in models:
    file = model["file"]
    out_dir = "models/"+model["out_dir"] if "out_dir" in model else "models"
    if not os.path.exists(out_dir):
        os.makedirs(out_dir)
    for obj in model["models"]:
        out_file = out_dir+"/"+obj+".blend"
        if os.path.exists(out_file):
            continue
        args_blender.append(file)
        args_blender.append(obj)
        args_blender.append(out_file)
        thread = threading.Thread(target=lambda: subprocess.run([blender]+args_blender))
        queue.append(thread, out_file)
        args_blender.pop()
        args_blender.pop()
        args_blender.pop()

queue.finish()

print("Failed to export:")
print("\n".join(failed))
