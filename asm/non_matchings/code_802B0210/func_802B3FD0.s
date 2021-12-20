glabel func_802B3FD0
/* 11D5E0 802B3FD0 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 11D5E4 802B3FD4 AFB60038 */  sw    $s6, 0x38($sp)
/* 11D5E8 802B3FD8 AFB50034 */  sw    $s5, 0x34($sp)
/* 11D5EC 802B3FDC AFB00020 */  sw    $s0, 0x20($sp)
/* 11D5F0 802B3FE0 AFBE0040 */  sw    $fp, 0x40($sp)
/* 11D5F4 802B3FE4 AFB7003C */  sw    $s7, 0x3c($sp)
/* 11D5F8 802B3FE8 AFB40030 */  sw    $s4, 0x30($sp)
/* 11D5FC 802B3FEC AFB3002C */  sw    $s3, 0x2c($sp)
/* 11D600 802B3FF0 AFB20028 */  sw    $s2, 0x28($sp)
/* 11D604 802B3FF4 AFB10024 */  sw    $s1, 0x24($sp)
/* 11D608 802B3FF8 F7B40018 */  sdc1  $f20, 0x18($sp)
/* 11D60C 802B3FFC 3C01802C */  lui   $at, %hi(D_802B9F68) # $at, 0x802c
/* 11D610 802B4000 3C10800F */  lui   $s0, %hi(gPlayers) # $s0, 0x800f
/* 11D614 802B4004 3C158019 */  lui   $s5, %hi(gPlayerBalloonCount) # $s5, 0x8019
/* 11D618 802B4008 3C16800E */  lui   $s6, %hi(D_800DC4DC) # $s6, 0x800e
/* 11D61C 802B400C 00809025 */  move  $s2, $a0
/* 11D620 802B4010 00A09825 */  move  $s3, $a1
/* 11D624 802B4014 AFBF0044 */  sw    $ra, 0x44($sp)
/* 11D628 802B4018 241EFFFF */  li    $fp, -1
/* 11D62C 802B401C C4349F68 */  lwc1  $f20, %lo(D_802B9F68)($at)
/* 11D630 802B4020 26D6C4DC */  addiu $s6, %lo(D_800DC4DC) # addiu $s6, $s6, -0x3b24
/* 11D634 802B4024 26B5D8C0 */  addiu $s5, %lo(gPlayerBalloonCount) # addiu $s5, $s5, -0x2740
/* 11D638 802B4028 26106990 */  addiu $s0, %lo(gPlayers) # addiu $s0, $s0, 0x6990
/* 11D63C 802B402C 00008825 */  move  $s1, $zero
/* 11D640 802B4030 24140004 */  li    $s4, 4
/* 11D644 802B4034 24170DD8 */  li    $s7, 3544
.L802B4038:
/* 11D648 802B4038 960E0000 */  lhu   $t6, ($s0)
/* 11D64C 802B403C 31CF8000 */  andi  $t7, $t6, 0x8000
/* 11D650 802B4040 51E00020 */  beql  $t7, $zero, .L802B40C4
/* 11D654 802B4044 26310001 */   addiu $s1, $s1, 1
/* 11D658 802B4048 1212001D */  beq   $s0, $s2, .L802B40C0
/* 11D65C 802B404C 0011C040 */   sll   $t8, $s1, 1
/* 11D660 802B4050 02B8C821 */  addu  $t9, $s5, $t8
/* 11D664 802B4054 87280000 */  lh    $t0, ($t9)
/* 11D668 802B4058 26040014 */  addiu $a0, $s0, 0x14
/* 11D66C 802B405C 05020019 */  bltzl $t0, .L802B40C4
/* 11D670 802B4060 26310001 */   addiu $s1, $s1, 1
/* 11D674 802B4064 0C0AD47A */  jal   func_802B51E8
/* 11D678 802B4068 26650018 */   addiu $a1, $s3, 0x18
/* 11D67C 802B406C 4614003C */  c.lt.s $f0, $f20
/* 11D680 802B4070 00000000 */  nop
/* 11D684 802B4074 45020013 */  bc1fl .L802B40C4
/* 11D688 802B4078 26310001 */   addiu $s1, $s1, 1
/* 11D68C 802B407C 8EC90000 */  lw    $t1, ($s6)
/* 11D690 802B4080 46000506 */  mov.s $f20, $f0
/* 11D694 802B4084 02095023 */  subu  $t2, $s0, $t1
/* 11D698 802B4088 0157001A */  div   $zero, $t2, $s7
/* 11D69C 802B408C 0000F012 */  mflo  $fp
/* 11D6A0 802B4090 001E5C00 */  sll   $t3, $fp, 0x10
/* 11D6A4 802B4094 000B6403 */  sra   $t4, $t3, 0x10
/* 11D6A8 802B4098 0180F025 */  move  $fp, $t4
/* 11D6AC 802B409C 16E00002 */  bnez  $s7, .L802B40A8
/* 11D6B0 802B40A0 00000000 */   nop
/* 11D6B4 802B40A4 0007000D */  break 7
.L802B40A8:
/* 11D6B8 802B40A8 2401FFFF */  li    $at, -1
/* 11D6BC 802B40AC 16E10004 */  bne   $s7, $at, .L802B40C0
/* 11D6C0 802B40B0 3C018000 */   lui   $at, 0x8000
/* 11D6C4 802B40B4 15410002 */  bne   $t2, $at, .L802B40C0
/* 11D6C8 802B40B8 00000000 */   nop
/* 11D6CC 802B40BC 0006000D */  break 6
.L802B40C0:
/* 11D6D0 802B40C0 26310001 */  addiu $s1, $s1, 1
.L802B40C4:
/* 11D6D4 802B40C4 1634FFDC */  bne   $s1, $s4, .L802B4038
/* 11D6D8 802B40C8 26100DD8 */   addiu $s0, $s0, 0xdd8
/* 11D6DC 802B40CC 8FBF0044 */  lw    $ra, 0x44($sp)
/* 11D6E0 802B40D0 03C01025 */  move  $v0, $fp
/* 11D6E4 802B40D4 8FBE0040 */  lw    $fp, 0x40($sp)
/* 11D6E8 802B40D8 D7B40018 */  ldc1  $f20, 0x18($sp)
/* 11D6EC 802B40DC 8FB00020 */  lw    $s0, 0x20($sp)
/* 11D6F0 802B40E0 8FB10024 */  lw    $s1, 0x24($sp)
/* 11D6F4 802B40E4 8FB20028 */  lw    $s2, 0x28($sp)
/* 11D6F8 802B40E8 8FB3002C */  lw    $s3, 0x2c($sp)
/* 11D6FC 802B40EC 8FB40030 */  lw    $s4, 0x30($sp)
/* 11D700 802B40F0 8FB50034 */  lw    $s5, 0x34($sp)
/* 11D704 802B40F4 8FB60038 */  lw    $s6, 0x38($sp)
/* 11D708 802B40F8 8FB7003C */  lw    $s7, 0x3c($sp)
/* 11D70C 802B40FC 03E00008 */  jr    $ra
/* 11D710 802B4100 27BD0048 */   addiu $sp, $sp, 0x48
