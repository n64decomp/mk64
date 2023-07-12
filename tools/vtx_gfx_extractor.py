#!/usr/bin/env python3

import sys
import struct
import tempfile
import subprocess
import ctypes

# libmio0.so has to compiled be like so:
# gcc -o libmio0.so libmio0.c -shared -fPIC
_mio0_decode = ctypes.CDLL("tools/libmio0.so")
_mio0_decode.mio0_decode.argtypes = (ctypes.POINTER(ctypes.c_ubyte), ctypes.POINTER(ctypes.c_ubyte), ctypes.POINTER(ctypes.c_int))

def mio0_decode(baserom_bytes, offset):
	global _mio0_decode
	mio0_struct = struct.Struct(">IIII")
	mio0_header = mio0_struct.unpack_from(baserom_bytes, offset)
	# if mio0[0].decode("utf-8") != "MIO0":
	# 	raise someError

	# this is comically oversized, but it matches what's done in libmio0
	bytes_to_decode = baserom_bytes[offset:]
	compressed_size = len(bytes_to_decode)
	compressed_array = ctypes.c_ubyte * compressed_size

	decompressed_array = ctypes.c_ubyte * mio0_header[1]
	decompressed_bytes = decompressed_array()
	num_bytes_decoded = _mio0_decode.mio0_decode(compressed_array(*bytes_to_decode), decompressed_bytes, None)
	# if num_bytes_decoded != mio0_header[1]:
	# 	raise someError
	return bytes(decompressed_bytes)

vtx_format = "{{{{{{ {0}, {1}, {2}, }}, {3}, {{ {4}, {5} }}, {{ 0x{6:02x}, 0x{7:02x}, 0x{8:02x}, 0x{9:02x} }}}}}},"
vtx_prefix = "d_course_mario_raceway_vtx"
vtx_struct = struct.Struct(">hhhhhhBBBB")

gfx_prefix = "d_course_mario_raceway_dl"
gfx_hex_format = "{0:08x} {1:08x}"
gfx_struct = struct.Struct(">II")

baserom_name = sys.argv[1]

with open(baserom_name, "rb") as baserom:
	baserom_bytes = baserom.read()

mio_bytes = mio0_decode(baserom_bytes, 0x8284D0)

# temp_mi0 = tempfile.NamedTemporaryFile()

# subprocess.run(
# 	[
#         "./tools/mio0",
#         "-d",
#         "-o", "0x8284D0", # How this offset is stored/read can be decided later
#         baserom_name,
#         temp_mi0.name,
# 	],
# 	check=True
# )

# with open(temp_mi0.name, "rb") as mio0:
# 	mio_bytes = mio0.read()

# Alternatively, each "content" provides its specific offset in the decompressed data
# Then we don't have to track this offset at all
offset = 0x6950
# How the types and sizes are stored/read by the utility can be decied later
contents = [
	("vtx", 4),
	("gfx", 19),
	("vtx", 4),
	("gfx", 20),
]

for thing in contents:
	if thing[0] == "gfx":
		length = gfx_struct.size*thing[1]

		# This could potentially be re-written to pull commands one-at-a-time until a gsSPEndDisplayList (b8000000) is found
		# Then the "gfx" type wouldn't need to have a pre-defined length
		commands = " ".join([gfx_hex_format.format(*command) for command in gfx_struct.iter_unpack(mio_bytes[offset:offset + length])])

		gfx_out = subprocess.run(
			f"/opt/n64/bin/gfxdis.f3dex -x -d {commands}",
			shell=True,
			check=True,
			capture_output=True
		)

		print(f"Gfx *{gfx_prefix}_06{offset:06X}[] = {gfx_out.stdout.decode('utf-8').rstrip()};")

	elif thing[0] == "vtx":
		length = vtx_struct.size*thing[1]

		print(f"Vtx {vtx_prefix}_06{offset:06X}[] = {{")
		for vtx in [vtx_format.format(*vtx) for vtx in vtx_struct.iter_unpack(mio_bytes[offset:offset + length])]:
			print(f"    {vtx}")
		print("};")
	print()
	offset += length
