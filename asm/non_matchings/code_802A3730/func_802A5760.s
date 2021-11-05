glabel func_802A5760
/* 10ED70 802A5760 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 10ED74 802A5764 AFBF001C */  sw    $ra, 0x1c($sp)
/* 10ED78 802A5768 0C0A8F8F */  jal   func_802A3E3C
/* 10ED7C 802A576C 00000000 */   nop   
/* 10ED80 802A5770 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10ED84 802A5774 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10ED88 802A5778 8C620000 */  lw    $v0, ($v1)
/* 10ED8C 802A577C 3C0FB600 */  lui   $t7, 0xb600
/* 10ED90 802A5780 2418FFFF */  li    $t8, -1
/* 10ED94 802A5784 244E0008 */  addiu $t6, $v0, 8
/* 10ED98 802A5788 AC6E0000 */  sw    $t6, ($v1)
/* 10ED9C 802A578C AC580004 */  sw    $t8, 4($v0)
/* 10EDA0 802A5790 AC4F0000 */  sw    $t7, ($v0)
/* 10EDA4 802A5794 8C620000 */  lw    $v0, ($v1)
/* 10EDA8 802A5798 3C0F0080 */  lui   $t7, (0x00800204 >> 16) # lui $t7, 0x80
/* 10EDAC 802A579C 35EF0204 */  ori   $t7, (0x00800204 & 0xFFFF) # ori $t7, $t7, 0x204
/* 10EDB0 802A57A0 24590008 */  addiu $t9, $v0, 8
/* 10EDB4 802A57A4 AC790000 */  sw    $t9, ($v1)
/* 10EDB8 802A57A8 3C0EB700 */  lui   $t6, 0xb700
/* 10EDBC 802A57AC 3C18800E */  lui   $t8, %hi(gPlayerCountSelection1) # $t8, 0x800e
/* 10EDC0 802A57B0 AC4E0000 */  sw    $t6, ($v0)
/* 10EDC4 802A57B4 AC4F0004 */  sw    $t7, 4($v0)
/* 10EDC8 802A57B8 8F18C538 */  lw    $t8, %lo(gPlayerCountSelection1)($t8)
/* 10EDCC 802A57BC 24010003 */  li    $at, 3
/* 10EDD0 802A57C0 3C04800E */  lui   $a0, %hi(D_800DC5F8) # 0x800e
/* 10EDD4 802A57C4 17010053 */  bne   $t8, $at, .L802A5914
/* 10EDD8 802A57C8 00000000 */   nop   
/* 10EDDC 802A57CC 8C620000 */  lw    $v0, ($v1)
/* 10EDE0 802A57D0 3C0EE700 */  lui   $t6, 0xe700
/* 10EDE4 802A57D4 3C04800E */  lui   $a0, %hi(D_800DC5F8) # $a0, 0x800e
/* 10EDE8 802A57D8 24590008 */  addiu $t9, $v0, 8
/* 10EDEC 802A57DC AC790000 */  sw    $t9, ($v1)
/* 10EDF0 802A57E0 AC400004 */  sw    $zero, 4($v0)
/* 10EDF4 802A57E4 AC4E0000 */  sw    $t6, ($v0)
/* 10EDF8 802A57E8 0C0A8E78 */  jal   func_802A39E0
/* 10EDFC 802A57EC 8C84C5F8 */   lw    $a0, %lo(D_800DC5F8)($a0)
/* 10EE00 802A57F0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10EE04 802A57F4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10EE08 802A57F8 8C620000 */  lw    $v0, ($v1)
/* 10EE0C 802A57FC 3C0DBA00 */  lui   $t5, (0xBA001402 >> 16) # lui $t5, 0xba00
/* 10EE10 802A5800 35AD1402 */  ori   $t5, (0xBA001402 & 0xFFFF) # ori $t5, $t5, 0x1402
/* 10EE14 802A5804 244F0008 */  addiu $t7, $v0, 8
/* 10EE18 802A5808 AC6F0000 */  sw    $t7, ($v1)
/* 10EE1C 802A580C 3C180030 */  lui   $t8, 0x30
/* 10EE20 802A5810 AC580004 */  sw    $t8, 4($v0)
/* 10EE24 802A5814 AC4D0000 */  sw    $t5, ($v0)
/* 10EE28 802A5818 8C620000 */  lw    $v0, ($v1)
/* 10EE2C 802A581C 3C0EFF10 */  lui   $t6, (0xFF10013F >> 16) # lui $t6, 0xff10
/* 10EE30 802A5820 35CE013F */  ori   $t6, (0xFF10013F & 0xFFFF) # ori $t6, $t6, 0x13f
/* 10EE34 802A5824 24590008 */  addiu $t9, $v0, 8
/* 10EE38 802A5828 AC790000 */  sw    $t9, ($v1)
/* 10EE3C 802A582C 3C0F800E */  lui   $t7, %hi(sRenderingFramebuffer) # $t7, 0x800e
/* 10EE40 802A5830 AC4E0000 */  sw    $t6, ($v0)
/* 10EE44 802A5834 95EFC560 */  lhu   $t7, %lo(sRenderingFramebuffer)($t7)
/* 10EE48 802A5838 3C198015 */  lui   $t9, %hi(gPhysicalFramebuffers) # 0x8015
/* 10EE4C 802A583C 3C011FFF */  lui   $at, (0x1FFFFFFF >> 16) # lui $at, 0x1fff
/* 10EE50 802A5840 000FC080 */  sll   $t8, $t7, 2
/* 10EE54 802A5844 0338C821 */  addu  $t9, $t9, $t8
/* 10EE58 802A5848 8F3902A8 */  lw    $t9, %lo(gPhysicalFramebuffers)($t9)
/* 10EE5C 802A584C 3421FFFF */  ori   $at, (0x1FFFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 10EE60 802A5850 3C18F700 */  lui   $t8, 0xf700
/* 10EE64 802A5854 03217024 */  and   $t6, $t9, $at
/* 10EE68 802A5858 AC4E0004 */  sw    $t6, 4($v0)
/* 10EE6C 802A585C 8C620000 */  lw    $v0, ($v1)
/* 10EE70 802A5860 3C190001 */  lui   $t9, (0x00010001 >> 16) # lui $t9, 1
/* 10EE74 802A5864 37390001 */  ori   $t9, (0x00010001 & 0xFFFF) # ori $t9, $t9, 1
/* 10EE78 802A5868 244F0008 */  addiu $t7, $v0, 8
/* 10EE7C 802A586C AC6F0000 */  sw    $t7, ($v1)
/* 10EE80 802A5870 AC590004 */  sw    $t9, 4($v0)
/* 10EE84 802A5874 AC580000 */  sw    $t8, ($v0)
/* 10EE88 802A5878 8C620000 */  lw    $v0, ($v1)
/* 10EE8C 802A587C 3C1FE700 */  lui   $ra, 0xe700
/* 10EE90 802A5880 3C18ED28 */  lui   $t8, (0xED2801E0 >> 16) # lui $t8, 0xed28
/* 10EE94 802A5884 244E0008 */  addiu $t6, $v0, 8
/* 10EE98 802A5888 AC6E0000 */  sw    $t6, ($v1)
/* 10EE9C 802A588C AC400004 */  sw    $zero, 4($v0)
/* 10EEA0 802A5890 AC5F0000 */  sw    $ra, ($v0)
/* 10EEA4 802A5894 8C620000 */  lw    $v0, ($v1)
/* 10EEA8 802A5898 3C190050 */  lui   $t9, (0x005003C0 >> 16) # lui $t9, 0x50
/* 10EEAC 802A589C 373903C0 */  ori   $t9, (0x005003C0 & 0xFFFF) # ori $t9, $t9, 0x3c0
/* 10EEB0 802A58A0 244F0008 */  addiu $t7, $v0, 8
/* 10EEB4 802A58A4 AC6F0000 */  sw    $t7, ($v1)
/* 10EEB8 802A58A8 371801E0 */  ori   $t8, (0xED2801E0 & 0xFFFF) # ori $t8, $t8, 0x1e0
/* 10EEBC 802A58AC AC580000 */  sw    $t8, ($v0)
/* 10EEC0 802A58B0 AC590004 */  sw    $t9, 4($v0)
/* 10EEC4 802A58B4 8C620000 */  lw    $v0, ($v1)
/* 10EEC8 802A58B8 3C180028 */  lui   $t8, (0x002801E0 >> 16) # lui $t8, 0x28
/* 10EECC 802A58BC 3C0FF64F */  lui   $t7, (0xF64FC3BC >> 16) # lui $t7, 0xf64f
/* 10EED0 802A58C0 244E0008 */  addiu $t6, $v0, 8
/* 10EED4 802A58C4 AC6E0000 */  sw    $t6, ($v1)
/* 10EED8 802A58C8 35EFC3BC */  ori   $t7, (0xF64FC3BC & 0xFFFF) # ori $t7, $t7, 0xc3bc
/* 10EEDC 802A58CC 371801E0 */  ori   $t8, (0x002801E0 & 0xFFFF) # ori $t8, $t8, 0x1e0
/* 10EEE0 802A58D0 AC580004 */  sw    $t8, 4($v0)
/* 10EEE4 802A58D4 AC4F0000 */  sw    $t7, ($v0)
/* 10EEE8 802A58D8 8C620000 */  lw    $v0, ($v1)
/* 10EEEC 802A58DC 3C04800E */  lui   $a0, %hi(D_800DC5F8) # $a0, 0x800e
/* 10EEF0 802A58E0 24590008 */  addiu $t9, $v0, 8
/* 10EEF4 802A58E4 AC790000 */  sw    $t9, ($v1)
/* 10EEF8 802A58E8 AC400004 */  sw    $zero, 4($v0)
/* 10EEFC 802A58EC AC5F0000 */  sw    $ra, ($v0)
/* 10EF00 802A58F0 8C620000 */  lw    $v0, ($v1)
/* 10EF04 802A58F4 244E0008 */  addiu $t6, $v0, 8
/* 10EF08 802A58F8 AC6E0000 */  sw    $t6, ($v1)
/* 10EF0C 802A58FC AC400004 */  sw    $zero, 4($v0)
/* 10EF10 802A5900 AC4D0000 */  sw    $t5, ($v0)
/* 10EF14 802A5904 0C0A8DCC */  jal   func_802A3730
/* 10EF18 802A5908 8C84C5F8 */   lw    $a0, %lo(D_800DC5F8)($a0)
/* 10EF1C 802A590C 10000022 */  b     .L802A5998
/* 10EF20 802A5910 8FBF001C */   lw    $ra, 0x1c($sp)
.L802A5914:
/* 10EF24 802A5914 0C0A8DCC */  jal   func_802A3730
/* 10EF28 802A5918 8C84C5F8 */   lw    $a0, %lo(D_800DC5F8)($a0) # -0x3a08($a0)
/* 10EF2C 802A591C 3C04800E */  lui   $a0, %hi(D_800DC5F8) # $a0, 0x800e
/* 10EF30 802A5920 0C0A8E78 */  jal   func_802A39E0
/* 10EF34 802A5924 8C84C5F8 */   lw    $a0, %lo(D_800DC5F8)($a0)
/* 10EF38 802A5928 3C0F800E */  lui   $t7, %hi(D_800DC5B4) # $t7, 0x800e
/* 10EF3C 802A592C 95EFC5B4 */  lhu   $t7, %lo(D_800DC5B4)($t7)
/* 10EF40 802A5930 3C04802C */  lui   $a0, %hi(D_802B8A10) # $a0, 0x802c
/* 10EF44 802A5934 24848A10 */  addiu $a0, %lo(D_802B8A10) # addiu $a0, $a0, -0x75f0
/* 10EF48 802A5938 11E00016 */  beqz  $t7, .L802A5994
/* 10EF4C 802A593C 3C05800E */   lui   $a1, %hi(D_800DC5F8) # $a1, 0x800e
/* 10EF50 802A5940 3C188015 */  lui   $t8, %hi(D_8015013C) # $t8, 0x8015
/* 10EF54 802A5944 2718013C */  addiu $t8, %lo(D_8015013C) # addiu $t8, $t8, 0x13c
/* 10EF58 802A5948 AFB80010 */  sw    $t8, 0x10($sp)
/* 10EF5C 802A594C 8CA5C5F8 */  lw    $a1, %lo(D_800DC5F8)($a1)
/* 10EF60 802A5950 24060140 */  li    $a2, 320
/* 10EF64 802A5954 0C0A9283 */  jal   func_802A4A0C
/* 10EF68 802A5958 240700F0 */   li    $a3, 240
/* 10EF6C 802A595C 0C015FF1 */  jal   func_80057FC4
/* 10EF70 802A5960 2404000B */   li    $a0, 11
/* 10EF74 802A5964 3C198015 */  lui   $t9, %hi(D_8015013C) # $t9, 0x8015
/* 10EF78 802A5968 2739013C */  addiu $t9, %lo(D_8015013C) # addiu $t9, $t9, 0x13c
/* 10EF7C 802A596C 3C04802C */  lui   $a0, %hi(D_802B8A10) # $a0, 0x802c
/* 10EF80 802A5970 3C05800E */  lui   $a1, %hi(D_800DC5F8) # $a1, 0x800e
/* 10EF84 802A5974 8CA5C5F8 */  lw    $a1, %lo(D_800DC5F8)($a1)
/* 10EF88 802A5978 24848A10 */  addiu $a0, %lo(D_802B8A10) # addiu $a0, $a0, -0x75f0
/* 10EF8C 802A597C AFB90010 */  sw    $t9, 0x10($sp)
/* 10EF90 802A5980 24060140 */  li    $a2, 320
/* 10EF94 802A5984 0C0A921F */  jal   func_802A487C
/* 10EF98 802A5988 240700F0 */   li    $a3, 240
/* 10EF9C 802A598C 0C024E8C */  jal   func_80093A30
/* 10EFA0 802A5990 2404000B */   li    $a0, 11
.L802A5994:
/* 10EFA4 802A5994 8FBF001C */  lw    $ra, 0x1c($sp)
.L802A5998:
/* 10EFA8 802A5998 27BD0020 */  addiu $sp, $sp, 0x20
/* 10EFAC 802A599C 03E00008 */  jr    $ra
/* 10EFB0 802A59A0 00000000 */   nop   
