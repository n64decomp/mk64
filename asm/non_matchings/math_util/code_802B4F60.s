glabel func_802B4F60
/* 11E570 802B4F60 27BDFF90 */  addiu $sp, $sp, -0x70
/* 11E574 802B4F64 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11E578 802B4F68 AFA40070 */  sw    $a0, 0x70($sp)
/* 11E57C 802B4F6C AFA60078 */  sw    $a2, 0x78($sp)
/* 11E580 802B4F70 AFA7007C */  sw    $a3, 0x7c($sp)
/* 11E584 802B4F74 0C0AD4B6 */  jal   vec3f_copy
/* 11E588 802B4F78 27A4001C */   addiu $a0, $sp, 0x1c
/* 11E58C 802B4F7C C7AC001C */  lwc1  $f12, 0x1c($sp)
/* 11E590 802B4F80 C7A4003C */  lwc1  $f4, 0x3c($sp)
/* 11E594 802B4F84 C7AE0020 */  lwc1  $f14, 0x20($sp)
/* 11E598 802B4F88 C7A8004C */  lwc1  $f8, 0x4c($sp)
/* 11E59C 802B4F8C 460C2182 */  mul.s $f6, $f4, $f12
/* 11E5A0 802B4F90 C7A40024 */  lwc1  $f4, 0x24($sp)
/* 11E5A4 802B4F94 C7B2005C */  lwc1  $f18, 0x5c($sp)
/* 11E5A8 802B4F98 460E4282 */  mul.s $f10, $f8, $f14
/* 11E5AC 802B4F9C 27A4001C */  addiu $a0, $sp, 0x1c
/* 11E5B0 802B4FA0 27A50030 */  addiu $a1, $sp, 0x30
/* 11E5B4 802B4FA4 46049202 */  mul.s $f8, $f18, $f4
/* 11E5B8 802B4FA8 460A3400 */  add.s $f16, $f6, $f10
/* 11E5BC 802B4FAC C7AA006C */  lwc1  $f10, 0x6c($sp)
/* 11E5C0 802B4FB0 46088180 */  add.s $f6, $f16, $f8
/* 11E5C4 802B4FB4 46065080 */  add.s $f2, $f10, $f6
/* 11E5C8 802B4FB8 0C0AD90D */  jal   func_802B6434
/* 11E5CC 802B4FBC E7A2002C */   swc1  $f2, 0x2c($sp)
/* 11E5D0 802B4FC0 C7A2002C */  lwc1  $f2, 0x2c($sp)
/* 11E5D4 802B4FC4 44809000 */  mtc1  $zero, $f18
/* 11E5D8 802B4FC8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11E5DC 802B4FCC 24020001 */  li    $v0, 1
/* 11E5E0 802B4FD0 4612103E */  c.le.s $f2, $f18
/* 11E5E4 802B4FD4 00000000 */  nop   
/* 11E5E8 802B4FD8 45000003 */  bc1f  .L802B4FE8
/* 11E5EC 802B4FDC 00000000 */   nop   
/* 11E5F0 802B4FE0 10000001 */  b     .L802B4FE8
/* 11E5F4 802B4FE4 00001025 */   move  $v0, $zero
.L802B4FE8:
/* 11E5F8 802B4FE8 03E00008 */  jr    $ra
/* 11E5FC 802B4FEC 27BD0070 */   addiu $sp, $sp, 0x70

/* 11E600 802B4FF0 03E00008 */  jr    $ra
/* 11E604 802B4FF4 00000000 */   nop   

