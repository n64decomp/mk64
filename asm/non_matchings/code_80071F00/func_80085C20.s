.section .late_rodata

glabel D_800EF3E8
.double -1431.0

.section .text

glabel func_80085C20
/* 086820 80085C20 3C018019 */  lui   $at, %hi(D_8018D01C) # $at, 0x8019
/* 086824 80085C24 C424D01C */  lwc1  $f4, %lo(D_8018D01C)($at)
/* 086828 80085C28 3C01800F */  lui   $at, %hi(D_800EF3E8)
/* 08682C 80085C2C D428F3E8 */  ldc1  $f8, %lo(D_800EF3E8)($at)
/* 086830 80085C30 460021A1 */  cvt.d.s $f6, $f4
/* 086834 80085C34 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 086838 80085C38 46283282 */  mul.d $f10, $f6, $f8
/* 08683C 80085C3C AFBF001C */  sw    $ra, 0x1c($sp)
/* 086840 80085C40 3C06444E */  lui   $a2, (0x444EC000 >> 16) # lui $a2, 0x444e
/* 086844 80085C44 3C07C538 */  lui   $a3, (0xC538D000 >> 16) # lui $a3, 0xc538
/* 086848 80085C48 AFA40020 */  sw    $a0, 0x20($sp)
/* 08684C 80085C4C 34E7D000 */  ori   $a3, (0xC538D000 & 0xFFFF) # ori $a3, $a3, 0xd000
/* 086850 80085C50 34C6C000 */  ori   $a2, (0x444EC000 & 0xFFFF) # ori $a2, $a2, 0xc000
/* 086854 80085C54 46205420 */  cvt.s.d $f16, $f10
/* 086858 80085C58 44058000 */  mfc1  $a1, $f16
/* 08685C 80085C5C 0C022DF5 */  jal   func_8008B7D4
/* 086860 80085C60 00000000 */   nop   
/* 086864 80085C64 3C050600 */  lui   $a1, %hi(d_course_rainbow_road_mushroom_tlut_list) # $a1, 0x600
/* 086868 80085C68 3C060601 */  lui   $a2, %hi(d_course_rainbow_road_neon_mushroom) # $a2, 0x601
/* 08686C 80085C6C 240E0040 */  li    $t6, 64
/* 086870 80085C70 AFAE0010 */  sw    $t6, 0x10($sp)
/* 086874 80085C74 24C68000 */  addiu $a2, %lo(d_course_rainbow_road_neon_mushroom) # addiu $a2, $a2, -0x8000
/* 086878 80085C78 24A55400 */  addiu $a1, %lo(d_course_rainbow_road_mushroom_tlut_list) # addiu $a1, $a1, 0x5400
/* 08687C 80085C7C 8FA40020 */  lw    $a0, 0x20($sp)
/* 086880 80085C80 0C01CD11 */  jal   func_80073444
/* 086884 80085C84 24070040 */   li    $a3, 64
/* 086888 80085C88 0C0216ED */  jal   func_80085BB4
/* 08688C 80085C8C 8FA40020 */   lw    $a0, 0x20($sp)
/* 086890 80085C90 8FBF001C */  lw    $ra, 0x1c($sp)
/* 086894 80085C94 27BD0020 */  addiu $sp, $sp, 0x20
/* 086898 80085C98 03E00008 */  jr    $ra
/* 08689C 80085C9C 00000000 */   nop   
