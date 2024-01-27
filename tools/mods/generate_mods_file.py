import os
import re

def get_mods_settings(directory = "."):
    return

def get_c_file_list(directory = "."):
    c_file_list = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".c"):
                c_file_list.append(os.path.join(root, file))
    return c_file_list

def generate_file_mods(directory = ".", out="generate_file"):
    if not os.path.isdir(out):
        os.mkdir(out)
    c_file_list = get_c_file_list(directory)
    with open(out+'/vanilla.c', "w") as f:
        for file in c_file_list:
            f.write("#include \""+file+"\"\n")