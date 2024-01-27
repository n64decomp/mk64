import os

def get_c_file_list(directory = "."):
    c_file_list = []
    for root, dirs, files in os.walk(directory):
        for file in files:
            if file.endswith(".c"):
                c_file_list.append(os.path.join(root, file))
    return c_file_list

def generate_file_vanilla(directory = ".", out="generate_file"):
    print("Generating vanilla file...")
    if not os.path.isdir(out):
        os.mkdir(out)
    c_file_list = get_c_file_list(directory)
    with open(out+'/vanilla.c', "w") as f:
        for file in c_file_list:
            f.write("#include \""+file+"\"\n")
    print("Done!")