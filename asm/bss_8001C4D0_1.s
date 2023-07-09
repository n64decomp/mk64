.include "macros.inc"

.section .bss

glabel D_8018E840
.skip 16

glabel D_8018E850
.skip 4

glabel D_8018E854
.skip 4

glabel D_8018E858
.skip 4

glabel D_8018E85C
.skip 4

glabel gTextColor
.skip 8

glabel gControllerPak1FileHandle
.skip 104

glabel gControllerPak2FileHandle
.skip 104

glabel D_8018E938
.skip 508

glabel D_8018EB34
.skip 4

glabel D_8018EB38
.skip 64

glabel gControllerPak1NumFilesUsed
.skip 4

glabel gControllerPak1MaxWriteableFiles
.skip 4

glabel gControllerPak1NumPagesFree
.skip 4

glabel gControllerPak1FileNote
.skip 4

glabel gControllerPak2FileNo
.skip 8

glabel D_8018EB90
.skip 18

glabel D_8018EBA2
.skip 366

# start of eight byte struct
glabel D_8018ED10
.skip 1

glabel D_8018ED11
.skip 1

glabel D_8018ED12
.skip 1

glabel D_8018ED13
.skip 1

glabel gSaveDataSoundMode
.skip 2

# crc 1
glabel D_8018ED16
.skip 1

# crc 2
glabel D_8018ED17
.skip 55
# end eight byte struct at 8018ED18?

glabel D_8018ED4E
.skip 58

# another save data struct (8 bytes again I hope)
glabel D_8018ED88
.skip 1

glabel D_8018ED89
.skip 1

glabel D_8018ED8A
.skip 1

glabel D_8018ED8B
.skip 1

glabel gSaveDataSoundModeBackup
.skip 2

glabel D_8018ED8E
.skip 1

glabel D_8018ED8F
.skip 1

glabel D_8018ED90
.skip 1
# end backup save data struct

glabel D_8018ED91
.skip 3

glabel D_8018ED94
.skip 4

glabel D_8018ED98
.skip 4

glabel D_8018ED9C
.skip 4

glabel D_8018EDA0
.skip 4

glabel D_8018EDA4
.skip 4

glabel D_8018EDA8
.skip 4

glabel D_8018EDAC
.skip 4
