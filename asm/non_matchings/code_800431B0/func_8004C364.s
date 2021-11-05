glabel func_8004C364
/* 04CF64 8004C364 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04CF68 8004C368 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04CF6C 8004C36C 8C620000 */  lw    $v0, ($v1)
/* 04CF70 8004C370 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04CF74 8004C374 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04CF78 8004C378 244E0008 */  addiu $t6, $v0, 8
/* 04CF7C 8004C37C AFA40020 */  sw    $a0, 0x20($sp)
/* 04CF80 8004C380 AFA50024 */  sw    $a1, 0x24($sp)
/* 04CF84 8004C384 AFA60028 */  sw    $a2, 0x28($sp)
/* 04CF88 8004C388 AC6E0000 */  sw    $t6, ($v1)
/* 04CF8C 8004C38C 3C0F0D01 */  lui   $t7, %hi(D_0D008108) # $t7, 0xd01
/* 04CF90 8004C390 3C0B0600 */  lui   $t3, 0x600
/* 04CF94 8004C394 25EF8108 */  addiu $t7, %lo(D_0D008108) # addiu $t7, $t7, -0x7ef8
/* 04CF98 8004C398 AC4F0004 */  sw    $t7, 4($v0)
/* 04CF9C 8004C39C AC4B0000 */  sw    $t3, ($v0)
/* 04CFA0 8004C3A0 8C620000 */  lw    $v0, ($v1)
/* 04CFA4 8004C3A4 3C190D00 */  lui   $t9, %hi(D_0D007EF8) # $t9, 0xd00
/* 04CFA8 8004C3A8 27397EF8 */  addiu $t9, %lo(D_0D007EF8) # addiu $t9, $t9, 0x7ef8
/* 04CFAC 8004C3AC 24580008 */  addiu $t8, $v0, 8
/* 04CFB0 8004C3B0 AC780000 */  sw    $t8, ($v1)
/* 04CFB4 8004C3B4 AC590004 */  sw    $t9, 4($v0)
/* 04CFB8 8004C3B8 AC4B0000 */  sw    $t3, ($v0)
/* 04CFBC 8004C3BC 8C620000 */  lw    $v0, ($v1)
/* 04CFC0 8004C3C0 3C0DB900 */  lui   $t5, (0xB9000002 >> 16) # lui $t5, 0xb900
/* 04CFC4 8004C3C4 35AD0002 */  ori   $t5, (0xB9000002 & 0xFFFF) # ori $t5, $t5, 2
/* 04CFC8 8004C3C8 244C0008 */  addiu $t4, $v0, 8
/* 04CFCC 8004C3CC AC6C0000 */  sw    $t4, ($v1)
/* 04CFD0 8004C3D0 240E0001 */  li    $t6, 1
/* 04CFD4 8004C3D4 AC4E0004 */  sw    $t6, 4($v0)
/* 04CFD8 8004C3D8 AC4D0000 */  sw    $t5, ($v0)
/* 04CFDC 8004C3DC AFA7002C */  sw    $a3, 0x2c($sp)
/* 04CFE0 8004C3E0 8FA50028 */  lw    $a1, 0x28($sp)
/* 04CFE4 8004C3E4 8FA40030 */  lw    $a0, 0x30($sp)
/* 04CFE8 8004C3E8 0C010F54 */  jal   func_80043D50
/* 04CFEC 8004C3EC 00E03025 */   move  $a2, $a3
/* 04CFF0 8004C3F0 8FA60028 */  lw    $a2, 0x28($sp)
/* 04CFF4 8004C3F4 8FA7002C */  lw    $a3, 0x2c($sp)
/* 04CFF8 8004C3F8 8FAF0020 */  lw    $t7, 0x20($sp)
/* 04CFFC 8004C3FC 8FB90024 */  lw    $t9, 0x24($sp)
/* 04D000 8004C400 0006C042 */  srl   $t8, $a2, 1
/* 04D004 8004C404 00076042 */  srl   $t4, $a3, 1
/* 04D008 8004C408 AFA00010 */  sw    $zero, 0x10($sp)
/* 04D00C 8004C40C 01F82023 */  subu  $a0, $t7, $t8
/* 04D010 8004C410 0C012E5F */  jal   func_8004B97C
/* 04D014 8004C414 032C2823 */   subu  $a1, $t9, $t4
/* 04D018 8004C418 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04D01C 8004C41C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04D020 8004C420 8C620000 */  lw    $v0, ($v1)
/* 04D024 8004C424 3C0F0D00 */  lui   $t7, %hi(D_0D007EB8) # $t7, 0xd00
/* 04D028 8004C428 25EF7EB8 */  addiu $t7, %lo(D_0D007EB8) # addiu $t7, $t7, 0x7eb8
/* 04D02C 8004C42C 244D0008 */  addiu $t5, $v0, 8
/* 04D030 8004C430 AC6D0000 */  sw    $t5, ($v1)
/* 04D034 8004C434 3C0E0600 */  lui   $t6, 0x600
/* 04D038 8004C438 AC4E0000 */  sw    $t6, ($v0)
/* 04D03C 8004C43C AC4F0004 */  sw    $t7, 4($v0)
/* 04D040 8004C440 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04D044 8004C444 27BD0020 */  addiu $sp, $sp, 0x20
/* 04D048 8004C448 03E00008 */  jr    $ra
/* 04D04C 8004C44C 00000000 */   nop   
