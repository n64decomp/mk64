glabel func_802A29BC
/* 10BFCC 802A29BC 27BDFF80 */  addiu $sp, $sp, -0x80
/* 10BFD0 802A29C0 AFBF001C */  sw    $ra, 0x1c($sp)
/* 10BFD4 802A29C4 AFA50084 */  sw    $a1, 0x84($sp)
/* 10BFD8 802A29C8 AFA60088 */  sw    $a2, 0x88($sp)
/* 10BFDC 802A29CC 84C20002 */  lh    $v0, 2($a2)
/* 10BFE0 802A29D0 24C50018 */  addiu $a1, $a2, 0x18
/* 10BFE4 802A29D4 24070000 */  li    $a3, 0
/* 10BFE8 802A29D8 304F0800 */  andi  $t7, $v0, 0x800
/* 10BFEC 802A29DC 15E00038 */  bnez  $t7, .L802A2AC0
/* 10BFF0 802A29E0 3C18800E */   lui   $t8, %hi(D_800DDB40) # $t8, 0x800e
/* 10BFF4 802A29E4 8F18DB40 */  lw    $t8, %lo(D_800DDB40)($t8)
/* 10BFF8 802A29E8 240100B8 */  li    $at, 184
/* 10BFFC 802A29EC 94860026 */  lhu   $a2, 0x26($a0)
/* 10C000 802A29F0 0098C823 */  subu  $t9, $a0, $t8
/* 10C004 802A29F4 0321001A */  div   $zero, $t9, $at
/* 10C008 802A29F8 00004812 */  mflo  $t1
/* 10C00C 802A29FC 00095080 */  sll   $t2, $t1, 2
/* 10C010 802A2A00 3C018015 */  lui   $at, %hi(D_80150130)
/* 10C014 802A2A04 002A0821 */  addu  $at, $at, $t2
/* 10C018 802A2A08 C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 10C01C 802A2A0C 3C01802C */  lui   $at, %hi(D_802B9A34) # $at, 0x802c
/* 10C020 802A2A10 C4269A34 */  lwc1  $f6, %lo(D_802B9A34)($at)
/* 10C024 802A2A14 AFA50028 */  sw    $a1, 0x28($sp)
/* 10C028 802A2A18 E7A40010 */  swc1  $f4, 0x10($sp)
/* 10C02C 802A2A1C 0C0AE034 */  jal   func_802B80D0
/* 10C030 802A2A20 E7A60014 */   swc1  $f6, 0x14($sp)
/* 10C034 802A2A24 44804000 */  mtc1  $zero, $f8
/* 10C038 802A2A28 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 10C03C 802A2A2C 8FA50028 */  lw    $a1, 0x28($sp)
/* 10C040 802A2A30 4608003C */  c.lt.s $f0, $f8
/* 10C044 802A2A34 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 10C048 802A2A38 45030022 */  bc1tl .L802A2AC4
/* 10C04C 802A2A3C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 10C050 802A2A40 8D020000 */  lw    $v0, ($t0)
/* 10C054 802A2A44 3C0CB700 */  lui   $t4, 0xb700
/* 10C058 802A2A48 240D0200 */  li    $t5, 512
/* 10C05C 802A2A4C 244B0008 */  addiu $t3, $v0, 8
/* 10C060 802A2A50 AD0B0000 */  sw    $t3, ($t0)
/* 10C064 802A2A54 AC4D0004 */  sw    $t5, 4($v0)
/* 10C068 802A2A58 AC4C0000 */  sw    $t4, ($v0)
/* 10C06C 802A2A5C 8D020000 */  lw    $v0, ($t0)
/* 10C070 802A2A60 3C0FB600 */  lui   $t7, 0xb600
/* 10C074 802A2A64 3C180002 */  lui   $t8, 2
/* 10C078 802A2A68 244E0008 */  addiu $t6, $v0, 8
/* 10C07C 802A2A6C AD0E0000 */  sw    $t6, ($t0)
/* 10C080 802A2A70 AC580004 */  sw    $t8, 4($v0)
/* 10C084 802A2A74 AC4F0000 */  sw    $t7, ($v0)
/* 10C088 802A2A78 8FA60088 */  lw    $a2, 0x88($sp)
/* 10C08C 802A2A7C 27A40040 */  addiu $a0, $sp, 0x40
/* 10C090 802A2A80 0C0AD7DD */  jal   func_802B5F74
/* 10C094 802A2A84 24C60010 */   addiu $a2, $a2, 0x10
/* 10C098 802A2A88 27A40040 */  addiu $a0, $sp, 0x40
/* 10C09C 802A2A8C 0C0AD3FE */  jal   func_802B4FF8
/* 10C0A0 802A2A90 00002825 */   move  $a1, $zero
/* 10C0A4 802A2A94 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 10C0A8 802A2A98 10400009 */  beqz  $v0, .L802A2AC0
/* 10C0AC 802A2A9C 25080298 */   addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 10C0B0 802A2AA0 8D020000 */  lw    $v0, ($t0)
/* 10C0B4 802A2AA4 3C0A0601 */  lui   $t2, %hi(D_06009330) # $t2, 0x601
/* 10C0B8 802A2AA8 254A9330 */  addiu $t2, %lo(D_06009330) # addiu $t2, $t2, -0x6cd0
/* 10C0BC 802A2AAC 24590008 */  addiu $t9, $v0, 8
/* 10C0C0 802A2AB0 AD190000 */  sw    $t9, ($t0)
/* 10C0C4 802A2AB4 3C090600 */  lui   $t1, 0x600
/* 10C0C8 802A2AB8 AC490000 */  sw    $t1, ($v0)
/* 10C0CC 802A2ABC AC4A0004 */  sw    $t2, 4($v0)
.L802A2AC0:
/* 10C0D0 802A2AC0 8FBF001C */  lw    $ra, 0x1c($sp)
.L802A2AC4:
/* 10C0D4 802A2AC4 27BD0080 */  addiu $sp, $sp, 0x80
/* 10C0D8 802A2AC8 03E00008 */  jr    $ra
/* 10C0DC 802A2ACC 00000000 */   nop   
