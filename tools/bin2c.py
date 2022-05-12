#!/usr/bin/env python3
import sys, os, binascii, struct

if (sys.argv[1] == "-h" or sys.argv[1] == "--help" or sys.argv[1] == "help" or sys.argv[1] == "h"):
	print("Usage: ./bin2c.py input.bin output_name")
	print("  Output extension is .inc.c")
	sys.exit(0)

f = open(sys.argv[1],"rb")
fi = open(str(sys.argv[2])+".inc.c", "w")

lineCount = int((os.path.getsize(sys.argv[1]) - 16))

off = "0"
base = off

fB = f.read()
fB = fB[int(off,16):]
off = 0

while True:
	if off >= lineCount+16:
		break
	buf = str(binascii.hexlify(fB[off:off+0x10]))
	buf = buf[2:-1]

	fi.write("0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x},0x{:02x}".format(
			int(buf[0:2],16),
			int(buf[2:4],16),
			int(buf[4:6],16),
			int(buf[6:8],16),
            int(buf[8:10],16),
            int(buf[10:12],16),
            int(buf[12:14],16),
            int(buf[14:16],16),
            int(buf[16:18],16),
            int(buf[18:20],16),
            int(buf[20:22],16),
            int(buf[22:24],16),
            int(buf[24:26],16),
            int(buf[26:28],16),
            int(buf[28:30],16),
            int(buf[30:32],16),
		)
	)

	# Remove final comma
	if (off <= lineCount - 16):
		fi.write(",")
	elif (off >= lineCount -16):
		fi.write("\n")    

	off += 0x10
