glabel func_80012190
/* 012D90 80012190 3C040600 */  lui   $a0, %hi(d_frappe_snowland_tree) # $a0, 0x600
/* 012D94 80012194 24847520 */  addiu $a0, %lo(d_frappe_snowland_tree) # addiu $a0, $a0, 0x7520
/* 012D98 80012198 00047602 */  srl   $t6, $a0, 0x18
/* 012D9C 8001219C 000E7880 */  sll   $t7, $t6, 2
/* 012DA0 800121A0 3C188015 */  lui   $t8, %hi(gSegmentTable) # 0x8015
/* 012DA4 800121A4 030FC021 */  addu  $t8, $t8, $t7
/* 012DA8 800121A8 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 012DAC 800121AC 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8) # 0x258($t8)
/* 012DB0 800121B0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 012DB4 800121B4 0081C824 */  and   $t9, $a0, $at
/* 012DB8 800121B8 3C018000 */  lui   $at, 0x8000
/* 012DBC 800121BC 03192821 */  addu  $a1, $t8, $t9
/* 012DC0 800121C0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 012DC4 800121C4 00A12821 */  addu  $a1, $a1, $at
/* 012DC8 800121C8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 012DCC 800121CC 00A01025 */  move  $v0, $a1
/* 012DD0 800121D0 34048000 */  li    $a0, 32768
/* 012DD4 800121D4 00001825 */  move  $v1, $zero
.L800121D8:
/* 012DD8 800121D8 94480000 */  lhu   $t0, ($v0)
/* 012DDC 800121DC 24420008 */  addiu $v0, $v0, 8
/* 012DE0 800121E0 10880003 */  beq   $a0, $t0, .L800121F0
/* 012DE4 800121E4 00000000 */   nop
/* 012DE8 800121E8 1000FFFB */  b     .L800121D8
/* 012DEC 800121EC 24630001 */   addiu $v1, $v1, 1
.L800121F0:
/* 012DF0 800121F0 3C048016 */  lui   $a0, %hi(D_80163598) # $a0, 0x8016
/* 012DF4 800121F4 8C843598 */  lw    $a0, %lo(D_80163598)($a0)
/* 012DF8 800121F8 0C0045A3 */  jal   func_8001168C
/* 012DFC 800121FC 2466FFFF */   addiu $a2, $v1, -1
/* 012E00 80012200 8FBF0014 */  lw    $ra, 0x14($sp)
/* 012E04 80012204 3C018016 */  lui   $at, %hi(D_8016359C) # $at, 0x8016
/* 012E08 80012208 AC22359C */  sw    $v0, %lo(D_8016359C)($at)
/* 012E0C 8001220C 3C018016 */  lui   $at, %hi(D_80162EB2) # $at, 0x8016
/* 012E10 80012210 2409FFD8 */  li    $t1, -40
/* 012E14 80012214 A4292EB2 */  sh    $t1, %lo(D_80162EB2)($at)
/* 012E18 80012218 03E00008 */  jr    $ra
/* 012E1C 8001221C 27BD0018 */   addiu $sp, $sp, 0x18
