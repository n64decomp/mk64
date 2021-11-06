glabel func_800BCAB4
/* 0BD6B4 800BCAB4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0BD6B8 800BCAB8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0BD6BC 800BCABC 8C820044 */  lw    $v0, 0x44($a0)
/* 0BD6C0 800BCAC0 00803825 */  move  $a3, $a0
/* 0BD6C4 800BCAC4 24E60034 */  addiu $a2, $a3, 0x34
/* 0BD6C8 800BCAC8 904E0018 */  lbu   $t6, 0x18($v0)
/* 0BD6CC 800BCACC 55C0000A */  bnel  $t6, $zero, .L800BCAF8
/* 0BD6D0 800BCAD0 8C45001C */   lw    $a1, 0x1c($v0)
/* 0BD6D4 800BCAD4 8C4F004C */  lw    $t7, 0x4c($v0)
/* 0BD6D8 800BCAD8 24840058 */  addiu $a0, $a0, 0x58
/* 0BD6DC 800BCADC 24E60034 */  addiu $a2, $a3, 0x34
/* 0BD6E0 800BCAE0 8DE50080 */  lw    $a1, 0x80($t7)
/* 0BD6E4 800BCAE4 0C02F96F */  jal   func_800BE5BC
/* 0BD6E8 800BCAE8 AFA70018 */   sw    $a3, 0x18($sp)
/* 0BD6EC 800BCAEC 10000006 */  b     .L800BCB08
/* 0BD6F0 800BCAF0 8FA70018 */   lw    $a3, 0x18($sp)
/* 0BD6F4 800BCAF4 8C45001C */  lw    $a1, 0x1c($v0)
.L800BCAF8:
/* 0BD6F8 800BCAF8 AFA70018 */  sw    $a3, 0x18($sp)
/* 0BD6FC 800BCAFC 0C02F96F */  jal   func_800BE5BC
/* 0BD700 800BCB00 24E40058 */   addiu $a0, $a3, 0x58
/* 0BD704 800BCB04 8FA70018 */  lw    $a3, 0x18($sp)
.L800BCB08:
/* 0BD708 800BCB08 24180001 */  li    $t8, 1
/* 0BD70C 800BCB0C 3C19800F */  lui   $t9, %hi(gDefaultNoteSub) # $t9, 0x800f
/* 0BD710 800BCB10 A0F80059 */  sb    $t8, 0x59($a3)
/* 0BD714 800BCB14 27396260 */  addiu $t9, %lo(gDefaultNoteSub) # addiu $t9, $t9, 0x6260
/* 0BD718 800BCB18 8F210000 */  lw    $at, ($t9)
/* 0BD71C 800BCB1C ACE100B0 */  sw    $at, 0xb0($a3)
/* 0BD720 800BCB20 8F290004 */  lw    $t1, 4($t9)
/* 0BD724 800BCB24 ACE900B4 */  sw    $t1, 0xb4($a3)
/* 0BD728 800BCB28 8F210008 */  lw    $at, 8($t9)
/* 0BD72C 800BCB2C ACE100B8 */  sw    $at, 0xb8($a3)
/* 0BD730 800BCB30 8F29000C */  lw    $t1, 0xc($t9)
/* 0BD734 800BCB34 ACE900BC */  sw    $t1, 0xbc($a3)
/* 0BD738 800BCB38 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0BD73C 800BCB3C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0BD740 800BCB40 03E00008 */  jr    $ra
/* 0BD744 800BCB44 00000000 */   nop   
