glabel func_800ABB24
/* 0AC724 800ABB24 3C028019 */  lui   $v0, %hi(gTimeTrialDataCourseIndex) # $v0, 0x8019
/* 0AC728 800ABB28 8042EDF7 */  lb    $v0, %lo(gTimeTrialDataCourseIndex)($v0)
/* 0AC72C 800ABB2C 3C18800E */  lui   $t8, %hi(D_800E7430) # $t8, 0x800e
/* 0AC730 800ABB30 27187430 */  addiu $t8, %lo(D_800E7430) # addiu $t8, $t8, 0x7430
/* 0AC734 800ABB34 04410003 */  bgez  $v0, .L800ABB44
/* 0AC738 800ABB38 00027083 */   sra   $t6, $v0, 2
/* 0AC73C 800ABB3C 24410003 */  addiu $at, $v0, 3
/* 0AC740 800ABB40 00017083 */  sra   $t6, $at, 2
.L800ABB44:
/* 0AC744 800ABB44 000E78C0 */  sll   $t7, $t6, 3
/* 0AC748 800ABB48 01F81821 */  addu  $v1, $t7, $t8
/* 0AC74C 800ABB4C 84790000 */  lh    $t9, ($v1)
/* 0AC750 800ABB50 8C8E001C */  lw    $t6, 0x1c($a0)
/* 0AC754 800ABB54 2728FFFE */  addiu $t0, $t9, -2
/* 0AC758 800ABB58 AC88000C */  sw    $t0, 0xc($a0)
/* 0AC75C 800ABB5C 84690002 */  lh    $t1, 2($v1)
/* 0AC760 800ABB60 04410004 */  bgez  $v0, .L800ABB74
/* 0AC764 800ABB64 304A0003 */   andi  $t2, $v0, 3
/* 0AC768 800ABB68 11400002 */  beqz  $t2, .L800ABB74
/* 0AC76C 800ABB6C 00000000 */   nop   
/* 0AC770 800ABB70 254AFFFC */  addiu $t2, $t2, -4
.L800ABB74:
/* 0AC774 800ABB74 000A5880 */  sll   $t3, $t2, 2
/* 0AC778 800ABB78 016A5823 */  subu  $t3, $t3, $t2
/* 0AC77C 800ABB7C 000B58C0 */  sll   $t3, $t3, 3
/* 0AC780 800ABB80 016A5821 */  addu  $t3, $t3, $t2
/* 0AC784 800ABB84 000B5840 */  sll   $t3, $t3, 1
/* 0AC788 800ABB88 25CF0010 */  addiu $t7, $t6, 0x10
/* 0AC78C 800ABB8C 012B6021 */  addu  $t4, $t1, $t3
/* 0AC790 800ABB90 258D0013 */  addiu $t5, $t4, 0x13
/* 0AC794 800ABB94 29E10100 */  slti  $at, $t7, 0x100
/* 0AC798 800ABB98 AC8D0010 */  sw    $t5, 0x10($a0)
/* 0AC79C 800ABB9C 14200009 */  bnez  $at, .L800ABBC4
/* 0AC7A0 800ABBA0 AC8F001C */   sw    $t7, 0x1c($a0)
/* 0AC7A4 800ABBA4 8C990020 */  lw    $t9, 0x20($a0)
/* 0AC7A8 800ABBA8 24010003 */  li    $at, 3
/* 0AC7AC 800ABBAC 25F8FF00 */  addiu $t8, $t7, -0x100
/* 0AC7B0 800ABBB0 27280001 */  addiu $t0, $t9, 1
/* 0AC7B4 800ABBB4 0101001A */  div   $zero, $t0, $at
/* 0AC7B8 800ABBB8 00005010 */  mfhi  $t2
/* 0AC7BC 800ABBBC AC98001C */  sw    $t8, 0x1c($a0)
/* 0AC7C0 800ABBC0 AC8A0020 */  sw    $t2, 0x20($a0)
.L800ABBC4:
/* 0AC7C4 800ABBC4 03E00008 */  jr    $ra
/* 0AC7C8 800ABBC8 00000000 */   nop   
