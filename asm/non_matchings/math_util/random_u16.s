glabel random_u16
/* 1213A4 802B7D94 3C06802C */  lui   $a2, %hi(D_802BA290) # $a2, 0x802c
/* 1213A8 802B7D98 24C6A290 */  addiu $a2, %lo(D_802BA290) # addiu $a2, $a2, -0x5d70
/* 1213AC 802B7D9C 94C20000 */  lhu   $v0, ($a2)
/* 1213B0 802B7DA0 2401560A */  li    $at, 22026
/* 1213B4 802B7DA4 54410004 */  bnel  $v0, $at, .L802B7DB8
/* 1213B8 802B7DA8 00027A00 */   sll   $t7, $v0, 8
/* 1213BC 802B7DAC A4C00000 */  sh    $zero, ($a2)
/* 1213C0 802B7DB0 3002FFFF */  andi  $v0, $zero, 0xffff
/* 1213C4 802B7DB4 00027A00 */  sll   $t7, $v0, 8
.L802B7DB8:
/* 1213C8 802B7DB8 01E2C026 */  xor   $t8, $t7, $v0
/* 1213CC 802B7DBC 330500FF */  andi  $a1, $t8, 0xff
/* 1213D0 802B7DC0 3308FF00 */  andi  $t0, $t8, 0xff00
/* 1213D4 802B7DC4 00084A03 */  sra   $t1, $t0, 8
/* 1213D8 802B7DC8 0005CA00 */  sll   $t9, $a1, 8
/* 1213DC 802B7DCC 03296021 */  addu  $t4, $t9, $t1
/* 1213E0 802B7DD0 00055840 */  sll   $t3, $a1, 1
/* 1213E4 802B7DD4 016C1826 */  xor   $v1, $t3, $t4
/* 1213E8 802B7DD8 306DFFFF */  andi  $t5, $v1, 0xffff
/* 1213EC 802B7DDC 31AE0001 */  andi  $t6, $t5, 1
/* 1213F0 802B7DE0 A4CC0000 */  sh    $t4, ($a2)
/* 1213F4 802B7DE4 15C0000C */  bnez  $t6, .L802B7E18
/* 1213F8 802B7DE8 01A02025 */   move  $a0, $t5
/* 1213FC 802B7DEC 000D1043 */  sra   $v0, $t5, 1
/* 121400 802B7DF0 384FFF80 */  xori  $t7, $v0, 0xff80
/* 121404 802B7DF4 31E2FFFF */  andi  $v0, $t7, 0xffff
/* 121408 802B7DF8 3401AA55 */  li    $at, 43605
/* 12140C 802B7DFC 14410003 */  bne   $v0, $at, .L802B7E0C
/* 121410 802B7E00 38481FF4 */   xori  $t0, $v0, 0x1ff4
/* 121414 802B7E04 10000009 */  b     .L802B7E2C
/* 121418 802B7E08 A4C00000 */   sh    $zero, ($a2)
.L802B7E0C:
/* 12141C 802B7E0C 3C01802C */  lui   $at, %hi(D_802BA290) # $at, 0x802c
/* 121420 802B7E10 10000006 */  b     .L802B7E2C
/* 121424 802B7E14 A428A290 */   sh    $t0, %lo(D_802BA290)($at)
.L802B7E18:
/* 121428 802B7E18 0004C843 */  sra   $t9, $a0, 1
/* 12142C 802B7E1C 3B2AFF80 */  xori  $t2, $t9, 0xff80
/* 121430 802B7E20 394B8180 */  xori  $t3, $t2, 0x8180
/* 121434 802B7E24 3C01802C */  lui   $at, %hi(D_802BA290) # $at, 0x802c
/* 121438 802B7E28 A42BA290 */  sh    $t3, %lo(D_802BA290)($at)
.L802B7E2C:
/* 12143C 802B7E2C 03E00008 */  jr    $ra
/* 121440 802B7E30 94C20000 */   lhu   $v0, ($a2)
