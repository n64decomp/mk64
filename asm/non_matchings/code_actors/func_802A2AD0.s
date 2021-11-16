glabel func_802A2AD0
/* 10C0E0 802A2AD0 27BDFF78 */  addiu $sp, $sp, -0x88
/* 10C0E4 802A2AD4 3C0F802C */  lui   $t7, %hi(D_802B8864) # $t7, 0x802c
/* 10C0E8 802A2AD8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 10C0EC 802A2ADC AFA5008C */  sw    $a1, 0x8c($sp)
/* 10C0F0 802A2AE0 25EF8864 */  addiu $t7, %lo(D_802B8864) # addiu $t7, $t7, -0x779c
/* 10C0F4 802A2AE4 8DE10000 */  lw    $at, ($t7)
/* 10C0F8 802A2AE8 27AE0080 */  addiu $t6, $sp, 0x80
/* 10C0FC 802A2AEC 3C09800E */  lui   $t1, %hi(camera1) # $t1, 0x800e
/* 10C100 802A2AF0 ADC10000 */  sw    $at, ($t6)
/* 10C104 802A2AF4 95E10004 */  lhu   $at, 4($t7)
/* 10C108 802A2AF8 24070000 */  li    $a3, 0
/* 10C10C 802A2AFC A5C10004 */  sh    $at, 4($t6)
/* 10C110 802A2B00 8D29DB40 */  lw    $t1, %lo(camera1)($t1)
/* 10C114 802A2B04 240100B8 */  li    $at, 184
/* 10C118 802A2B08 8FA5008C */  lw    $a1, 0x8c($sp)
/* 10C11C 802A2B0C 00895023 */  subu  $t2, $a0, $t1
/* 10C120 802A2B10 0141001A */  div   $zero, $t2, $at
/* 10C124 802A2B14 00005812 */  mflo  $t3
/* 10C128 802A2B18 000B6080 */  sll   $t4, $t3, 2
/* 10C12C 802A2B1C 3C018015 */  lui   $at, %hi(D_80150130)
/* 10C130 802A2B20 002C0821 */  addu  $at, $at, $t4
/* 10C134 802A2B24 C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 10C138 802A2B28 3C01802C */  lui   $at, %hi(D_802B9A38) # $at, 0x802c
/* 10C13C 802A2B2C C4269A38 */  lwc1  $f6, %lo(D_802B9A38)($at)
/* 10C140 802A2B30 94860026 */  lhu   $a2, 0x26($a0)
/* 10C144 802A2B34 24A50018 */  addiu $a1, $a1, 0x18
/* 10C148 802A2B38 AFA50020 */  sw    $a1, 0x20($sp)
/* 10C14C 802A2B3C E7A40010 */  swc1  $f4, 0x10($sp)
/* 10C150 802A2B40 0C0AE034 */  jal   func_802B80D0
/* 10C154 802A2B44 E7A60014 */   swc1  $f6, 0x14($sp)
/* 10C158 802A2B48 44804000 */  mtc1  $zero, $f8
/* 10C15C 802A2B4C 8FA6008C */  lw    $a2, 0x8c($sp)
/* 10C160 802A2B50 8FA50020 */  lw    $a1, 0x20($sp)
/* 10C164 802A2B54 4608003C */  c.lt.s $f0, $f8
/* 10C168 802A2B58 24C60010 */  addiu $a2, $a2, 0x10
/* 10C16C 802A2B5C 45030043 */  bc1tl .L802A2C6C
/* 10C170 802A2B60 8FBF001C */   lw    $ra, 0x1c($sp)
/* 10C174 802A2B64 0C0AD7DD */  jal   func_802B5F74
/* 10C178 802A2B68 27A40040 */   addiu $a0, $sp, 0x40
/* 10C17C 802A2B6C 27A40040 */  addiu $a0, $sp, 0x40
/* 10C180 802A2B70 0C0AD3FE */  jal   func_802B4FF8
/* 10C184 802A2B74 00002825 */   move  $a1, $zero
/* 10C188 802A2B78 1040003B */  beqz  $v0, .L802A2C68
/* 10C18C 802A2B7C 3C038015 */   lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10C190 802A2B80 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10C194 802A2B84 8C620000 */  lw    $v0, ($v1)
/* 10C198 802A2B88 3C06B700 */  lui   $a2, 0xb700
/* 10C19C 802A2B8C 3C190002 */  lui   $t9, 2
/* 10C1A0 802A2B90 244D0008 */  addiu $t5, $v0, 8
/* 10C1A4 802A2B94 AC6D0000 */  sw    $t5, ($v1)
/* 10C1A8 802A2B98 AC590004 */  sw    $t9, 4($v0)
/* 10C1AC 802A2B9C AC460000 */  sw    $a2, ($v0)
/* 10C1B0 802A2BA0 8C620000 */  lw    $v0, ($v1)
/* 10C1B4 802A2BA4 24072000 */  li    $a3, 8192
/* 10C1B8 802A2BA8 3C0EB600 */  lui   $t6, 0xb600
/* 10C1BC 802A2BAC 24580008 */  addiu $t8, $v0, 8
/* 10C1C0 802A2BB0 AC780000 */  sw    $t8, ($v1)
/* 10C1C4 802A2BB4 AC470004 */  sw    $a3, 4($v0)
/* 10C1C8 802A2BB8 AC4E0000 */  sw    $t6, ($v0)
/* 10C1CC 802A2BBC 8FAF008C */  lw    $t7, 0x8c($sp)
/* 10C1D0 802A2BC0 3C0A8016 */  lui   $t2, %hi(D_801637B8) # 0x8016
/* 10C1D4 802A2BC4 85E80006 */  lh    $t0, 6($t7)
/* 10C1D8 802A2BC8 00084840 */  sll   $t1, $t0, 1
/* 10C1DC 802A2BCC 01495021 */  addu  $t2, $t2, $t1
/* 10C1E0 802A2BD0 954A37B8 */  lhu   $t2, %lo(D_801637B8)($t2) # 0x37b8($t2)
/* 10C1E4 802A2BD4 51400018 */  beql  $t2, $zero, .L802A2C38
/* 10C1E8 802A2BD8 8C620000 */   lw    $v0, ($v1)
/* 10C1EC 802A2BDC 85EB0004 */  lh    $t3, 4($t7)
/* 10C1F0 802A2BE0 3C0D0600 */  lui   $t5, 0x600
/* 10C1F4 802A2BE4 3C0E0600 */  lui   $t6, 0x600
/* 10C1F8 802A2BE8 29610014 */  slti  $at, $t3, 0x14
/* 10C1FC 802A2BEC 5020000A */  beql  $at, $zero, .L802A2C18
/* 10C200 802A2BF0 8C620000 */   lw    $v0, ($v1)
/* 10C204 802A2BF4 8C620000 */  lw    $v0, ($v1)
/* 10C208 802A2BF8 3C190601 */  lui   $t9, %hi(D_06010AE8) # $t9, 0x601
/* 10C20C 802A2BFC 27390AE8 */  addiu $t9, %lo(D_06010AE8) # addiu $t9, $t9, 0xae8
/* 10C210 802A2C00 244C0008 */  addiu $t4, $v0, 8
/* 10C214 802A2C04 AC6C0000 */  sw    $t4, ($v1)
/* 10C218 802A2C08 AC590004 */  sw    $t9, 4($v0)
/* 10C21C 802A2C0C 10000011 */  b     .L802A2C54
/* 10C220 802A2C10 AC4D0000 */   sw    $t5, ($v0)
/* 10C224 802A2C14 8C620000 */  lw    $v0, ($v1)
.L802A2C18:
/* 10C228 802A2C18 3C080601 */  lui   $t0, %hi(D_06010C10) # $t0, 0x601
/* 10C22C 802A2C1C 25080C10 */  addiu $t0, %lo(D_06010C10) # addiu $t0, $t0, 0xc10
/* 10C230 802A2C20 24580008 */  addiu $t8, $v0, 8
/* 10C234 802A2C24 AC780000 */  sw    $t8, ($v1)
/* 10C238 802A2C28 AC480004 */  sw    $t0, 4($v0)
/* 10C23C 802A2C2C 10000009 */  b     .L802A2C54
/* 10C240 802A2C30 AC4E0000 */   sw    $t6, ($v0)
/* 10C244 802A2C34 8C620000 */  lw    $v0, ($v1)
.L802A2C38:
/* 10C248 802A2C38 3C0F0601 */  lui   $t7, %hi(D_06010D38) # $t7, 0x601
/* 10C24C 802A2C3C 25EF0D38 */  addiu $t7, %lo(D_06010D38) # addiu $t7, $t7, 0xd38
/* 10C250 802A2C40 24490008 */  addiu $t1, $v0, 8
/* 10C254 802A2C44 AC690000 */  sw    $t1, ($v1)
/* 10C258 802A2C48 3C0A0600 */  lui   $t2, 0x600
/* 10C25C 802A2C4C AC4A0000 */  sw    $t2, ($v0)
/* 10C260 802A2C50 AC4F0004 */  sw    $t7, 4($v0)
.L802A2C54:
/* 10C264 802A2C54 8C620000 */  lw    $v0, ($v1)
/* 10C268 802A2C58 244B0008 */  addiu $t3, $v0, 8
/* 10C26C 802A2C5C AC6B0000 */  sw    $t3, ($v1)
/* 10C270 802A2C60 AC470004 */  sw    $a3, 4($v0)
/* 10C274 802A2C64 AC460000 */  sw    $a2, ($v0)
.L802A2C68:
/* 10C278 802A2C68 8FBF001C */  lw    $ra, 0x1c($sp)
.L802A2C6C:
/* 10C27C 802A2C6C 27BD0088 */  addiu $sp, $sp, 0x88
/* 10C280 802A2C70 03E00008 */  jr    $ra
/* 10C284 802A2C74 00000000 */   nop   
