glabel func_802AF8BC
/* 118ECC 802AF8BC 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 118ED0 802AF8C0 00047E02 */  srl   $t7, $a0, 0x18
/* 118ED4 802AF8C4 000FC080 */  sll   $t8, $t7, 2
/* 118ED8 802AF8C8 3C198015 */  lui   $t9, %hi(gSegmentTable)
/* 118EDC 802AF8CC 0338C821 */  addu  $t9, $t9, $t8
/* 118EE0 802AF8D0 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 118EE4 802AF8D4 8F390258 */  lw    $t9, %lo(gSegmentTable)($t9)
/* 118EE8 802AF8D8 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 118EEC 802AF8DC AFB1002C */  sw    $s1, 0x2c($sp)
/* 118EF0 802AF8E0 00814024 */  and   $t0, $a0, $at
/* 118EF4 802AF8E4 00058E00 */  sll   $s1, $a1, 0x18
/* 118EF8 802AF8E8 AFB00028 */  sw    $s0, 0x28($sp)
/* 118EFC 802AF8EC 00117603 */  sra   $t6, $s1, 0x18
/* 118F00 802AF8F0 AFBE0048 */  sw    $fp, 0x48($sp)
/* 118F04 802AF8F4 AFB70044 */  sw    $s7, 0x44($sp)
/* 118F08 802AF8F8 AFB60040 */  sw    $s6, 0x40($sp)
/* 118F0C 802AF8FC AFB5003C */  sw    $s5, 0x3c($sp)
/* 118F10 802AF900 AFB40038 */  sw    $s4, 0x38($sp)
/* 118F14 802AF904 AFB30034 */  sw    $s3, 0x34($sp)
/* 118F18 802AF908 AFB20030 */  sw    $s2, 0x30($sp)
/* 118F1C 802AF90C 3C018000 */  lui   $at, 0x8000
/* 118F20 802AF910 03288021 */  addu  $s0, $t9, $t0
/* 118F24 802AF914 30D200FF */  andi  $s2, $a2, 0xff
/* 118F28 802AF918 30F300FF */  andi  $s3, $a3, 0xff
/* 118F2C 802AF91C 01C08825 */  move  $s1, $t6
/* 118F30 802AF920 AFBF004C */  sw    $ra, 0x4c($sp)
/* 118F34 802AF924 AFA50054 */  sw    $a1, 0x54($sp)
/* 118F38 802AF928 AFA60058 */  sw    $a2, 0x58($sp)
/* 118F3C 802AF92C AFA7005C */  sw    $a3, 0x5c($sp)
/* 118F40 802AF930 02018021 */  addu  $s0, $s0, $at
/* 118F44 802AF934 93B40063 */  lbu   $s4, 0x63($sp)
/* 118F48 802AF938 3C15B800 */  lui   $s5, 0xb800
/* 118F4C 802AF93C 3C16FF00 */  lui   $s6, 0xff00
/* 118F50 802AF940 3C170600 */  lui   $s7, 0x600
/* 118F54 802AF944 3C1E0400 */  lui   $fp, 0x400
.L802AF948:
/* 118F58 802AF948 8E020000 */  lw    $v0, ($s0)
/* 118F5C 802AF94C 00112E00 */  sll   $a1, $s1, 0x18
/* 118F60 802AF950 8E040004 */  lw    $a0, 4($s0)
/* 118F64 802AF954 00561824 */  and   $v1, $v0, $s6
/* 118F68 802AF958 12A30019 */  beq   $s5, $v1, .L802AF9C0
/* 118F6C 802AF95C 00054E03 */   sra   $t1, $a1, 0x18
/* 118F70 802AF960 14770007 */  bne   $v1, $s7, .L802AF980
/* 118F74 802AF964 01202825 */   move  $a1, $t1
/* 118F78 802AF968 324600FF */  andi  $a2, $s2, 0xff
/* 118F7C 802AF96C 326700FF */  andi  $a3, $s3, 0xff
/* 118F80 802AF970 0C0ABE2F */  jal   func_802AF8BC
/* 118F84 802AF974 AFB40010 */   sw    $s4, 0x10($sp)
/* 118F88 802AF978 1000FFF3 */  b     .L802AF948
/* 118F8C 802AF97C 26100008 */   addiu $s0, $s0, 8
.L802AF980:
/* 118F90 802AF980 147E000D */  bne   $v1, $fp, .L802AF9B8
/* 118F94 802AF984 00022A82 */   srl   $a1, $v0, 0xa
/* 118F98 802AF988 00023402 */  srl   $a2, $v0, 0x10
/* 118F9C 802AF98C 00113E00 */  sll   $a3, $s1, 0x18
/* 118FA0 802AF990 00076E03 */  sra   $t5, $a3, 0x18
/* 118FA4 802AF994 30CB00FF */  andi  $t3, $a2, 0xff
/* 118FA8 802AF998 30AA003F */  andi  $t2, $a1, 0x3f
/* 118FAC 802AF99C 01402825 */  move  $a1, $t2
/* 118FB0 802AF9A0 000B3042 */  srl   $a2, $t3, 1
/* 118FB4 802AF9A4 01A03825 */  move  $a3, $t5
/* 118FB8 802AF9A8 AFB20010 */  sw    $s2, 0x10($sp)
/* 118FBC 802AF9AC AFB30014 */  sw    $s3, 0x14($sp)
/* 118FC0 802AF9B0 0C0ABE0F */  jal   func_802AF83C
/* 118FC4 802AF9B4 AFB40018 */   sw    $s4, 0x18($sp)
.L802AF9B8:
/* 118FC8 802AF9B8 1000FFE3 */  b     .L802AF948
/* 118FCC 802AF9BC 26100008 */   addiu $s0, $s0, 8
.L802AF9C0:
/* 118FD0 802AF9C0 8FBF004C */  lw    $ra, 0x4c($sp)
/* 118FD4 802AF9C4 8FB00028 */  lw    $s0, 0x28($sp)
/* 118FD8 802AF9C8 8FB1002C */  lw    $s1, 0x2c($sp)
/* 118FDC 802AF9CC 8FB20030 */  lw    $s2, 0x30($sp)
/* 118FE0 802AF9D0 8FB30034 */  lw    $s3, 0x34($sp)
/* 118FE4 802AF9D4 8FB40038 */  lw    $s4, 0x38($sp)
/* 118FE8 802AF9D8 8FB5003C */  lw    $s5, 0x3c($sp)
/* 118FEC 802AF9DC 8FB60040 */  lw    $s6, 0x40($sp)
/* 118FF0 802AF9E0 8FB70044 */  lw    $s7, 0x44($sp)
/* 118FF4 802AF9E4 8FBE0048 */  lw    $fp, 0x48($sp)
/* 118FF8 802AF9E8 03E00008 */  jr    $ra
/* 118FFC 802AF9EC 27BD0050 */   addiu $sp, $sp, 0x50
