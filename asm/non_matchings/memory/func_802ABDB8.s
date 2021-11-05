glabel func_802ABDB8
/* 1153C8 802ABDB8 308EFFFF */  andi  $t6, $a0, 0xffff
/* 1153CC 802ABDBC 000E7880 */  sll   $t7, $t6, 2
/* 1153D0 802ABDC0 01EE7823 */  subu  $t7, $t7, $t6
/* 1153D4 802ABDC4 3C188016 */  lui   $t8, %hi(D_8015F580) # $t8, 0x8016
/* 1153D8 802ABDC8 8F18F580 */  lw    $t8, %lo(D_8015F580)($t8)
/* 1153DC 802ABDCC 000F7880 */  sll   $t7, $t7, 2
/* 1153E0 802ABDD0 01EE7823 */  subu  $t7, $t7, $t6
/* 1153E4 802ABDD4 000F7880 */  sll   $t7, $t7, 2
/* 1153E8 802ABDD8 AFA40000 */  sw    $a0, ($sp)
/* 1153EC 802ABDDC 01F81821 */  addu  $v1, $t7, $t8
/* 1153F0 802ABDE0 94620000 */  lhu   $v0, ($v1)
/* 1153F4 802ABDE4 30590400 */  andi  $t9, $v0, 0x400
/* 1153F8 802ABDE8 00194400 */  sll   $t0, $t9, 0x10
/* 1153FC 802ABDEC 03E00008 */  jr    $ra
/* 115400 802ABDF0 00081403 */   sra   $v0, $t0, 0x10
