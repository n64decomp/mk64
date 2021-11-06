glabel func_800CB064
/* 0CBC64 800CB064 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0CBC68 800CB068 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0CBC6C 800CB06C 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CBC70 800CB070 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CBC74 800CB074 03A0F025 */  move  $fp, $sp
/* 0CBC78 800CB078 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0CBC7C 800CB07C 15C00028 */  bnez  $t6, .L800CB120
/* 0CBC80 800CB080 AFA40038 */   sw    $a0, 0x38($sp)
/* 0CBC84 800CB084 93AF003B */  lbu   $t7, 0x3b($sp)
/* 0CBC88 800CB088 3C18800F */  lui   $t8, %hi(D_800EA170) # $t8, 0x800f
/* 0CBC8C 800CB08C 2718A170 */  addiu $t8, %lo(D_800EA170) # addiu $t8, $t8, -0x5e90
/* 0CBC90 800CB090 01F8C821 */  addu  $t9, $t7, $t8
/* 0CBC94 800CB094 AFB90034 */  sw    $t9, 0x34($sp)
/* 0CBC98 800CB098 93280000 */  lbu   $t0, ($t9)
/* 0CBC9C 800CB09C 24010001 */  li    $at, 1
/* 0CBCA0 800CB0A0 3C09800F */  lui   $t1, %hi(D_800EA168) # $t1, 0x800f
/* 0CBCA4 800CB0A4 5501001F */  bnel  $t0, $at, .L800CB124
/* 0CBCA8 800CB0A8 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0CBCAC 800CB0AC 9129A168 */  lbu   $t1, %lo(D_800EA168)($t1)
/* 0CBCB0 800CB0B0 00002025 */  move  $a0, $zero
/* 0CBCB4 800CB0B4 24050001 */  li    $a1, 1
/* 0CBCB8 800CB0B8 15200003 */  bnez  $t1, .L800CB0C8
/* 0CBCBC 800CB0BC 2406007F */   li    $a2, 127
/* 0CBCC0 800CB0C0 0C030DB1 */  jal   func_800C36C4
/* 0CBCC4 800CB0C4 24070019 */   li    $a3, 25
.L800CB0C8:
/* 0CBCC8 800CB0C8 93C4003B */  lbu   $a0, 0x3b($fp)
/* 0CBCCC 800CB0CC 3C05800F */  lui   $a1, %hi(gPlayers+0x254)
/* 0CBCD0 800CB0D0 3C012900 */  lui   $at, (0x29008008 >> 16) # lui $at, 0x2900
/* 0CBCD4 800CB0D4 000458C0 */  sll   $t3, $a0, 3
/* 0CBCD8 800CB0D8 01645823 */  subu  $t3, $t3, $a0
/* 0CBCDC 800CB0DC 000B5900 */  sll   $t3, $t3, 4
/* 0CBCE0 800CB0E0 01645823 */  subu  $t3, $t3, $a0
/* 0CBCE4 800CB0E4 000B5880 */  sll   $t3, $t3, 2
/* 0CBCE8 800CB0E8 01645823 */  subu  $t3, $t3, $a0
/* 0CBCEC 800CB0EC 000B58C0 */  sll   $t3, $t3, 3
/* 0CBCF0 800CB0F0 00AB2821 */  addu  $a1, $a1, $t3
/* 0CBCF4 800CB0F4 94A56BE4 */  lhu   $a1, %lo(gPlayers+0x254)($a1)
/* 0CBCF8 800CB0F8 34218008 */  ori   $at, (0x29008008 & 0xFFFF) # ori $at, $at, 0x8008
/* 0CBCFC 800CB0FC 00056100 */  sll   $t4, $a1, 4
/* 0CBD00 800CB100 0C03243D */  jal   func_800C90F4
/* 0CBD04 800CB104 01812821 */   addu  $a1, $t4, $at
/* 0CBD08 800CB108 3C050100 */  lui   $a1, (0x0100FA4C >> 16) # lui $a1, 0x100
/* 0CBD0C 800CB10C 34A5FA4C */  ori   $a1, (0x0100FA4C & 0xFFFF) # ori $a1, $a1, 0xfa4c
/* 0CBD10 800CB110 0C032406 */  jal   func_800C9018
/* 0CBD14 800CB114 93C4003B */   lbu   $a0, 0x3b($fp)
/* 0CBD18 800CB118 8FCD0034 */  lw    $t5, 0x34($fp)
/* 0CBD1C 800CB11C A1A00000 */  sb    $zero, ($t5)
.L800CB120:
/* 0CBD20 800CB120 8FDF002C */  lw    $ra, 0x2c($fp)
.L800CB124:
/* 0CBD24 800CB124 03C0E825 */  move  $sp, $fp
/* 0CBD28 800CB128 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CBD2C 800CB12C 03E00008 */  jr    $ra
/* 0CBD30 800CB130 27BD0038 */   addiu $sp, $sp, 0x38
