glabel func_802A65B8
/* 10FBC8 802A65B8 27BDFF58 */  addiu $sp, $sp, -0xa8
/* 10FBCC 802A65BC AFBF0034 */  sw    $ra, 0x34($sp)
/* 10FBD0 802A65C0 0C0A94AF */  jal   func_802A52BC
/* 10FBD4 802A65C4 AFB00030 */   sw    $s0, 0x30($sp)
/* 10FBD8 802A65C8 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 10FBDC 802A65CC 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 10FBE0 802A65D0 8E020000 */  lw    $v0, ($s0)
/* 10FBE4 802A65D4 3C180002 */  lui   $t8, (0x00022204 >> 16) # lui $t8, 2
/* 10FBE8 802A65D8 37182204 */  ori   $t8, (0x00022204 & 0xFFFF) # ori $t8, $t8, 0x2204
/* 10FBEC 802A65DC 244E0008 */  addiu $t6, $v0, 8
/* 10FBF0 802A65E0 AE0E0000 */  sw    $t6, ($s0)
/* 10FBF4 802A65E4 3C0FB700 */  lui   $t7, 0xb700
/* 10FBF8 802A65E8 AC4F0000 */  sw    $t7, ($v0)
/* 10FBFC 802A65EC 0C0A8F8F */  jal   func_802A3E3C
/* 10FC00 802A65F0 AC580004 */   sw    $t8, 4($v0)
/* 10FC04 802A65F4 3C04800E */  lui   $a0, %hi(D_800DC5F0) # $a0, 0x800e
/* 10FC08 802A65F8 0C0A8DCC */  jal   func_802A3730
/* 10FC0C 802A65FC 8C84C5F0 */   lw    $a0, %lo(D_800DC5F0)($a0)
/* 10FC10 802A6600 8E020000 */  lw    $v0, ($s0)
/* 10FC14 802A6604 3C0AB700 */  lui   $t2, 0xb700
/* 10FC18 802A6608 240B2205 */  li    $t3, 8709
/* 10FC1C 802A660C 24590008 */  addiu $t9, $v0, 8
/* 10FC20 802A6610 AE190000 */  sw    $t9, ($s0)
/* 10FC24 802A6614 3C018015 */  lui   $at, %hi(D_80150150) # $at, 0x8015
/* 10FC28 802A6618 AC4B0004 */  sw    $t3, 4($v0)
/* 10FC2C 802A661C AC4A0000 */  sw    $t2, ($v0)
/* 10FC30 802A6620 C4240150 */  lwc1  $f4, %lo(D_80150150)($at)
/* 10FC34 802A6624 3C018015 */  lui   $at, %hi(D_8015014C) # $at, 0x8015
/* 10FC38 802A6628 C426014C */  lwc1  $f6, %lo(D_8015014C)($at)
/* 10FC3C 802A662C 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 10FC40 802A6630 3C048015 */  lui   $a0, %hi(gGfxPool) # $a0, 0x8015
/* 10FC44 802A6634 8C84EF40 */  lw    $a0, %lo(gGfxPool)($a0)
/* 10FC48 802A6638 44814000 */  mtc1  $at, $f8
/* 10FC4C 802A663C 3C068015 */  lui   $a2, %hi(D_80150134) # $a2, 0x8015
/* 10FC50 802A6640 3C078015 */  lui   $a3, %hi(D_80150148) # $a3, 0x8015
/* 10FC54 802A6644 8CE70148 */  lw    $a3, %lo(D_80150148)($a3)
/* 10FC58 802A6648 8CC60134 */  lw    $a2, %lo(D_80150134)($a2)
/* 10FC5C 802A664C 27A5009A */  addiu $a1, $sp, 0x9a
/* 10FC60 802A6650 E7A40010 */  swc1  $f4, 0x10($sp)
/* 10FC64 802A6654 E7A60014 */  swc1  $f6, 0x14($sp)
/* 10FC68 802A6658 24840080 */  addiu $a0, $a0, 0x80
/* 10FC6C 802A665C 0C033CCC */  jal   guPerspective
/* 10FC70 802A6660 E7A80018 */   swc1  $f8, 0x18($sp)
/* 10FC74 802A6664 8E020000 */  lw    $v0, ($s0)
/* 10FC78 802A6668 3C0DB400 */  lui   $t5, 0xb400
/* 10FC7C 802A666C 3C180103 */  lui   $t8, (0x01030040 >> 16) # lui $t8, 0x103
/* 10FC80 802A6670 244C0008 */  addiu $t4, $v0, 8
/* 10FC84 802A6674 AE0C0000 */  sw    $t4, ($s0)
/* 10FC88 802A6678 AC4D0000 */  sw    $t5, ($v0)
/* 10FC8C 802A667C 97AE009A */  lhu   $t6, 0x9a($sp)
/* 10FC90 802A6680 3C098015 */  lui   $t1, %hi(gGfxPool) # $t1, 0x8015
/* 10FC94 802A6684 37180040 */  ori   $t8, (0x01030040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 10FC98 802A6688 AC4E0004 */  sw    $t6, 4($v0)
/* 10FC9C 802A668C 8E020000 */  lw    $v0, ($s0)
/* 10FCA0 802A6690 2529EF40 */  addiu $t1, %lo(gGfxPool) # addiu $t1, $t1, -0x10c0
/* 10FCA4 802A6694 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10FCA8 802A6698 244F0008 */  addiu $t7, $v0, 8
/* 10FCAC 802A669C AE0F0000 */  sw    $t7, ($s0)
/* 10FCB0 802A66A0 AC580000 */  sw    $t8, ($v0)
/* 10FCB4 802A66A4 8D390000 */  lw    $t9, ($t1)
/* 10FCB8 802A66A8 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10FCBC 802A66AC 3C058016 */  lui   $a1, %hi(D_801647A8) # $a1, 0x8016
/* 10FCC0 802A66B0 272A0080 */  addiu $t2, $t9, 0x80
/* 10FCC4 802A66B4 01415824 */  and   $t3, $t2, $at
/* 10FCC8 802A66B8 AC4B0004 */  sw    $t3, 4($v0)
/* 10FCCC 802A66BC 3C018016 */  lui   $at, %hi(D_801647B4) # $at, 0x8016
/* 10FCD0 802A66C0 C42A47B4 */  lwc1  $f10, %lo(D_801647B4)($at)
/* 10FCD4 802A66C4 3C018016 */  lui   $at, %hi(D_801647B8) # $at, 0x8016
/* 10FCD8 802A66C8 C43047B8 */  lwc1  $f16, %lo(D_801647B8)($at)
/* 10FCDC 802A66CC 3C018016 */  lui   $at, %hi(D_801647BC) # $at, 0x8016
/* 10FCE0 802A66D0 C43247BC */  lwc1  $f18, %lo(D_801647BC)($at)
/* 10FCE4 802A66D4 3C018016 */  lui   $at, %hi(D_801647C0) # $at, 0x8016
/* 10FCE8 802A66D8 C42447C0 */  lwc1  $f4, %lo(D_801647C0)($at)
/* 10FCEC 802A66DC 3C018016 */  lui   $at, %hi(D_801647C4) # $at, 0x8016
/* 10FCF0 802A66E0 C42647C4 */  lwc1  $f6, %lo(D_801647C4)($at)
/* 10FCF4 802A66E4 3C018016 */  lui   $at, %hi(D_801647C8) # $at, 0x8016
/* 10FCF8 802A66E8 C42847C8 */  lwc1  $f8, %lo(D_801647C8)($at)
/* 10FCFC 802A66EC 8D240000 */  lw    $a0, ($t1)
/* 10FD00 802A66F0 3C068016 */  lui   $a2, %hi(D_801647AC) # $a2, 0x8016
/* 10FD04 802A66F4 3C078016 */  lui   $a3, %hi(D_801647B0) # $a3, 0x8016
/* 10FD08 802A66F8 8CE747B0 */  lw    $a3, %lo(D_801647B0)($a3)
/* 10FD0C 802A66FC 8CC647AC */  lw    $a2, %lo(D_801647AC)($a2)
/* 10FD10 802A6700 8CA547A8 */  lw    $a1, %lo(D_801647A8)($a1)
/* 10FD14 802A6704 E7AA0010 */  swc1  $f10, 0x10($sp)
/* 10FD18 802A6708 E7B00014 */  swc1  $f16, 0x14($sp)
/* 10FD1C 802A670C E7B20018 */  swc1  $f18, 0x18($sp)
/* 10FD20 802A6710 E7A4001C */  swc1  $f4, 0x1c($sp)
/* 10FD24 802A6714 E7A60020 */  swc1  $f6, 0x20($sp)
/* 10FD28 802A6718 E7A80024 */  swc1  $f8, 0x24($sp)
/* 10FD2C 802A671C 0C033D92 */  jal   guLookAt
/* 10FD30 802A6720 24840200 */   addiu $a0, $a0, 0x200
/* 10FD34 802A6724 3C0C800E */  lui   $t4, %hi(D_800DC5C8) # $t4, 0x800e
/* 10FD38 802A6728 958CC5C8 */  lhu   $t4, %lo(D_800DC5C8)($t4)
/* 10FD3C 802A672C 55800016 */  bnel  $t4, $zero, .L802A6788
/* 10FD40 802A6730 8E020000 */   lw    $v0, ($s0)
/* 10FD44 802A6734 8E020000 */  lw    $v0, ($s0)
/* 10FD48 802A6738 3C0E0101 */  lui   $t6, (0x01010040 >> 16) # lui $t6, 0x101
/* 10FD4C 802A673C 35CE0040 */  ori   $t6, (0x01010040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 10FD50 802A6740 244D0008 */  addiu $t5, $v0, 8
/* 10FD54 802A6744 AE0D0000 */  sw    $t5, ($s0)
/* 10FD58 802A6748 3C0F8015 */  lui   $t7, %hi(gGfxPool) # $t7, 0x8015
/* 10FD5C 802A674C AC4E0000 */  sw    $t6, ($v0)
/* 10FD60 802A6750 8DEFEF40 */  lw    $t7, %lo(gGfxPool)($t7)
/* 10FD64 802A6754 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10FD68 802A6758 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10FD6C 802A675C 25F80200 */  addiu $t8, $t7, 0x200
/* 10FD70 802A6760 0301C824 */  and   $t9, $t8, $at
/* 10FD74 802A6764 27A40058 */  addiu $a0, $sp, 0x58
/* 10FD78 802A6768 0C0AD4F2 */  jal   func_802B53C8
/* 10FD7C 802A676C AC590004 */   sw    $t9, 4($v0)
/* 10FD80 802A6770 27A40058 */  addiu $a0, $sp, 0x58
/* 10FD84 802A6774 0C0AD3FE */  jal   func_802B4FF8
/* 10FD88 802A6778 00002825 */   move  $a1, $zero
/* 10FD8C 802A677C 1000000E */  b     .L802A67B8
/* 10FD90 802A6780 00000000 */   nop   
/* 10FD94 802A6784 8E020000 */  lw    $v0, ($s0)
.L802A6788:
/* 10FD98 802A6788 3C0B0102 */  lui   $t3, (0x01020040 >> 16) # lui $t3, 0x102
/* 10FD9C 802A678C 356B0040 */  ori   $t3, (0x01020040 & 0xFFFF) # ori $t3, $t3, 0x40
/* 10FDA0 802A6790 244A0008 */  addiu $t2, $v0, 8
/* 10FDA4 802A6794 AE0A0000 */  sw    $t2, ($s0)
/* 10FDA8 802A6798 3C0C8015 */  lui   $t4, %hi(gGfxPool) # $t4, 0x8015
/* 10FDAC 802A679C AC4B0000 */  sw    $t3, ($v0)
/* 10FDB0 802A67A0 8D8CEF40 */  lw    $t4, %lo(gGfxPool)($t4)
/* 10FDB4 802A67A4 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10FDB8 802A67A8 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10FDBC 802A67AC 258D0200 */  addiu $t5, $t4, 0x200
/* 10FDC0 802A67B0 01A17024 */  and   $t6, $t5, $at
/* 10FDC4 802A67B4 AC4E0004 */  sw    $t6, 4($v0)
.L802A67B8:
/* 10FDC8 802A67B8 3C04800E */  lui   $a0, %hi(D_800DC5F0) # $a0, 0x800e
/* 10FDCC 802A67BC 0C0A568E */  jal   func_80295A38
/* 10FDD0 802A67C0 8C84C5F0 */   lw    $a0, %lo(D_800DC5F0)($a0)
/* 10FDD4 802A67C4 3C0F800E */  lui   $t7, %hi(D_800DC5C8) # $t7, 0x800e
/* 10FDD8 802A67C8 95EFC5C8 */  lhu   $t7, %lo(D_800DC5C8)($t7)
/* 10FDDC 802A67CC 24010001 */  li    $at, 1
/* 10FDE0 802A67D0 15E10013 */  bne   $t7, $at, .L802A6820
/* 10FDE4 802A67D4 00000000 */   nop   
/* 10FDE8 802A67D8 8E020000 */  lw    $v0, ($s0)
/* 10FDEC 802A67DC 3C190101 */  lui   $t9, (0x01010040 >> 16) # lui $t9, 0x101
/* 10FDF0 802A67E0 37390040 */  ori   $t9, (0x01010040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 10FDF4 802A67E4 24580008 */  addiu $t8, $v0, 8
/* 10FDF8 802A67E8 AE180000 */  sw    $t8, ($s0)
/* 10FDFC 802A67EC 3C0A8015 */  lui   $t2, %hi(gGfxPool) # $t2, 0x8015
/* 10FE00 802A67F0 AC590000 */  sw    $t9, ($v0)
/* 10FE04 802A67F4 8D4AEF40 */  lw    $t2, %lo(gGfxPool)($t2)
/* 10FE08 802A67F8 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10FE0C 802A67FC 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10FE10 802A6800 254B0200 */  addiu $t3, $t2, 0x200
/* 10FE14 802A6804 01616024 */  and   $t4, $t3, $at
/* 10FE18 802A6808 27A40058 */  addiu $a0, $sp, 0x58
/* 10FE1C 802A680C 0C0AD4F2 */  jal   func_802B53C8
/* 10FE20 802A6810 AC4C0004 */   sw    $t4, 4($v0)
/* 10FE24 802A6814 27A40058 */  addiu $a0, $sp, 0x58
/* 10FE28 802A6818 0C0AD3FE */  jal   func_802B4FF8
/* 10FE2C 802A681C 00002825 */   move  $a1, $zero
.L802A6820:
/* 10FE30 802A6820 3C04800E */  lui   $a0, %hi(D_800DC5F0) # $a0, 0x800e
/* 10FE34 802A6824 0C0A8C02 */  jal   func_802A3008
/* 10FE38 802A6828 8C84C5F0 */   lw    $a0, %lo(D_800DC5F0)($a0)
/* 10FE3C 802A682C 0C016024 */  jal   func_80058090
/* 10FE40 802A6830 24040004 */   li    $a0, 4
/* 10FE44 802A6834 0C008577 */  jal   func_800215DC
/* 10FE48 802A6838 00000000 */   nop   
/* 10FE4C 802A683C 3C04800E */  lui   $a0, %hi(D_800DC5F0) # $a0, 0x800e
/* 10FE50 802A6840 8C84C5F0 */  lw    $a0, %lo(D_800DC5F0)($a0)
/* 10FE54 802A6844 0C0A448B */  jal   func_8029122C
/* 10FE58 802A6848 24050001 */   li    $a1, 1
/* 10FE5C 802A684C 0C00871E */  jal   func_80021C78
/* 10FE60 802A6850 00000000 */   nop   
/* 10FE64 802A6854 3C04800E */  lui   $a0, %hi(D_800DC5F0) # $a0, 0x800e
/* 10FE68 802A6858 0C0A8BCD */  jal   func_802A2F34
/* 10FE6C 802A685C 8C84C5F0 */   lw    $a0, %lo(D_800DC5F0)($a0)
/* 10FE70 802A6860 0C01614E */  jal   func_80058538
/* 10FE74 802A6864 24040004 */   li    $a0, 4
/* 10FE78 802A6868 0C0162FD */  jal   func_80058BF4
/* 10FE7C 802A686C 00000000 */   nop   
/* 10FE80 802A6870 3C10800E */  lui   $s0, %hi(D_800DC5B8) # $s0, 0x800e
/* 10FE84 802A6874 2610C5B8 */  addiu $s0, %lo(D_800DC5B8) # addiu $s0, $s0, -0x3a48
/* 10FE88 802A6878 960D0000 */  lhu   $t5, ($s0)
/* 10FE8C 802A687C 11A00003 */  beqz  $t5, .L802A688C
/* 10FE90 802A6880 00000000 */   nop   
/* 10FE94 802A6884 0C016308 */  jal   func_80058C20
/* 10FE98 802A6888 24040004 */   li    $a0, 4
.L802A688C:
/* 10FE9C 802A688C 0C024E97 */  jal   func_80093A5C
/* 10FEA0 802A6890 24040004 */   li    $a0, 4
/* 10FEA4 802A6894 960E0000 */  lhu   $t6, ($s0)
/* 10FEA8 802A6898 11C00003 */  beqz  $t6, .L802A68A8
/* 10FEAC 802A689C 00000000 */   nop   
/* 10FEB0 802A68A0 0C01636D */  jal   func_80058DB4
/* 10FEB4 802A68A4 24040004 */   li    $a0, 4
.L802A68A8:
/* 10FEB8 802A68A8 3C028016 */  lui   $v0, %hi(D_8015F788) # $v0, 0x8016
/* 10FEBC 802A68AC 2442F788 */  addiu $v0, %lo(D_8015F788) # addiu $v0, $v0, -0x878
/* 10FEC0 802A68B0 8C4F0000 */  lw    $t7, ($v0)
/* 10FEC4 802A68B4 8FBF0034 */  lw    $ra, 0x34($sp)
/* 10FEC8 802A68B8 8FB00030 */  lw    $s0, 0x30($sp)
/* 10FECC 802A68BC 25F80001 */  addiu $t8, $t7, 1
/* 10FED0 802A68C0 AC580000 */  sw    $t8, ($v0)
/* 10FED4 802A68C4 03E00008 */  jr    $ra
/* 10FED8 802A68C8 27BD00A8 */   addiu $sp, $sp, 0xa8
