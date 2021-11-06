glabel func_800CAACC
/* 0CB6CC 800CAACC 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0CB6D0 800CAAD0 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0CB6D4 800CAAD4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CB6D8 800CAAD8 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CB6DC 800CAADC 03A0F025 */  move  $fp, $sp
/* 0CB6E0 800CAAE0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CB6E4 800CAAE4 AFA40030 */  sw    $a0, 0x30($sp)
/* 0CB6E8 800CAAE8 15C00013 */  bnez  $t6, .L800CAB38
/* 0CB6EC 800CAAEC 308600FF */   andi  $a2, $a0, 0xff
/* 0CB6F0 800CAAF0 000678C0 */  sll   $t7, $a2, 3
/* 0CB6F4 800CAAF4 01E67823 */  subu  $t7, $t7, $a2
/* 0CB6F8 800CAAF8 000F7900 */  sll   $t7, $t7, 4
/* 0CB6FC 800CAAFC 01E67823 */  subu  $t7, $t7, $a2
/* 0CB700 800CAB00 000F7880 */  sll   $t7, $t7, 2
/* 0CB704 800CAB04 01E67823 */  subu  $t7, $t7, $a2
/* 0CB708 800CAB08 000F78C0 */  sll   $t7, $t7, 3
/* 0CB70C 800CAB0C 3C19800F */  lui   $t9, %hi(gPlayers) # $t9, 0x800f
/* 0CB710 800CAB10 27396990 */  addiu $t9, %lo(gPlayers) # addiu $t9, $t9, 0x6990
/* 0CB714 800CAB14 25F80014 */  addiu $t8, $t7, 0x14
/* 0CB718 800CAB18 3C053102 */  lui   $a1, (0x31029008 >> 16) # lui $a1, 0x3102
/* 0CB71C 800CAB1C 34A59008 */  ori   $a1, (0x31029008 & 0xFFFF) # ori $a1, $a1, 0x9008
/* 0CB720 800CAB20 0C03087A */  jal   func_800C21E8
/* 0CB724 800CAB24 03192021 */   addu  $a0, $t8, $t9
/* 0CB728 800CAB28 3C053102 */  lui   $a1, (0x31029008 >> 16) # lui $a1, 0x3102
/* 0CB72C 800CAB2C 34A59008 */  ori   $a1, (0x31029008 & 0xFFFF) # ori $a1, $a1, 0x9008
/* 0CB730 800CAB30 0C03155E */  jal   func_800C5578
/* 0CB734 800CAB34 00402025 */   move  $a0, $v0
.L800CAB38:
/* 0CB738 800CAB38 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CB73C 800CAB3C 03C0E825 */  move  $sp, $fp
/* 0CB740 800CAB40 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CB744 800CAB44 03E00008 */  jr    $ra
/* 0CB748 800CAB48 27BD0030 */   addiu $sp, $sp, 0x30
