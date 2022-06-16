#!/usr/bin/env python3
import os, sys

# ./gfx.py input_file_no_extension startHex
if (sys.argv[1] == "-h" or sys.argv[1] == ""):
    print("How to use: ")
    print("Create copy of .bin named: filename_copy.bin")
    print("./gfx.py input_file_no_extension startHex iterations symbol_name")
    print("iterations are in 0x10")
    sys.exit(0)

# make sure to copy the .bin file and name it: filename_copy.bin

# copy of bin to prevent read/write conflicts between gfxdis and python
# Did it this way without testing. Just assumed there would be conflicts

# startHex no 0x

debug = False

execStr = "./gfxdis.f3dex -f "+sys.argv[1]+".bin -a "

start = int(sys.argv[2], 16)

r = open(sys.argv[1]+"_copy.bin", "rb")
r.seek(start)

bRunIt = True

it = int(sys.argv[3]) * 2 # iterations. *2 for 16 bytes per line
i = 0
calls = 0

offset = int(0)

for i in range(it):
    if bRunIt:
        if (len(sys.argv) > 4): # if symbol_name arg exists
            print("Gfx "+sys.argv[4]+str(hex(offset+start).split('x')[-1].upper())+"[] = ")
            
        os.system(execStr+hex(offset+start))
        if debug:
            print((execStr+hex(offset+start)))
        bRunIt = False
        calls += 1
        
    r.seek(start+offset)
    data = r.read(4).hex().upper()
    if data == "B8000000":
        bRunIt = True
        if debug:
            print("Running next: "+hex(offset+start))
   
    if str(data) == "00000000":
        print("Found no DL command");
        break;
        
    offset += 8

print("Program exited at: "+hex(offset+start))
print("Ran gfxdis "+str(calls)+ " times.")
r.close()