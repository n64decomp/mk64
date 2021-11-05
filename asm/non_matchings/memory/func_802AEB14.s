glabel func_802AEB14
/* 118124 802AEB14 3C0100FF */  lui   $at, 0xff
/* 118128 802AEB18 0081C024 */  and   $t8, $a0, $at
/* 11812C 802AEB1C 0018CC02 */  srl   $t9, $t8, 0x10
/* 118130 802AEB20 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 118134 802AEB24 3C028016 */  lui   $v0, %hi(D_8015F668) # $v0, 0x8016
/* 118138 802AEB28 00194042 */  srl   $t0, $t9, 1
/* 11813C 802AEB2C 00807825 */  move  $t7, $a0
/* 118140 802AEB30 2442F668 */  addiu $v0, %lo(D_8015F668) # addiu $v0, $v0, -0x998
/* 118144 802AEB34 00053E00 */  sll   $a3, $a1, 0x18
/* 118148 802AEB38 00084880 */  sll   $t1, $t0, 2
/* 11814C 802AEB3C 31EBFF00 */  andi  $t3, $t7, 0xff00
/* 118150 802AEB40 00077603 */  sra   $t6, $a3, 0x18
/* 118154 802AEB44 00495021 */  addu  $t2, $v0, $t1
/* 118158 802AEB48 000B6202 */  srl   $t4, $t3, 8
/* 11815C 802AEB4C 31F900FF */  andi  $t9, $t7, 0xff
/* 118160 802AEB50 01C03825 */  move  $a3, $t6
/* 118164 802AEB54 AFA40020 */  sw    $a0, 0x20($sp)
/* 118168 802AEB58 000C6842 */  srl   $t5, $t4, 1
/* 11816C 802AEB5C 00194042 */  srl   $t0, $t9, 1
/* 118170 802AEB60 AFA50024 */  sw    $a1, 0x24($sp)
/* 118174 802AEB64 AFA60028 */  sw    $a2, 0x28($sp)
/* 118178 802AEB68 8D440000 */  lw    $a0, ($t2)
/* 11817C 802AEB6C 000D7080 */  sll   $t6, $t5, 2
/* 118180 802AEB70 00084880 */  sll   $t1, $t0, 2
/* 118184 802AEB74 97AB002A */  lhu   $t3, 0x2a($sp)
/* 118188 802AEB78 AFBF001C */  sw    $ra, 0x1c($sp)
/* 11818C 802AEB7C 004EC021 */  addu  $t8, $v0, $t6
/* 118190 802AEB80 00495021 */  addu  $t2, $v0, $t1
/* 118194 802AEB84 8F050000 */  lw    $a1, ($t8)
/* 118198 802AEB88 8D460000 */  lw    $a2, ($t2)
/* 11819C 802AEB8C 0C0AB90D */  jal   func_802AE434
/* 1181A0 802AEB90 AFAB0010 */   sw    $t3, 0x10($sp)
/* 1181A4 802AEB94 8FBF001C */  lw    $ra, 0x1c($sp)
/* 1181A8 802AEB98 27BD0020 */  addiu $sp, $sp, 0x20
/* 1181AC 802AEB9C 03E00008 */  jr    $ra
/* 1181B0 802AEBA0 00000000 */   nop   
