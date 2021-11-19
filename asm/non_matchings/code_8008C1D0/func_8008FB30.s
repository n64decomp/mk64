glabel func_8008FB30
/* 090730 8008FB30 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 090734 8008FB34 AFBF0014 */  sw    $ra, 0x14($sp)
/* 090738 8008FB38 AFA5001C */  sw    $a1, 0x1c($sp)
/* 09073C 8008FB3C 849800C6 */  lh    $t8, 0xc6($a0)
/* 090740 8008FB40 00057600 */  sll   $t6, $a1, 0x18
/* 090744 8008FB44 000E7E03 */  sra   $t7, $t6, 0x18
/* 090748 8008FB48 27190008 */  addiu $t9, $t8, 8
/* 09074C 8008FB4C A49900C6 */  sh    $t9, 0xc6($a0)
/* 090750 8008FB50 848800C6 */  lh    $t0, 0xc6($a0)
/* 090754 8008FB54 01E02825 */  move  $a1, $t7
/* 090758 8008FB58 00803025 */  move  $a2, $a0
/* 09075C 8008FB5C 290100F0 */  slti  $at, $t0, 0xf0
/* 090760 8008FB60 14200014 */  bnez  $at, .L8008FBB4
/* 090764 8008FB64 240300FF */   li    $v1, 255
/* 090768 8008FB68 000F4880 */  sll   $t1, $t7, 2
/* 09076C 8008FB6C 3C018019 */  lui   $at, %hi(D_8018D970) # 0x8019
/* 090770 8008FB70 A48300C6 */  sh    $v1, 0xc6($a0)
/* 090774 8008FB74 00290821 */  addu  $at, $at, $t1
/* 090778 8008FB78 AC23D970 */  sw    $v1, %lo(D_8018D970)($at) # -0x2690($at)
/* 09077C 8008FB7C 8C8A00BC */  lw    $t2, 0xbc($a0)
/* 090780 8008FB80 948C0000 */  lhu   $t4, ($a0)
/* 090784 8008FB84 3C017FFF */  lui   $at, (0x7FFFFFFF >> 16) # lui $at, 0x7fff
/* 090788 8008FB88 3421FFFF */  ori   $at, (0x7FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 09078C 8008FB8C 01415824 */  and   $t3, $t2, $at
/* 090790 8008FB90 318D4000 */  andi  $t5, $t4, 0x4000
/* 090794 8008FB94 11A00007 */  beqz  $t5, .L8008FBB4
/* 090798 8008FB98 AC8B00BC */   sw    $t3, 0xbc($a0)
/* 09079C 8008FB9C 31E400FF */  andi  $a0, $t7, 0xff
/* 0907A0 8008FBA0 A3AF001F */  sb    $t7, 0x1f($sp)
/* 0907A4 8008FBA4 0C032C19 */  jal   func_800CB064
/* 0907A8 8008FBA8 AFA60018 */   sw    $a2, 0x18($sp)
/* 0907AC 8008FBAC 83A5001F */  lb    $a1, 0x1f($sp)
/* 0907B0 8008FBB0 8FA60018 */  lw    $a2, 0x18($sp)
.L8008FBB4:
/* 0907B4 8008FBB4 3C0F8019 */  lui   $t7, %hi(D_8018D970) # $t7, 0x8019
/* 0907B8 8008FBB8 25EFD970 */  addiu $t7, %lo(D_8018D970) # addiu $t7, $t7, -0x2690
/* 0907BC 8008FBBC 00057080 */  sll   $t6, $a1, 2
/* 0907C0 8008FBC0 01CF1021 */  addu  $v0, $t6, $t7
/* 0907C4 8008FBC4 8C580000 */  lw    $t8, ($v0)
/* 0907C8 8008FBC8 240300FF */  li    $v1, 255
/* 0907CC 8008FBCC 27190010 */  addiu $t9, $t8, 0x10
/* 0907D0 8008FBD0 2B2100E0 */  slti  $at, $t9, 0xe0
/* 0907D4 8008FBD4 1420000D */  bnez  $at, .L8008FC0C
/* 0907D8 8008FBD8 AC590000 */   sw    $t9, ($v0)
/* 0907DC 8008FBDC AC430000 */  sw    $v1, ($v0)
/* 0907E0 8008FBE0 8CC900BC */  lw    $t1, 0xbc($a2)
/* 0907E4 8008FBE4 94CB0000 */  lhu   $t3, ($a2)
/* 0907E8 8008FBE8 3C017FFF */  lui   $at, (0x7FFFFFFF >> 16) # lui $at, 0x7fff
/* 0907EC 8008FBEC 3421FFFF */  ori   $at, (0x7FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0907F0 8008FBF0 01215024 */  and   $t2, $t1, $at
/* 0907F4 8008FBF4 316C4000 */  andi  $t4, $t3, 0x4000
/* 0907F8 8008FBF8 A4C300C6 */  sh    $v1, 0xc6($a2)
/* 0907FC 8008FBFC 11800003 */  beqz  $t4, .L8008FC0C
/* 090800 8008FC00 ACCA00BC */   sw    $t2, 0xbc($a2)
/* 090804 8008FC04 0C032C19 */  jal   func_800CB064
/* 090808 8008FC08 30A400FF */   andi  $a0, $a1, 0xff
.L8008FC0C:
/* 09080C 8008FC0C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 090810 8008FC10 27BD0018 */  addiu $sp, $sp, 0x18
/* 090814 8008FC14 03E00008 */  jr    $ra
/* 090818 8008FC18 00000000 */   nop   
