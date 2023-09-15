import os
import re
import argparse

parser = argparse.ArgumentParser(description='Actualise type in C code')
parser.add_argument('-k', '--know_the_unknow', action='store_true', help='replace ? by type if is found somewhere')
parser.add_argument('-cv', "--change_var_name", action='store_true', help='change var name')
parser.add_argument("-cf", "--change_type_var", action='store_true', help="change type of var")

arg = parser.parse_args()

root = "."

var:dict[str,str] = {}
number_type_var = {}
ban_type = [
    "extern", 
    "struct", 
    "static", 
    "UNUSED", 
    "?", 
    "include", 
    "const", 
    "case", 
    "ALIGNED8", 
    "typedef"
]
static = {}

def check_file_and_folder(path:str, name:str) -> bool:
    if not (name.endswith(".c") or name.endswith(".h")):
        return True
    
    if "tools" in path:
        return True
    
    return False

def replace_type(var_name: str, var_type: str, chn: str) -> str:
    if var_name in chn:
        result = re.sub(rf"(?!   )\w+ {var_name}", f"{var_type} {var_name}", chn)
        result = re.sub(rf"(?!   )\? {var_name}", f"{var_type} {var_name}", chn)
    else:
        result = chn
    return result

def find_type(prefix = ""):
    for path, subdirs, files in os.walk(root):
        for name in files:
            if check_file_and_folder(path, name):
                continue

            print(os.path.join(path, name))

            with open(os.path.join(path, name)) as f:
                data = f.read()

                if prefix=="":
                    result = re.findall(r'\n(\w+) (\w+)', data)
                else:
                    result = re.findall(r'\n'+prefix+r' (\w+) (\w+)', data)
                
                for i in result:

                    if i[1] == "//" or (i[0] in ban_type) or len(i[1])<1:
                        continue
                    
                    var[i[1]] = i[0]

                    if i[0] in number_type_var:
                        number_type_var[i[0]] += 1
                    else:
                        number_type_var[i[0]] = 1

def know_the_unknow():
    find_type()

    find_type("static")

    find_type("const")

    find_type("struct")

    find_type("extern")

    print(var)

    for path, subdirs, files in os.walk(root):
        for name in files:
            if check_file_and_folder(path, name):
                continue
            
            print(os.path.join(path, name))
            with open(os.path.join(path, name), "r+") as f:
                data = f.read()
                for i in var:
                    data = replace_type(i, var[i], data)
                
                f.seek(0)
                f.write(data)

def change_var_name():

    old_name = input("Old name: ")
    new_name = input("New name: ")

    for path, subdirs, files in os.walk(root):
        for name in files:
            if check_file_and_folder(path, name):
                continue
            
            print(os.path.join(path, name))
            with open(os.path.join(path, name), "r+") as f:
                data = f.read()
                data = data.replace(old_name, new_name)
                
                f.seek(0)
                f.write(data)

def change_type_var():
    name_var = input("Name var: ")
    new_type = input("New type: ")

    for path, subdirs, files in os.walk(root):
        for name in files:
            if check_file_and_folder(path, name):
                continue
            
            print(os.path.join(path, name))
            with open(os.path.join(path, name), "r+") as f:
                data = f.read()
                data = replace_type(name_var, new_type, data)
                
                f.seek(0)
                f.write(data)

def main():
    if arg.know_the_unknow:
        print("actualise type")
        know_the_unknow()
    elif arg.change_var_name:
        change_var_name()
    elif arg.change_type_var:
        change_type_var()

if __name__ == "__main__":
    main()