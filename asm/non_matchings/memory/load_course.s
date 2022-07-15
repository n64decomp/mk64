glabel load_course
/* 113F28 802AA918 00047080 */  sll   $t6, $a0, 2
/* 113F2C 802AA91C 01C47023 */  subu  $t6, $t6, $a0
/* 113F30 802AA920 3C0F802C */  lui   $t7, %hi(gCourseTable) # $t7, 0x802c
/* 113F34 802AA924 25EF8D80 */  addiu $t7, %lo(gCourseTable) # addiu $t7, $t7, -0x7280
/* 113F38 802AA928 000E7100 */  sll   $t6, $t6, 4
/* 113F3C 802AA92C 01CF1021 */  addu  $v0, $t6, $t7
/* 113F40 802AA930 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 113F44 802AA934 3C03800E */  lui   $v1, %hi(gGamestate) # $v1, 0x800e
/* 113F48 802AA938 8C63C50C */  lw    $v1, %lo(gGamestate)($v1)
/* 113F4C 802AA93C 8C580000 */  lw    $t8, ($v0)
/* 113F50 802AA940 8C590004 */  lw    $t9, 4($v0)
/* 113F54 802AA944 8C480008 */  lw    $t0, 8($v0)
/* 113F58 802AA948 8C49000C */  lw    $t1, 0xc($v0)
/* 113F5C 802AA94C 8C4A0028 */  lw    $t2, 0x28($v0)
/* 113F60 802AA950 8C4B0018 */  lw    $t3, 0x18($v0)
/* 113F64 802AA954 8C4C0020 */  lw    $t4, 0x20($v0)
/* 113F68 802AA958 8C4D001C */  lw    $t5, 0x1c($v0)
/* 113F6C 802AA95C 8C4E0024 */  lw    $t6, 0x24($v0)
/* 113F70 802AA960 944F002C */  lhu   $t7, 0x2c($v0)
/* 113F74 802AA964 24010005 */  li    $at, 5
/* 113F78 802AA968 AFBF0014 */  sw    $ra, 0x14($sp)
/* 113F7C 802AA96C 8C460010 */  lw    $a2, 0x10($v0)
/* 113F80 802AA970 8C450014 */  lw    $a1, 0x14($v0)
/* 113F84 802AA974 AFB80048 */  sw    $t8, 0x48($sp)
/* 113F88 802AA978 AFB90044 */  sw    $t9, 0x44($sp)
/* 113F8C 802AA97C AFA80040 */  sw    $t0, 0x40($sp)
/* 113F90 802AA980 AFA9003C */  sw    $t1, 0x3c($sp)
/* 113F94 802AA984 AFAA0030 */  sw    $t2, 0x30($sp)
/* 113F98 802AA988 AFAB002C */  sw    $t3, 0x2c($sp)
/* 113F9C 802AA98C AFAC0028 */  sw    $t4, 0x28($sp)
/* 113FA0 802AA990 AFAD0024 */  sw    $t5, 0x24($sp)
/* 113FA4 802AA994 AFAE0020 */  sw    $t6, 0x20($sp)
/* 113FA8 802AA998 10610004 */  beq   $v1, $at, .L802AA9AC
/* 113FAC 802AA99C AFAF001C */   sw    $t7, 0x1c($sp)
/* 113FB0 802AA9A0 24010009 */  li    $at, 9
/* 113FB4 802AA9A4 14610005 */  bne   $v1, $at, .L802AA9BC
/* 113FB8 802AA9A8 3C198028 */   lui   $t9, (0x8028DF00 >> 16) # lui $t9, 0x8028
.L802AA9AC:
/* 113FBC 802AA9AC 3C188028 */  lui   $t8, 0x8028
/* 113FC0 802AA9B0 3C018016 */  lui   $at, %hi(gHeapEndPtr) # $at, 0x8016
/* 113FC4 802AA9B4 10000004 */  b     .L802AA9C8
/* 113FC8 802AA9B8 AC38F72C */   sw    $t8, %lo(gHeapEndPtr)($at)
.L802AA9BC:
/* 113FCC 802AA9BC 3739DF00 */  ori   $t9, (0x8028DF00 & 0xFFFF) # ori $t9, $t9, 0xdf00
/* 113FD0 802AA9C0 3C018016 */  lui   $at, %hi(gHeapEndPtr) # $at, 0x8016
/* 113FD4 802AA9C4 AC39F72C */  sw    $t9, %lo(gHeapEndPtr)($at)
.L802AA9C8:
/* 113FD8 802AA9C8 0C0A9F5C */  jal   func_802A7D70
/* 113FDC 802AA9CC 00C02025 */   move  $a0, $a2
/* 113FE0 802AA9D0 24040009 */  li    $a0, 9
/* 113FE4 802AA9D4 0C0A9EE5 */  jal   set_segment_base_addr
/* 113FE8 802AA9D8 00402825 */   move  $a1, $v0
/* 113FEC 802AA9DC 3C08800E */  lui   $t0, %hi(gGamestate) # $t0, 0x800e
/* 113FF0 802AA9E0 8D08C50C */  lw    $t0, %lo(gGamestate)($t0)
/* 113FF4 802AA9E4 24010005 */  li    $at, 5
/* 113FF8 802AA9E8 8FA40048 */  lw    $a0, 0x48($sp)
/* 113FFC 802AA9EC 11010006 */  beq   $t0, $at, .L802AAA08
/* 114000 802AA9F0 00000000 */   nop   
/* 114004 802AA9F4 0C0AAA23 */  jal   func_802AA88C
/* 114008 802AA9F8 8FA50044 */   lw    $a1, 0x44($sp)
/* 11400C 802AA9FC 24040006 */  li    $a0, 6
/* 114010 802AAA00 0C0A9EE5 */  jal   set_segment_base_addr
/* 114014 802AAA04 00402825 */   move  $a1, $v0
.L802AAA08:
/* 114018 802AAA08 3C098016 */  lui   $t1, %hi(gPrevLoadedAddress) # $t1, 0x8016
/* 11401C 802AAA0C 8D29F728 */  lw    $t1, %lo(gPrevLoadedAddress)($t1)
/* 114020 802AAA10 8FA40040 */  lw    $a0, 0x40($sp)
/* 114024 802AAA14 8FA5003C */  lw    $a1, 0x3c($sp)
/* 114028 802AAA18 0C0AA0B9 */  jal   func_802A82E4
/* 11402C 802AAA1C AFA90018 */   sw    $t1, 0x18($sp)
/* 114030 802AAA20 AFA2004C */  sw    $v0, 0x4c($sp)
/* 114034 802AAA24 2404000F */  li    $a0, 15
/* 114038 802AAA28 0C0A9EE5 */  jal   set_segment_base_addr
/* 11403C 802AAA2C 00402825 */   move  $a1, $v0
/* 114040 802AAA30 8FA4002C */  lw    $a0, 0x2c($sp)
/* 114044 802AAA34 0C0AA1EA */  jal   func_802A87A8
/* 114048 802AAA38 8FA50024 */   lw    $a1, 0x24($sp)
/* 11404C 802AAA3C 8FA40028 */  lw    $a0, 0x28($sp)
/* 114050 802AAA40 8FA50020 */  lw    $a1, 0x20($sp)
/* 114054 802AAA44 0C0AA6BD */  jal   display_list_unpack
/* 114058 802AAA48 8FA6001C */   lw    $a2, 0x1c($sp)
/* 11405C 802AAA4C 0C0AA9F2 */  jal   func_802AA7C8
/* 114060 802AAA50 8FA40030 */   lw    $a0, 0x30($sp)
/* 114064 802AAA54 8FBF0014 */  lw    $ra, 0x14($sp)
/* 114068 802AAA58 8FAA0018 */  lw    $t2, 0x18($sp)
/* 11406C 802AAA5C 3C018016 */  lui   $at, %hi(gPrevLoadedAddress)
/* 114070 802AAA60 8FA2004C */  lw    $v0, 0x4c($sp)
/* 114074 802AAA64 27BD0060 */  addiu $sp, $sp, 0x60
/* 114078 802AAA68 03E00008 */  jr    $ra
/* 11407C 802AAA6C AC2AF728 */   sw    $t2, %lo(gPrevLoadedAddress)($at)
