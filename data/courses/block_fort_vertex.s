.include "macros.inc"

.section .data

.balign 4
glabel d_course_block_fort_vertex
.incbin "bin/course_block_fort_vertex.mio0"

.balign 4
glabel d_course_block_fort_packed
.incbin "bin/course_block_fort_packed.bin"
