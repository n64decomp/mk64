#!/usr/bin/env python3
#
# This utility assumes that all variable names (or at least the last one) in the packed.inc.c
# files contain their respective course name. If this isn't the case this utility will get
# the incorrect offset (or maybe fail entirely)
#

import os
import sys
from elftools.elf.elffile import ELFFile

with open(sys.argv[1], "w") as packed_end_f:

	packed_end_f.write(f"// Generated by {sys.argv[0]}")

	for packed_elf_path in sorted(sys.argv[2:]):
		# This assumes that each packed.inc.c file is in a folder named after the course
		# it belongs to.
		course_name = os.path.dirname(os.path.normpath(packed_elf_path)).split("/")[-1]
		with open(packed_elf_path, "rb") as model_elf, ELFFile(model_elf) as elf:
			symtab = elf.get_section_by_name(".symtab")
			# Sort all symbols by their "value" (address) in reverse order (highest address first)
			# Look for the first symbol whose name contains the course's name. That should
			# be the last variable in the file.
			for symbol in sorted(symtab.iter_symbols(), key = lambda sym: sym.entry['st_value'], reverse = True):
				if course_name in symbol.name:
					end_dl = symbol
					break;

			# Get the last symbol's address, add its size, subtract 8 to walk back
			# to the last DL macro, subtract 0x07000000 to get just the offset.
			# We do all this instead of just taking to .data section's size because the .data
			# section may have extra padding at the end which will mess up the offset
			end = (end_dl.entry['st_value'] + end_dl.entry['st_size']) - 0x07000008
			packed_end_f.write(f"\n#define d_course_{course_name}_packed_end 0x{end:08X}")

	packed_end_f.write("\n")
