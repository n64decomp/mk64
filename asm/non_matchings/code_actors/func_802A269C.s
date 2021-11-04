glabel func_802A269C
/* 10BCAC 802A269C 3C0E800E */  lui   $t6, %hi(D_800DDB40) # $t6, 0x800e
/* 10BCB0 802A26A0 8DCEDB40 */  lw    $t6, %lo(D_800DDB40)($t6)
/* 10BCB4 802A26A4 240100B8 */  li    $at, 184
/* 10BCB8 802A26A8 27BDFF88 */  addiu $sp, $sp, -0x78
/* 10BCBC 802A26AC 008E7823 */  subu  $t7, $a0, $t6
/* 10BCC0 802A26B0 01E1001A */  div   $zero, $t7, $at
/* 10BCC4 802A26B4 0000C012 */  mflo  $t8
/* 10BCC8 802A26B8 0018C880 */  sll   $t9, $t8, 2
/* 10BCCC 802A26BC 3C018015 */  lui   $at, %hi(D_80150130)
/* 10BCD0 802A26C0 00390821 */  addu  $at, $at, $t9
/* 10BCD4 802A26C4 C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 10BCD8 802A26C8 AFBF001C */  sw    $ra, 0x1c($sp)
/* 10BCDC 802A26CC AFA5007C */  sw    $a1, 0x7c($sp)
/* 10BCE0 802A26D0 3C01802C */  lui   $at, %hi(D_802B9A28) # $at, 0x802c
/* 10BCE4 802A26D4 C4269A28 */  lwc1  $f6, %lo(D_802B9A28)($at)
/* 10BCE8 802A26D8 94860026 */  lhu   $a2, 0x26($a0)
/* 10BCEC 802A26DC 24A50018 */  addiu $a1, $a1, 0x18
/* 10BCF0 802A26E0 AFA50024 */  sw    $a1, 0x24($sp)
/* 10BCF4 802A26E4 24070000 */  li    $a3, 0
/* 10BCF8 802A26E8 E7A40010 */  swc1  $f4, 0x10($sp)
/* 10BCFC 802A26EC 0C0AE034 */  jal   func_802B80D0
/* 10BD00 802A26F0 E7A60014 */   swc1  $f6, 0x14($sp)
/* 10BD04 802A26F4 44804000 */  mtc1  $zero, $f8
/* 10BD08 802A26F8 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 10BD0C 802A26FC 8FA50024 */  lw    $a1, 0x24($sp)
/* 10BD10 802A2700 4608003C */  c.lt.s $f0, $f8
/* 10BD14 802A2704 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 10BD18 802A2708 45030022 */  bc1tl .L802A2794
/* 10BD1C 802A270C 8FBF001C */   lw    $ra, 0x1c($sp)
/* 10BD20 802A2710 8D020000 */  lw    $v0, ($t0)
/* 10BD24 802A2714 3C0AB700 */  lui   $t2, 0xb700
/* 10BD28 802A2718 240B0200 */  li    $t3, 512
/* 10BD2C 802A271C 24490008 */  addiu $t1, $v0, 8
/* 10BD30 802A2720 AD090000 */  sw    $t1, ($t0)
/* 10BD34 802A2724 AC4B0004 */  sw    $t3, 4($v0)
/* 10BD38 802A2728 AC4A0000 */  sw    $t2, ($v0)
/* 10BD3C 802A272C 8D020000 */  lw    $v0, ($t0)
/* 10BD40 802A2730 3C0DB600 */  lui   $t5, 0xb600
/* 10BD44 802A2734 3C0E0002 */  lui   $t6, 2
/* 10BD48 802A2738 244C0008 */  addiu $t4, $v0, 8
/* 10BD4C 802A273C AD0C0000 */  sw    $t4, ($t0)
/* 10BD50 802A2740 AC4E0004 */  sw    $t6, 4($v0)
/* 10BD54 802A2744 AC4D0000 */  sw    $t5, ($v0)
/* 10BD58 802A2748 8FA6007C */  lw    $a2, 0x7c($sp)
/* 10BD5C 802A274C 27A40038 */  addiu $a0, $sp, 0x38
/* 10BD60 802A2750 0C0AD7DD */  jal   func_802B5F74
/* 10BD64 802A2754 24C60010 */   addiu $a2, $a2, 0x10
/* 10BD68 802A2758 27A40038 */  addiu $a0, $sp, 0x38
/* 10BD6C 802A275C 0C0AD3FE */  jal   func_802B4FF8
/* 10BD70 802A2760 00002825 */   move  $a1, $zero
/* 10BD74 802A2764 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 10BD78 802A2768 10400009 */  beqz  $v0, .L802A2790
/* 10BD7C 802A276C 25080298 */   addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 10BD80 802A2770 8D020000 */  lw    $v0, ($t0)
/* 10BD84 802A2774 3C190601 */  lui   $t9, %hi(D_0600CA60) # $t9, 0x601
/* 10BD88 802A2778 2739CA60 */  addiu $t9, %lo(D_0600CA60) # addiu $t9, $t9, -0x35a0
/* 10BD8C 802A277C 244F0008 */  addiu $t7, $v0, 8
/* 10BD90 802A2780 AD0F0000 */  sw    $t7, ($t0)
/* 10BD94 802A2784 3C180600 */  lui   $t8, 0x600
/* 10BD98 802A2788 AC580000 */  sw    $t8, ($v0)
/* 10BD9C 802A278C AC590004 */  sw    $t9, 4($v0)
.L802A2790:
/* 10BDA0 802A2790 8FBF001C */  lw    $ra, 0x1c($sp)
.L802A2794:
/* 10BDA4 802A2794 27BD0078 */  addiu $sp, $sp, 0x78
/* 10BDA8 802A2798 03E00008 */  jr    $ra
/* 10BDAC 802A279C 00000000 */   nop   
