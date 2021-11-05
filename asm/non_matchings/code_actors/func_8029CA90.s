glabel func_8029CA90
/* 1060A0 8029CA90 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 1060A4 8029CA94 AFBF0024 */  sw    $ra, 0x24($sp)
/* 1060A8 8029CA98 AFB00020 */  sw    $s0, 0x20($sp)
/* 1060AC 8029CA9C 84AE0004 */  lh    $t6, 4($a1)
/* 1060B0 8029CAA0 00A08025 */  move  $s0, $a1
/* 1060B4 8029CAA4 24A50018 */  addiu $a1, $a1, 0x18
/* 1060B8 8029CAA8 15C00055 */  bnez  $t6, .L8029CC00
/* 1060BC 8029CAAC 3C0743C8 */   lui   $a3, 0x43c8
/* 1060C0 8029CAB0 3C0F800E */  lui   $t7, %hi(D_800DDB40) # $t7, 0x800e
/* 1060C4 8029CAB4 8DEFDB40 */  lw    $t7, %lo(D_800DDB40)($t7)
/* 1060C8 8029CAB8 240100B8 */  li    $at, 184
/* 1060CC 8029CABC 94860026 */  lhu   $a2, 0x26($a0)
/* 1060D0 8029CAC0 008FC023 */  subu  $t8, $a0, $t7
/* 1060D4 8029CAC4 0301001A */  div   $zero, $t8, $at
/* 1060D8 8029CAC8 0000C812 */  mflo  $t9
/* 1060DC 8029CACC 00194080 */  sll   $t0, $t9, 2
/* 1060E0 8029CAD0 3C018015 */  lui   $at, %hi(D_80150130)
/* 1060E4 8029CAD4 00280821 */  addu  $at, $at, $t0
/* 1060E8 8029CAD8 C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 1060EC 8029CADC 3C01802C */  lui   $at, %hi(D_802B9750) # $at, 0x802c
/* 1060F0 8029CAE0 C4269750 */  lwc1  $f6, %lo(D_802B9750)($at)
/* 1060F4 8029CAE4 AFA5002C */  sw    $a1, 0x2c($sp)
/* 1060F8 8029CAE8 E7A40010 */  swc1  $f4, 0x10($sp)
/* 1060FC 8029CAEC 0C0AE034 */  jal   func_802B80D0
/* 106100 8029CAF0 E7A60014 */   swc1  $f6, 0x14($sp)
/* 106104 8029CAF4 44804000 */  mtc1  $zero, $f8
/* 106108 8029CAF8 3C01802C */  lui   $at, %hi(D_802B9754) # $at, 0x802c
/* 10610C 8029CAFC 4608003C */  c.lt.s $f0, $f8
/* 106110 8029CB00 00000000 */  nop   
/* 106114 8029CB04 4503003F */  bc1tl .L8029CC04
/* 106118 8029CB08 8FBF0024 */   lw    $ra, 0x24($sp)
/* 10611C 8029CB0C C42A9754 */  lwc1  $f10, %lo(D_802B9754)($at)
/* 106120 8029CB10 460A003C */  c.lt.s $f0, $f10
/* 106124 8029CB14 00000000 */  nop   
/* 106128 8029CB18 45020028 */  bc1fl .L8029CBBC
/* 10612C 8029CB1C 27A4004C */   addiu $a0, $sp, 0x4c
/* 106130 8029CB20 96090034 */  lhu   $t1, 0x34($s0)
/* 106134 8029CB24 24010001 */  li    $at, 1
/* 106138 8029CB28 55210024 */  bnel  $t1, $at, .L8029CBBC
/* 10613C 8029CB2C 27A4004C */   addiu $a0, $sp, 0x4c
/* 106140 8029CB30 C6100018 */  lwc1  $f16, 0x18($s0)
/* 106144 8029CB34 E7B0008C */  swc1  $f16, 0x8c($sp)
/* 106148 8029CB38 C6120020 */  lwc1  $f18, 0x20($s0)
/* 10614C 8029CB3C C7AC008C */  lwc1  $f12, 0x8c($sp)
/* 106150 8029CB40 E7B20094 */  swc1  $f18, 0x94($sp)
/* 106154 8029CB44 9607003A */  lhu   $a3, 0x3a($s0)
/* 106158 8029CB48 8FA60094 */  lw    $a2, 0x94($sp)
/* 10615C 8029CB4C 0C0AAF8C */  jal   func_802ABE30
/* 106160 8029CB50 C60E001C */   lwc1  $f14, 0x1c($s0)
/* 106164 8029CB54 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 106168 8029CB58 44812000 */  mtc1  $at, $f4
/* 10616C 8029CB5C A7A00098 */  sh    $zero, 0x98($sp)
/* 106170 8029CB60 A7A0009A */  sh    $zero, 0x9a($sp)
/* 106174 8029CB64 46040180 */  add.s $f6, $f0, $f4
/* 106178 8029CB68 A7A0009C */  sh    $zero, 0x9c($sp)
/* 10617C 8029CB6C 27A4004C */  addiu $a0, $sp, 0x4c
/* 106180 8029CB70 27A5008C */  addiu $a1, $sp, 0x8c
/* 106184 8029CB74 E7A60090 */  swc1  $f6, 0x90($sp)
/* 106188 8029CB78 0C0AD7DD */  jal   func_802B5F74
/* 10618C 8029CB7C 27A60098 */   addiu $a2, $sp, 0x98
/* 106190 8029CB80 27A4004C */  addiu $a0, $sp, 0x4c
/* 106194 8029CB84 0C0AD3FE */  jal   func_802B4FF8
/* 106198 8029CB88 00002825 */   move  $a1, $zero
/* 10619C 8029CB8C 1040001C */  beqz  $v0, .L8029CC00
/* 1061A0 8029CB90 3C038015 */   lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 1061A4 8029CB94 8C630298 */  lw    $v1, %lo(gDisplayListHead)($v1)
/* 1061A8 8029CB98 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 1061AC 8029CB9C 3C0C0600 */  lui   $t4, %hi(D_06006F88) # $t4, 0x600
/* 1061B0 8029CBA0 246A0008 */  addiu $t2, $v1, 8
/* 1061B4 8029CBA4 AC2A0298 */  sw    $t2, %lo(gDisplayListHead)($at)
/* 1061B8 8029CBA8 258C6F88 */  addiu $t4, %lo(D_06006F88) # addiu $t4, $t4, 0x6f88
/* 1061BC 8029CBAC 3C0B0600 */  lui   $t3, 0x600
/* 1061C0 8029CBB0 AC6B0000 */  sw    $t3, ($v1)
/* 1061C4 8029CBB4 AC6C0004 */  sw    $t4, 4($v1)
/* 1061C8 8029CBB8 27A4004C */  addiu $a0, $sp, 0x4c
.L8029CBBC:
/* 1061CC 8029CBBC 8FA5002C */  lw    $a1, 0x2c($sp)
/* 1061D0 8029CBC0 0C0AD7DD */  jal   func_802B5F74
/* 1061D4 8029CBC4 26060010 */   addiu $a2, $s0, 0x10
/* 1061D8 8029CBC8 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 1061DC 8029CBCC 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 1061E0 8029CBD0 27A4004C */  addiu $a0, $sp, 0x4c
/* 1061E4 8029CBD4 0C0AD3FE */  jal   func_802B4FF8
/* 1061E8 8029CBD8 00002825 */   move  $a1, $zero
/* 1061EC 8029CBDC 10400008 */  beqz  $v0, .L8029CC00
/* 1061F0 8029CBE0 3C0E0600 */   lui   $t6, 0x600
/* 1061F4 8029CBE4 8E030000 */  lw    $v1, ($s0)
/* 1061F8 8029CBE8 3C0F0600 */  lui   $t7, %hi(D_06006FE0) # $t7, 0x600
/* 1061FC 8029CBEC 25EF6FE0 */  addiu $t7, %lo(D_06006FE0) # addiu $t7, $t7, 0x6fe0
/* 106200 8029CBF0 246D0008 */  addiu $t5, $v1, 8
/* 106204 8029CBF4 AE0D0000 */  sw    $t5, ($s0)
/* 106208 8029CBF8 AC6F0004 */  sw    $t7, 4($v1)
/* 10620C 8029CBFC AC6E0000 */  sw    $t6, ($v1)
.L8029CC00:
/* 106210 8029CC00 8FBF0024 */  lw    $ra, 0x24($sp)
.L8029CC04:
/* 106214 8029CC04 8FB00020 */  lw    $s0, 0x20($sp)
/* 106218 8029CC08 27BD00A0 */  addiu $sp, $sp, 0xa0
/* 10621C 8029CC0C 03E00008 */  jr    $ra
/* 106220 8029CC10 00000000 */   nop   