glabel func_802B4FF8
/* 11E608 802B4FF8 3C068015 */  lui   $a2, %hi(D_80150112) # $a2, 0x8015
/* 11E60C 802B4FFC 24C60112 */  addiu $a2, %lo(D_80150112) # addiu $a2, $a2, 0x112
/* 11E610 802B5000 94C20000 */  lhu   $v0, ($a2)
/* 11E614 802B5004 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 11E618 802B5008 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11E61C 802B500C 28410080 */  slti  $at, $v0, 0x80
/* 11E620 802B5010 AFA40018 */  sw    $a0, 0x18($sp)
/* 11E624 802B5014 14200003 */  bnez  $at, .L802B5024
/* 11E628 802B5018 00A03825 */   move  $a3, $a1
/* 11E62C 802B501C 1000006E */  b     .L802B51D8
/* 11E630 802B5020 00001025 */   move  $v0, $zero
.L802B5024:
/* 11E634 802B5024 3C088015 */  lui   $t0, %hi(gGfxPool) # $t0, 0x8015
/* 11E638 802B5028 2508EF40 */  addiu $t0, %lo(gGfxPool) # addiu $t0, $t0, -0x10c0
/* 11E63C 802B502C 8D0E0000 */  lw    $t6, ($t0)
/* 11E640 802B5030 00027980 */  sll   $t7, $v0, 6
/* 11E644 802B5034 3409CAC0 */  li    $t1, 51904
/* 11E648 802B5038 01CFC021 */  addu  $t8, $t6, $t7
/* 11E64C 802B503C 03092021 */  addu  $a0, $t8, $t1
/* 11E650 802B5040 8FA50018 */  lw    $a1, 0x18($sp)
/* 11E654 802B5044 0C0ADD7E */  jal   func_802B75F8
/* 11E658 802B5048 AFA7001C */   sw    $a3, 0x1c($sp)
/* 11E65C 802B504C 8FA7001C */  lw    $a3, 0x1c($sp)
/* 11E660 802B5050 3C068015 */  lui   $a2, %hi(D_80150112) # $a2, 0x8015
/* 11E664 802B5054 3C088015 */  lui   $t0, %hi(gGfxPool) # $t0, 0x8015
/* 11E668 802B5058 2508EF40 */  addiu $t0, %lo(gGfxPool) # addiu $t0, $t0, -0x10c0
/* 11E66C 802B505C 24C60112 */  addiu $a2, %lo(D_80150112) # addiu $a2, $a2, 0x112
/* 11E670 802B5060 10E0000C */  beqz  $a3, .L802B5094
/* 11E674 802B5064 3409CAC0 */   li    $t1, 51904
/* 11E678 802B5068 24010001 */  li    $at, 1
/* 11E67C 802B506C 10E1001E */  beq   $a3, $at, .L802B50E8
/* 11E680 802B5070 3C048015 */   lui   $a0, %hi(gDisplayListHead) # 0x8015
/* 11E684 802B5074 24010002 */  li    $at, 2
/* 11E688 802B5078 10E10043 */  beq   $a3, $at, .L802B5188
/* 11E68C 802B507C 3C048015 */   lui   $a0, %hi(gDisplayListHead) # 0x8015
/* 11E690 802B5080 24010003 */  li    $at, 3
/* 11E694 802B5084 10E1002C */  beq   $a3, $at, .L802B5138
/* 11E698 802B5088 3C048015 */   lui   $a0, %hi(gDisplayListHead) # 0x8015
/* 11E69C 802B508C 10000052 */  b     .L802B51D8
/* 11E6A0 802B5090 24020001 */   li    $v0, 1
.L802B5094:
/* 11E6A4 802B5094 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 11E6A8 802B5098 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 11E6AC 802B509C 8C820000 */  lw    $v0, ($a0)
/* 11E6B0 802B50A0 3C0A0102 */  lui   $t2, (0x01020040 >> 16) # lui $t2, 0x102
/* 11E6B4 802B50A4 354A0040 */  ori   $t2, (0x01020040 & 0xFFFF) # ori $t2, $t2, 0x40
/* 11E6B8 802B50A8 24590008 */  addiu $t9, $v0, 8
/* 11E6BC 802B50AC AC990000 */  sw    $t9, ($a0)
/* 11E6C0 802B50B0 AC4A0000 */  sw    $t2, ($v0)
/* 11E6C4 802B50B4 94CC0000 */  lhu   $t4, ($a2)
/* 11E6C8 802B50B8 8D0B0000 */  lw    $t3, ($t0)
/* 11E6CC 802B50BC 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 11E6D0 802B50C0 000C6980 */  sll   $t5, $t4, 6
/* 11E6D4 802B50C4 016D7021 */  addu  $t6, $t3, $t5
/* 11E6D8 802B50C8 01C97821 */  addu  $t7, $t6, $t1
/* 11E6DC 802B50CC 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 11E6E0 802B50D0 01E1C024 */  and   $t8, $t7, $at
/* 11E6E4 802B50D4 AC580004 */  sw    $t8, 4($v0)
/* 11E6E8 802B50D8 94D90000 */  lhu   $t9, ($a2)
/* 11E6EC 802B50DC 272A0001 */  addiu $t2, $t9, 1
/* 11E6F0 802B50E0 1000003C */  b     .L802B51D4
/* 11E6F4 802B50E4 A4CA0000 */   sh    $t2, ($a2)
.L802B50E8:
/* 11E6F8 802B50E8 24840298 */  addiu $a0, $a0, %lo(gDisplayListHead) # 0x298
/* 11E6FC 802B50EC 8C820000 */  lw    $v0, ($a0)
/* 11E700 802B50F0 3C0B0106 */  lui   $t3, (0x01060040 >> 16) # lui $t3, 0x106
/* 11E704 802B50F4 356B0040 */  ori   $t3, (0x01060040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 11E708 802B50F8 244C0008 */  addiu $t4, $v0, 8
/* 11E70C 802B50FC AC8C0000 */  sw    $t4, ($a0)
/* 11E710 802B5100 AC4B0000 */  sw    $t3, ($v0)
/* 11E714 802B5104 94CE0000 */  lhu   $t6, ($a2)
/* 11E718 802B5108 8D0D0000 */  lw    $t5, ($t0)
/* 11E71C 802B510C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 11E720 802B5110 000E7980 */  sll   $t7, $t6, 6
/* 11E724 802B5114 01AFC021 */  addu  $t8, $t5, $t7
/* 11E728 802B5118 0309C821 */  addu  $t9, $t8, $t1
/* 11E72C 802B511C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 11E730 802B5120 03215024 */  and   $t2, $t9, $at
/* 11E734 802B5124 AC4A0004 */  sw    $t2, 4($v0)
/* 11E738 802B5128 94CC0000 */  lhu   $t4, ($a2)
/* 11E73C 802B512C 258B0001 */  addiu $t3, $t4, 1
/* 11E740 802B5130 10000028 */  b     .L802B51D4
/* 11E744 802B5134 A4CB0000 */   sh    $t3, ($a2)
.L802B5138:
/* 11E748 802B5138 24840298 */  addiu $a0, $a0, %lo(gDisplayListHead) # 0x298
/* 11E74C 802B513C 8C820000 */  lw    $v0, ($a0)
/* 11E750 802B5140 3C0D0104 */  lui   $t5, (0x01040040 >> 16) # lui $t5, 0x104
/* 11E754 802B5144 35AD0040 */  ori   $t5, (0x01040040 & 0xFFFF) # ori $t5, $t5, 0x40
/* 11E758 802B5148 244E0008 */  addiu $t6, $v0, 8
/* 11E75C 802B514C AC8E0000 */  sw    $t6, ($a0)
/* 11E760 802B5150 AC4D0000 */  sw    $t5, ($v0)
/* 11E764 802B5154 94D80000 */  lhu   $t8, ($a2)
/* 11E768 802B5158 8D0F0000 */  lw    $t7, ($t0)
/* 11E76C 802B515C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 11E770 802B5160 0018C980 */  sll   $t9, $t8, 6
/* 11E774 802B5164 01F95021 */  addu  $t2, $t7, $t9
/* 11E778 802B5168 01496021 */  addu  $t4, $t2, $t1
/* 11E77C 802B516C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 11E780 802B5170 01815824 */  and   $t3, $t4, $at
/* 11E784 802B5174 AC4B0004 */  sw    $t3, 4($v0)
/* 11E788 802B5178 94CE0000 */  lhu   $t6, ($a2)
/* 11E78C 802B517C 25CD0001 */  addiu $t5, $t6, 1
/* 11E790 802B5180 10000014 */  b     .L802B51D4
/* 11E794 802B5184 A4CD0000 */   sh    $t5, ($a2)
.L802B5188:
/* 11E798 802B5188 24840298 */  addiu $a0, $a0, %lo(gDisplayListHead) # 0x298
/* 11E79C 802B518C 8C820000 */  lw    $v0, ($a0)
/* 11E7A0 802B5190 3C0F0100 */  lui   $t7, (0x01000040 >> 16) # lui $t7, 0x100
/* 11E7A4 802B5194 35EF0040 */  ori   $t7, (0x01000040 & 0xFFFF) # ori $t7, $t7, 0x40
/* 11E7A8 802B5198 24580008 */  addiu $t8, $v0, 8
/* 11E7AC 802B519C AC980000 */  sw    $t8, ($a0)
/* 11E7B0 802B51A0 AC4F0000 */  sw    $t7, ($v0)
/* 11E7B4 802B51A4 94CA0000 */  lhu   $t2, ($a2)
/* 11E7B8 802B51A8 8D190000 */  lw    $t9, ($t0)
/* 11E7BC 802B51AC 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 11E7C0 802B51B0 000A6180 */  sll   $t4, $t2, 6
/* 11E7C4 802B51B4 032C5821 */  addu  $t3, $t9, $t4
/* 11E7C8 802B51B8 01697021 */  addu  $t6, $t3, $t1
/* 11E7CC 802B51BC 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 11E7D0 802B51C0 01C16824 */  and   $t5, $t6, $at
/* 11E7D4 802B51C4 AC4D0004 */  sw    $t5, 4($v0)
/* 11E7D8 802B51C8 94D80000 */  lhu   $t8, ($a2)
/* 11E7DC 802B51CC 270F0001 */  addiu $t7, $t8, 1
/* 11E7E0 802B51D0 A4CF0000 */  sh    $t7, ($a2)
.L802B51D4:
/* 11E7E4 802B51D4 24020001 */  li    $v0, 1
.L802B51D8:
/* 11E7E8 802B51D8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11E7EC 802B51DC 27BD0018 */  addiu $sp, $sp, 0x18
/* 11E7F0 802B51E0 03E00008 */  jr    $ra
/* 11E7F4 802B51E4 00000000 */   nop   

