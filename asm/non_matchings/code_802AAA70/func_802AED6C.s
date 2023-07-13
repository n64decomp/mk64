glabel func_802AED6C
/* 11837C 802AED6C 00047602 */  srl   $t6, $a0, 0x18
/* 118380 802AED70 000E7880 */  sll   $t7, $t6, 2
/* 118384 802AED74 3C188015 */  lui   $t8, %hi(gSegmentTable)
/* 118388 802AED78 030FC021 */  addu  $t8, $t8, $t7
/* 11838C 802AED7C 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 118390 802AED80 8F180258 */  lw    $t8, %lo(gSegmentTable)($t8)
/* 118394 802AED84 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 118398 802AED88 0081C824 */  and   $t9, $a0, $at
/* 11839C 802AED8C 3C018000 */  lui   $at, 0x8000
/* 1183A0 802AED90 03191021 */  addu  $v0, $t8, $t9
/* 1183A4 802AED94 00411021 */  addu  $v0, $v0, $at
/* 1183A8 802AED98 10A0001E */  beqz  $a1, .L802AEE14
/* 1183AC 802AED9C 00001825 */   move  $v1, $zero
/* 1183B0 802AEDA0 30A80003 */  andi  $t0, $a1, 3
/* 1183B4 802AEDA4 1100000C */  beqz  $t0, .L802AEDD8
/* 1183B8 802AEDA8 01003825 */   move  $a3, $t0
/* 1183BC 802AEDAC 3C0A8016 */  lui   $t2, %hi(D_8015F668) # $t2, 0x8016
/* 1183C0 802AEDB0 254AF668 */  addiu $t2, %lo(D_8015F668) # addiu $t2, $t2, -0x998
/* 1183C4 802AEDB4 00064880 */  sll   $t1, $a2, 2
/* 1183C8 802AEDB8 012A2021 */  addu  $a0, $t1, $t2
.L802AEDBC:
/* 1183CC 802AEDBC AC820000 */  sw    $v0, ($a0)
/* 1183D0 802AEDC0 24630001 */  addiu $v1, $v1, 1
/* 1183D4 802AEDC4 24420010 */  addiu $v0, $v0, 0x10
/* 1183D8 802AEDC8 24C60001 */  addiu $a2, $a2, 1
/* 1183DC 802AEDCC 14E3FFFB */  bne   $a3, $v1, .L802AEDBC
/* 1183E0 802AEDD0 24840004 */   addiu $a0, $a0, 4
/* 1183E4 802AEDD4 1065000F */  beq   $v1, $a1, .L802AEE14
.L802AEDD8:
/* 1183E8 802AEDD8 3C0C8016 */   lui   $t4, %hi(D_8015F668) # $t4, 0x8016
/* 1183EC 802AEDDC 258CF668 */  addiu $t4, %lo(D_8015F668) # addiu $t4, $t4, -0x998
/* 1183F0 802AEDE0 00065880 */  sll   $t3, $a2, 2
/* 1183F4 802AEDE4 016C2021 */  addu  $a0, $t3, $t4
.L802AEDE8:
/* 1183F8 802AEDE8 AC820000 */  sw    $v0, ($a0)
/* 1183FC 802AEDEC 24420010 */  addiu $v0, $v0, 0x10
/* 118400 802AEDF0 AC820004 */  sw    $v0, 4($a0)
/* 118404 802AEDF4 24420010 */  addiu $v0, $v0, 0x10
/* 118408 802AEDF8 AC820008 */  sw    $v0, 8($a0)
/* 11840C 802AEDFC 24420010 */  addiu $v0, $v0, 0x10
/* 118410 802AEE00 AC82000C */  sw    $v0, 0xc($a0)
/* 118414 802AEE04 24630004 */  addiu $v1, $v1, 4
/* 118418 802AEE08 24420010 */  addiu $v0, $v0, 0x10
/* 11841C 802AEE0C 1465FFF6 */  bne   $v1, $a1, .L802AEDE8
/* 118420 802AEE10 24840010 */   addiu $a0, $a0, 0x10
.L802AEE14:
/* 118424 802AEE14 03E00008 */  jr    $ra
/* 118428 802AEE18 00000000 */   nop   
