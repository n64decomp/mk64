#!/usr/bin/env python3
# This utility assumes that name of the vertex array has this format:
#   `d_course_{course_name}_vertex`
# If it doesn't this utility will not work properly
#

import os
import sys
from elftools.elf.elffile import ELFFile

# If the size of the mk64_Vtx struct changes this will need to be udpated
mk64vtx_size = 14

with open(sys.argv[1], "w") as vtx_count_f:

	vtx_count_f.write(f"// Generated by {sys.argv[0]}")

	for model_elf_path in sorted(sys.argv[2:]):
		course_name = os.path.dirname(os.path.normpath(model_elf_path)).split("/")[-1]
		with open(model_elf_path, "rb") as model_elf, ELFFile(model_elf) as elf:
			symtab = elf.get_section_by_name(".symtab")
			sym = symtab.get_symbol_by_name(f"d_course_{course_name}_vertex")[0]
			# Has to be the symbol's size rather than the .data section's size.
			# This is because the .data section may(will) have extra padding which could lead to an off-by-one error
			vtx_count_f.write(f"\n#define d_course_{course_name}_vertex_count 0x{sym.entry['st_size']//mk64vtx_size:08X}")

	vtx_count_f.write("\n")
