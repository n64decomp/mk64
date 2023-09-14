import re
import os

vertex = {} # format: "variable_name": [[x, y, z], [x, y, z], ...]
model = {} # format: "variable_name": [vertex, [face, face, ...]]]

file = open("src/common_textures.inc.c", "r")
file_content = file.read()
file.close()

# Get all vertex data
vertex_data = re.findall(r"Vtx (\w+)\[\] = \{\n((?: +\{\{\{ +[-\d]+, +[-\d]+, +[-\d]+\}.+\n)+)", file_content,)
for vertex_set in vertex_data:
    vertex[vertex_set[0]] = []
    for vertex_ in re.findall(r" +\{\{\{ +([-.\d]+), +([-.\d]+), +([-.\d]+)\},.+\n", vertex_set[1]):
        vertex[vertex_set[0]].append([float(vertex_[0]), float(vertex_[1]), float(vertex_[2])])

model_data = re.findall(r"Gfx (\w+)\[\] = \{\n((?: +g.+\n)+)", file_content)
for model_set in model_data:
    vertex_name = re.findall(r" +gsSPVertex\((\w+),", model_set[1])
    if len(vertex_name) < 1:
        continue
    model[model_set[0]] = [vertex[vertex_name[0]], []]
    for face in re.findall(r" +gsSP1Triangle\(+(\d+), +(\d+), +(\d+), +\d+\),\n", model_set[1]):
        model[model_set[0]][1].append([int(face[0]), int(face[1]), int(face[2])])
    
    for face2 in re.findall(r" +gsSP2Triangles\((\d+), +(\d+), +(\d+), +\d+, +(\d+), +(\d+), +(\d+), +\d+\)", model_set[1]):
        model[model_set[0]][1].append([int(face2[0]), int(face2[1]), int(face2[2])])
        model[model_set[0]][1].append([int(face2[3]), int(face2[4]), int(face2[5])])

    if len(model[model_set[0]][1]) < 1:
        del model[model_set[0]]

# Write to obj file
for model_name, (vertex, faces ) in model.items():
    if not os.path.exists("obj"):
        os.makedirs("obj")
    file = open("obj/" + model_name + ".obj", "w")
    file.write("o " + model_name + "\n")
    for vertex_ in vertex:
        file.write("v " + str(vertex_[0]) + " " + str(vertex_[1]) + " " + str(vertex_[2]) + "\n")
    for face in faces:
        file.write("f " + str(face[0]+1) + " " + str(face[1]+1) + " " + str(face[2]+1) + "\n")
    file.close() 