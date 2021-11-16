glabel func_8029B6EC
/* 104CFC 8029B6EC 3C0E800E */  lui   $t6, %hi(camera1) # $t6, 0x800e
/* 104D00 8029B6F0 8DCEDB40 */  lw    $t6, %lo(camera1)($t6)
/* 104D04 8029B6F4 240100B8 */  li    $at, 184
/* 104D08 8029B6F8 27BDFEE0 */  addiu $sp, $sp, -0x120
/* 104D0C 8029B6FC 008E7823 */  subu  $t7, $a0, $t6
/* 104D10 8029B700 01E1001A */  div   $zero, $t7, $at
/* 104D14 8029B704 0000C012 */  mflo  $t8
/* 104D18 8029B708 0018C880 */  sll   $t9, $t8, 2
/* 104D1C 8029B70C 3C018015 */  lui   $at, %hi(D_80150130)
/* 104D20 8029B710 00390821 */  addu  $at, $at, $t9
/* 104D24 8029B714 C4240130 */  lwc1  $f4, %lo(D_80150130)($at)
/* 104D28 8029B718 AFBF001C */  sw    $ra, 0x1c($sp)
/* 104D2C 8029B71C AFA50124 */  sw    $a1, 0x124($sp)
/* 104D30 8029B720 3C01802C */  lui   $at, %hi(D_802B9710) # $at, 0x802c
/* 104D34 8029B724 C4269710 */  lwc1  $f6, %lo(D_802B9710)($at)
/* 104D38 8029B728 94860026 */  lhu   $a2, 0x26($a0)
/* 104D3C 8029B72C 24A50018 */  addiu $a1, $a1, 0x18
/* 104D40 8029B730 3C07451C */  lui   $a3, (0x451C4000 >> 16) # lui $a3, 0x451c
/* 104D44 8029B734 34E74000 */  ori   $a3, (0x451C4000 & 0xFFFF) # ori $a3, $a3, 0x4000
/* 104D48 8029B738 AFA50024 */  sw    $a1, 0x24($sp)
/* 104D4C 8029B73C E7A40010 */  swc1  $f4, 0x10($sp)
/* 104D50 8029B740 0C0AE034 */  jal   func_802B80D0
/* 104D54 8029B744 E7A60014 */   swc1  $f6, 0x14($sp)
/* 104D58 8029B748 44804000 */  mtc1  $zero, $f8
/* 104D5C 8029B74C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 104D60 8029B750 3C0ABB00 */  lui   $t2, (0xBB000001 >> 16) # lui $t2, 0xbb00
/* 104D64 8029B754 4608003C */  c.lt.s $f0, $f8
/* 104D68 8029B758 8FA50024 */  lw    $a1, 0x24($sp)
/* 104D6C 8029B75C 46000086 */  mov.s $f2, $f0
/* 104D70 8029B760 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 104D74 8029B764 4501005C */  bc1t  .L8029B8D8
/* 104D78 8029B768 354A0001 */   ori   $t2, (0xBB000001 & 0xFFFF) # ori $t2, $t2, 1
/* 104D7C 8029B76C 8C620000 */  lw    $v0, ($v1)
/* 104D80 8029B770 240BFFFF */  li    $t3, -1
/* 104D84 8029B774 3C0DB600 */  lui   $t5, 0xb600
/* 104D88 8029B778 24490008 */  addiu $t1, $v0, 8
/* 104D8C 8029B77C AC690000 */  sw    $t1, ($v1)
/* 104D90 8029B780 AC4B0004 */  sw    $t3, 4($v0)
/* 104D94 8029B784 AC4A0000 */  sw    $t2, ($v0)
/* 104D98 8029B788 8C620000 */  lw    $v0, ($v1)
/* 104D9C 8029B78C 3C0E0002 */  lui   $t6, 2
/* 104DA0 8029B790 27A400C8 */  addiu $a0, $sp, 0xc8
/* 104DA4 8029B794 244C0008 */  addiu $t4, $v0, 8
/* 104DA8 8029B798 AC6C0000 */  sw    $t4, ($v1)
/* 104DAC 8029B79C AC4E0004 */  sw    $t6, 4($v0)
/* 104DB0 8029B7A0 AC4D0000 */  sw    $t5, ($v0)
/* 104DB4 8029B7A4 8FA60124 */  lw    $a2, 0x124($sp)
/* 104DB8 8029B7A8 E7A20044 */  swc1  $f2, 0x44($sp)
/* 104DBC 8029B7AC 0C0AD7DD */  jal   func_802B5F74
/* 104DC0 8029B7B0 24C60010 */   addiu $a2, $a2, 0x10
/* 104DC4 8029B7B4 27A400C8 */  addiu $a0, $sp, 0xc8
/* 104DC8 8029B7B8 0C0AD3FE */  jal   func_802B4FF8
/* 104DCC 8029B7BC 00002825 */   move  $a1, $zero
/* 104DD0 8029B7C0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 104DD4 8029B7C4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 104DD8 8029B7C8 10400043 */  beqz  $v0, .L8029B8D8
/* 104DDC 8029B7CC C7A20044 */   lwc1  $f2, 0x44($sp)
/* 104DE0 8029B7D0 3C0F800E */  lui   $t7, %hi(D_800DC52C) # $t7, 0x800e
/* 104DE4 8029B7D4 8DEFC52C */  lw    $t7, %lo(D_800DC52C)($t7)
/* 104DE8 8029B7D8 3C01802C */  lui   $at, %hi(D_802B971C)
/* 104DEC 8029B7DC 15E00028 */  bnez  $t7, .L8029B880
/* 104DF0 8029B7E0 00000000 */   nop   
/* 104DF4 8029B7E4 3C01802C */  lui   $at, %hi(D_802B9714) # $at, 0x802c
/* 104DF8 8029B7E8 C42A9714 */  lwc1  $f10, %lo(D_802B9714)($at)
/* 104DFC 8029B7EC 3C190600 */  lui   $t9, 0x600
/* 104E00 8029B7F0 3C01802C */  lui   $at, %hi(D_802B9718) # $at, 0x802c
/* 104E04 8029B7F4 460A103C */  c.lt.s $f2, $f10
/* 104E08 8029B7F8 00000000 */  nop   
/* 104E0C 8029B7FC 45000009 */  bc1f  .L8029B824
/* 104E10 8029B800 00000000 */   nop   
/* 104E14 8029B804 8C620000 */  lw    $v0, ($v1)
/* 104E18 8029B808 3C090900 */  lui   $t1, %hi(toads_turnpike_dl_6) # $t1, 0x900
/* 104E1C 8029B80C 252902A0 */  addiu $t1, %lo(toads_turnpike_dl_6) # addiu $t1, $t1, 0x2a0
/* 104E20 8029B810 24580008 */  addiu $t8, $v0, 8
/* 104E24 8029B814 AC780000 */  sw    $t8, ($v1)
/* 104E28 8029B818 AC490004 */  sw    $t1, 4($v0)
/* 104E2C 8029B81C 1000002E */  b     .L8029B8D8
/* 104E30 8029B820 AC590000 */   sw    $t9, ($v0)
.L8029B824:
/* 104E34 8029B824 C4309718 */  lwc1  $f16, %lo(D_802B9718)($at)
/* 104E38 8029B828 3C0B0600 */  lui   $t3, 0x600
/* 104E3C 8029B82C 3C0E0600 */  lui   $t6, 0x600
/* 104E40 8029B830 4610103C */  c.lt.s $f2, $f16
/* 104E44 8029B834 00000000 */  nop   
/* 104E48 8029B838 4502000A */  bc1fl .L8029B864
/* 104E4C 8029B83C 8C620000 */   lw    $v0, ($v1)
/* 104E50 8029B840 8C620000 */  lw    $v0, ($v1)
/* 104E54 8029B844 3C0C0900 */  lui   $t4, %hi(toads_turnpike_dl_7) # $t4, 0x900
/* 104E58 8029B848 258C02D8 */  addiu $t4, %lo(toads_turnpike_dl_7) # addiu $t4, $t4, 0x2d8
/* 104E5C 8029B84C 244A0008 */  addiu $t2, $v0, 8
/* 104E60 8029B850 AC6A0000 */  sw    $t2, ($v1)
/* 104E64 8029B854 AC4C0004 */  sw    $t4, 4($v0)
/* 104E68 8029B858 1000001F */  b     .L8029B8D8
/* 104E6C 8029B85C AC4B0000 */   sw    $t3, ($v0)
/* 104E70 8029B860 8C620000 */  lw    $v0, ($v1)
.L8029B864:
/* 104E74 8029B864 3C0F0900 */  lui   $t7, %hi(toads_turnpike_dl_8) # $t7, 0x900
/* 104E78 8029B868 25EF0310 */  addiu $t7, %lo(toads_turnpike_dl_8) # addiu $t7, $t7, 0x310
/* 104E7C 8029B86C 244D0008 */  addiu $t5, $v0, 8
/* 104E80 8029B870 AC6D0000 */  sw    $t5, ($v1)
/* 104E84 8029B874 AC4F0004 */  sw    $t7, 4($v0)
/* 104E88 8029B878 10000017 */  b     .L8029B8D8
/* 104E8C 8029B87C AC4E0000 */   sw    $t6, ($v0)
.L8029B880:
/* 104E90 8029B880 C432971C */  lwc1  $f18, %lo(D_802B971C)($at)
/* 104E94 8029B884 3C190600 */  lui   $t9, 0x600
/* 104E98 8029B888 3C0B0600 */  lui   $t3, 0x600
/* 104E9C 8029B88C 4612103C */  c.lt.s $f2, $f18
/* 104EA0 8029B890 00000000 */  nop   
/* 104EA4 8029B894 4502000A */  bc1fl .L8029B8C0
/* 104EA8 8029B898 8C620000 */   lw    $v0, ($v1)
/* 104EAC 8029B89C 8C620000 */  lw    $v0, ($v1)
/* 104EB0 8029B8A0 3C090900 */  lui   $t1, %hi(toads_turnpike_dl_7) # $t1, 0x900
/* 104EB4 8029B8A4 252902D8 */  addiu $t1, %lo(toads_turnpike_dl_7) # addiu $t1, $t1, 0x2d8
/* 104EB8 8029B8A8 24580008 */  addiu $t8, $v0, 8
/* 104EBC 8029B8AC AC780000 */  sw    $t8, ($v1)
/* 104EC0 8029B8B0 AC490004 */  sw    $t1, 4($v0)
/* 104EC4 8029B8B4 10000008 */  b     .L8029B8D8
/* 104EC8 8029B8B8 AC590000 */   sw    $t9, ($v0)
/* 104ECC 8029B8BC 8C620000 */  lw    $v0, ($v1)
.L8029B8C0:
/* 104ED0 8029B8C0 3C0C0900 */  lui   $t4, %hi(toads_turnpike_dl_8) # $t4, 0x900
/* 104ED4 8029B8C4 258C0310 */  addiu $t4, %lo(toads_turnpike_dl_8) # addiu $t4, $t4, 0x310
/* 104ED8 8029B8C8 244A0008 */  addiu $t2, $v0, 8
/* 104EDC 8029B8CC AC6A0000 */  sw    $t2, ($v1)
/* 104EE0 8029B8D0 AC4C0004 */  sw    $t4, 4($v0)
/* 104EE4 8029B8D4 AC4B0000 */  sw    $t3, ($v0)
.L8029B8D8:
/* 104EE8 8029B8D8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 104EEC 8029B8DC 27BD0120 */  addiu $sp, $sp, 0x120
/* 104EF0 8029B8E0 03E00008 */  jr    $ra
/* 104EF4 8029B8E4 00000000 */   nop   
