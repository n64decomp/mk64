
glabel func_8006C294
/* 06CE94 8006C294 27BDFF98 */  addiu $sp, $sp, -0x68
/* 06CE98 8006C298 AFBF0014 */  sw    $ra, 0x14($sp)
/* 06CE9C 8006C29C AFA40068 */  sw    $a0, 0x68($sp)
/* 06CEA0 8006C2A0 AFA60070 */  sw    $a2, 0x70($sp)
/* 06CEA4 8006C2A4 AFA70074 */  sw    $a3, 0x74($sp)
/* 06CEA8 8006C2A8 C4840000 */  lwc1  $f4, ($a0)
/* 06CEAC 8006C2AC 3C0F800E */  lui   $t7, %hi(camera1) # $t7, 0x800e
/* 06CEB0 8006C2B0 8DEFDB40 */  lw    $t7, %lo(camera1)($t7)
/* 06CEB4 8006C2B4 E7A4005C */  swc1  $f4, 0x5c($sp)
/* 06CEB8 8006C2B8 C4860004 */  lwc1  $f6, 4($a0)
/* 06CEBC 8006C2BC 44856000 */  mtc1  $a1, $f12
/* 06CEC0 8006C2C0 27A50054 */  addiu $a1, $sp, 0x54
/* 06CEC4 8006C2C4 E7A60060 */  swc1  $f6, 0x60($sp)
/* 06CEC8 8006C2C8 C4880008 */  lwc1  $f8, 8($a0)
/* 06CECC 8006C2CC A7A00054 */  sh    $zero, 0x54($sp)
/* 06CED0 8006C2D0 44066000 */  mfc1  $a2, $f12
/* 06CED4 8006C2D4 E7A80064 */  swc1  $f8, 0x64($sp)
/* 06CED8 8006C2D8 85F80026 */  lh    $t8, 0x26($t7)
/* 06CEDC 8006C2DC A7A00058 */  sh    $zero, 0x58($sp)
/* 06CEE0 8006C2E0 27A4005C */  addiu $a0, $sp, 0x5c
/* 06CEE4 8006C2E4 0C0194B5 */  jal   func_800652D4
/* 06CEE8 8006C2E8 A7B80056 */   sh    $t8, 0x56($sp)
/* 06CEEC 8006C2EC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06CEF0 8006C2F0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06CEF4 8006C2F4 8C620000 */  lw    $v0, ($v1)
/* 06CEF8 8006C2F8 3C0F0D01 */  lui   $t7, %hi(D_0D008D58) # $t7, 0xd01
/* 06CEFC 8006C2FC 25EF8D58 */  addiu $t7, %lo(D_0D008D58) # addiu $t7, $t7, -0x72a8
/* 06CF00 8006C300 24590008 */  addiu $t9, $v0, 8
/* 06CF04 8006C304 AC790000 */  sw    $t9, ($v1)
/* 06CF08 8006C308 3C0E0600 */  lui   $t6, 0x600
/* 06CF0C 8006C30C AC4E0000 */  sw    $t6, ($v0)
/* 06CF10 8006C310 AC4F0004 */  sw    $t7, 4($v0)
/* 06CF14 8006C314 8C620000 */  lw    $v0, ($v1)
/* 06CF18 8006C318 3C19BA00 */  lui   $t9, (0xBA000E02 >> 16) # lui $t9, 0xba00
/* 06CF1C 8006C31C 37390E02 */  ori   $t9, (0xBA000E02 & 0xFFFF) # ori $t9, $t9, 0xe02
/* 06CF20 8006C320 24580008 */  addiu $t8, $v0, 8
/* 06CF24 8006C324 AC780000 */  sw    $t8, ($v1)
/* 06CF28 8006C328 AC400004 */  sw    $zero, 4($v0)
/* 06CF2C 8006C32C AC590000 */  sw    $t9, ($v0)
/* 06CF30 8006C330 8C620000 */  lw    $v0, ($v1)
/* 06CF34 8006C334 3C0FFD70 */  lui   $t7, 0xfd70
/* 06CF38 8006C338 3C188019 */  lui   $t8, %hi(D_8018D488) # $t8, 0x8019
/* 06CF3C 8006C33C 244E0008 */  addiu $t6, $v0, 8
/* 06CF40 8006C340 AC6E0000 */  sw    $t6, ($v1)
/* 06CF44 8006C344 AC4F0000 */  sw    $t7, ($v0)
/* 06CF48 8006C348 8F18D488 */  lw    $t8, %lo(D_8018D488)($t8)
/* 06CF4C 8006C34C 3C0F0708 */  lui   $t7, (0x07080200 >> 16) # lui $t7, 0x708
/* 06CF50 8006C350 35EF0200 */  ori   $t7, (0x07080200 & 0xFFFF) # ori $t7, $t7, 0x200
/* 06CF54 8006C354 AC580004 */  sw    $t8, 4($v0)
/* 06CF58 8006C358 8C620000 */  lw    $v0, ($v1)
/* 06CF5C 8006C35C 3C0EF570 */  lui   $t6, 0xf570
/* 06CF60 8006C360 24590008 */  addiu $t9, $v0, 8
/* 06CF64 8006C364 AC790000 */  sw    $t9, ($v1)
/* 06CF68 8006C368 AC4F0004 */  sw    $t7, 4($v0)
/* 06CF6C 8006C36C AC4E0000 */  sw    $t6, ($v0)
/* 06CF70 8006C370 8C620000 */  lw    $v0, ($v1)
/* 06CF74 8006C374 3C19E600 */  lui   $t9, 0xe600
/* 06CF78 8006C378 3C0FF300 */  lui   $t7, 0xf300
/* 06CF7C 8006C37C 24580008 */  addiu $t8, $v0, 8
/* 06CF80 8006C380 AC780000 */  sw    $t8, ($v1)
/* 06CF84 8006C384 AC400004 */  sw    $zero, 4($v0)
/* 06CF88 8006C388 AC590000 */  sw    $t9, ($v0)
/* 06CF8C 8006C38C 8C620000 */  lw    $v0, ($v1)
/* 06CF90 8006C390 3C18071F */  lui   $t8, (0x071FF200 >> 16) # lui $t8, 0x71f
/* 06CF94 8006C394 3718F200 */  ori   $t8, (0x071FF200 & 0xFFFF) # ori $t8, $t8, 0xf200
/* 06CF98 8006C398 244E0008 */  addiu $t6, $v0, 8
/* 06CF9C 8006C39C AC6E0000 */  sw    $t6, ($v1)
/* 06CFA0 8006C3A0 AC580004 */  sw    $t8, 4($v0)
/* 06CFA4 8006C3A4 AC4F0000 */  sw    $t7, ($v0)
/* 06CFA8 8006C3A8 8C620000 */  lw    $v0, ($v1)
/* 06CFAC 8006C3AC 3C0EE700 */  lui   $t6, 0xe700
/* 06CFB0 8006C3B0 3C18F568 */  lui   $t8, (0xF5680800 >> 16) # lui $t8, 0xf568
/* 06CFB4 8006C3B4 24590008 */  addiu $t9, $v0, 8
/* 06CFB8 8006C3B8 AC790000 */  sw    $t9, ($v1)
/* 06CFBC 8006C3BC AC400004 */  sw    $zero, 4($v0)
/* 06CFC0 8006C3C0 AC4E0000 */  sw    $t6, ($v0)
/* 06CFC4 8006C3C4 8C620000 */  lw    $v0, ($v1)
/* 06CFC8 8006C3C8 3C0E0008 */  lui   $t6, (0x00080200 >> 16) # lui $t6, 8
/* 06CFCC 8006C3CC 35CE0200 */  ori   $t6, (0x00080200 & 0xFFFF) # ori $t6, $t6, 0x200
/* 06CFD0 8006C3D0 244F0008 */  addiu $t7, $v0, 8
/* 06CFD4 8006C3D4 AC6F0000 */  sw    $t7, ($v1)
/* 06CFD8 8006C3D8 AFA2002C */  sw    $v0, 0x2c($sp)
/* 06CFDC 8006C3DC 37180800 */  ori   $t8, (0xF5680800 & 0xFFFF) # ori $t8, $t8, 0x800
/* 06CFE0 8006C3E0 AC580000 */  sw    $t8, ($v0)
/* 06CFE4 8006C3E4 AC4E0004 */  sw    $t6, 4($v0)
/* 06CFE8 8006C3E8 8C620000 */  lw    $v0, ($v1)
/* 06CFEC 8006C3EC 3C190007 */  lui   $t9, (0x0007C07C >> 16) # lui $t9, 7
/* 06CFF0 8006C3F0 3739C07C */  ori   $t9, (0x0007C07C & 0xFFFF) # ori $t9, $t9, 0xc07c
/* 06CFF4 8006C3F4 244F0008 */  addiu $t7, $v0, 8
/* 06CFF8 8006C3F8 AC6F0000 */  sw    $t7, ($v1)
/* 06CFFC 8006C3FC AFA20028 */  sw    $v0, 0x28($sp)
/* 06D000 8006C400 3C18F200 */  lui   $t8, 0xf200
/* 06D004 8006C404 AC580000 */  sw    $t8, ($v0)
/* 06D008 8006C408 AC590004 */  sw    $t9, 4($v0)
/* 06D00C 8006C40C 8FA60070 */  lw    $a2, 0x70($sp)
/* 06D010 8006C410 87A70076 */  lh    $a3, 0x76($sp)
/* 06D014 8006C414 0006C403 */  sra   $t8, $a2, 0x10
/* 06D018 8006C418 331900FF */  andi  $t9, $t8, 0xff
/* 06D01C 8006C41C 00197400 */  sll   $t6, $t9, 0x10
/* 06D020 8006C420 000E2403 */  sra   $a0, $t6, 0x10
/* 06D024 8006C424 0006CA03 */  sra   $t9, $a2, 8
/* 06D028 8006C428 332E00FF */  andi  $t6, $t9, 0xff
/* 06D02C 8006C42C 000EC400 */  sll   $t8, $t6, 0x10
/* 06D030 8006C430 00182C03 */  sra   $a1, $t8, 0x10
/* 06D034 8006C434 30CE00FF */  andi  $t6, $a2, 0xff
/* 06D038 8006C438 000EC400 */  sll   $t8, $t6, 0x10
/* 06D03C 8006C43C 0C012CD7 */  jal   func_8004B35C
/* 06D040 8006C440 00183403 */   sra   $a2, $t8, 0x10
/* 06D044 8006C444 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 06D048 8006C448 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 06D04C 8006C44C 8C620000 */  lw    $v0, ($v1)
/* 06D050 8006C450 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 06D054 8006C454 3C180050 */  lui   $t8, (0x00504B50 >> 16) # lui $t8, 0x50
/* 06D058 8006C458 244F0008 */  addiu $t7, $v0, 8
/* 06D05C 8006C45C AC6F0000 */  sw    $t7, ($v1)
/* 06D060 8006C460 37184B50 */  ori   $t8, (0x00504B50 & 0xFFFF) # ori $t8, $t8, 0x4b50
/* 06D064 8006C464 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 06D068 8006C468 AC4E0000 */  sw    $t6, ($v0)
/* 06D06C 8006C46C AC580004 */  sw    $t8, 4($v0)
/* 06D070 8006C470 8C620000 */  lw    $v0, ($v1)
/* 06D074 8006C474 3C0E800F */  lui   $t6, %hi(D_800E87C0) # $t6, 0x800f
/* 06D078 8006C478 3C0F0400 */  lui   $t7, (0x0400103F >> 16) # lui $t7, 0x400
/* 06D07C 8006C47C 24590008 */  addiu $t9, $v0, 8
/* 06D080 8006C480 AC790000 */  sw    $t9, ($v1)
/* 06D084 8006C484 35EF103F */  ori   $t7, (0x0400103F & 0xFFFF) # ori $t7, $t7, 0x103f
/* 06D088 8006C488 25CE87C0 */  addiu $t6, %lo(D_800E87C0) # addiu $t6, $t6, -0x7840
/* 06D08C 8006C48C AC4E0004 */  sw    $t6, 4($v0)
/* 06D090 8006C490 AC4F0000 */  sw    $t7, ($v0)
/* 06D094 8006C494 8C620000 */  lw    $v0, ($v1)
/* 06D098 8006C498 3C0F0D01 */  lui   $t7, %hi(D_0D008DA0) # $t7, 0xd01
/* 06D09C 8006C49C 3C078016 */  lui   $a3, %hi(D_80164AF0) # $a3, 0x8016
/* 06D0A0 8006C4A0 24580008 */  addiu $t8, $v0, 8
/* 06D0A4 8006C4A4 AC780000 */  sw    $t8, ($v1)
/* 06D0A8 8006C4A8 25EF8DA0 */  addiu $t7, %lo(D_0D008DA0) # addiu $t7, $t7, -0x7260
/* 06D0AC 8006C4AC 3C190600 */  lui   $t9, 0x600
/* 06D0B0 8006C4B0 24E74AF0 */  addiu $a3, %lo(D_80164AF0) # addiu $a3, $a3, 0x4af0
/* 06D0B4 8006C4B4 AC590000 */  sw    $t9, ($v0)
/* 06D0B8 8006C4B8 AC4F0004 */  sw    $t7, 4($v0)
/* 06D0BC 8006C4BC 84EE0000 */  lh    $t6, ($a3)
/* 06D0C0 8006C4C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 06D0C4 8006C4C4 27BD0068 */  addiu $sp, $sp, 0x68
/* 06D0C8 8006C4C8 25D80001 */  addiu $t8, $t6, 1
/* 06D0CC 8006C4CC 03E00008 */  jr    $ra
/* 06D0D0 8006C4D0 A4F80000 */   sh    $t8, ($a3)