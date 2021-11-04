glabel render_choco_mountain
/* 0FBF30 80292920 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FBF34 80292924 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FBF38 80292928 8C620000 */  lw    $v0, ($v1)
/* 0FBF3C 8029292C 27BDFF70 */  addiu $sp, $sp, -0x90
/* 0FBF40 80292930 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0FBF44 80292934 244E0008 */  addiu $t6, $v0, 8
/* 0FBF48 80292938 AFB00018 */  sw    $s0, 0x18($sp)
/* 0FBF4C 8029293C AFA40090 */  sw    $a0, 0x90($sp)
/* 0FBF50 80292940 AC6E0000 */  sw    $t6, ($v1)
/* 0FBF54 80292944 3C0FB700 */  lui   $t7, 0xb700
/* 0FBF58 80292948 24180200 */  li    $t8, 512
/* 0FBF5C 8029294C AC580004 */  sw    $t8, 4($v0)
/* 0FBF60 80292950 AC4F0000 */  sw    $t7, ($v0)
/* 0FBF64 80292954 8C620000 */  lw    $v0, ($v1)
/* 0FBF68 80292958 3C0F0002 */  lui   $t7, 2
/* 0FBF6C 8029295C 3C0EB600 */  lui   $t6, 0xb600
/* 0FBF70 80292960 24590008 */  addiu $t9, $v0, 8
/* 0FBF74 80292964 AC790000 */  sw    $t9, ($v1)
/* 0FBF78 80292968 AC4F0004 */  sw    $t7, 4($v0)
/* 0FBF7C 8029296C AC4E0000 */  sw    $t6, ($v0)
/* 0FBF80 80292970 8FB80090 */  lw    $t8, 0x90($sp)
/* 0FBF84 80292974 0C0A4308 */  jal   func_80290C20
/* 0FBF88 80292978 8F040004 */   lw    $a0, 4($t8)
/* 0FBF8C 8029297C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FBF90 80292980 24010001 */  li    $at, 1
/* 0FBF94 80292984 1441001B */  bne   $v0, $at, .L802929F4
/* 0FBF98 80292988 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FBF9C 8029298C 8C620000 */  lw    $v0, ($v1)
/* 0FBFA0 80292990 3C0EFCFF */  lui   $t6, (0xFCFFFFFF >> 16) # lui $t6, 0xfcff
/* 0FBFA4 80292994 3C0FFFFE */  lui   $t7, (0xFFFE793C >> 16) # lui $t7, 0xfffe
/* 0FBFA8 80292998 24590008 */  addiu $t9, $v0, 8
/* 0FBFAC 8029299C AC790000 */  sw    $t9, ($v1)
/* 0FBFB0 802929A0 35EF793C */  ori   $t7, (0xFFFE793C & 0xFFFF) # ori $t7, $t7, 0x793c
/* 0FBFB4 802929A4 35CEFFFF */  ori   $t6, (0xFCFFFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 0FBFB8 802929A8 AC4E0000 */  sw    $t6, ($v0)
/* 0FBFBC 802929AC AC4F0004 */  sw    $t7, 4($v0)
/* 0FBFC0 802929B0 8C620000 */  lw    $v0, ($v1)
/* 0FBFC4 802929B4 3C0E0055 */  lui   $t6, (0x00552078 >> 16) # lui $t6, 0x55
/* 0FBFC8 802929B8 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FBFCC 802929BC 24580008 */  addiu $t8, $v0, 8
/* 0FBFD0 802929C0 AC780000 */  sw    $t8, ($v1)
/* 0FBFD4 802929C4 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FBFD8 802929C8 35CE2078 */  ori   $t6, (0x00552078 & 0xFFFF) # ori $t6, $t6, 0x2078
/* 0FBFDC 802929CC AC4E0004 */  sw    $t6, 4($v0)
/* 0FBFE0 802929D0 AC590000 */  sw    $t9, ($v0)
/* 0FBFE4 802929D4 8C620000 */  lw    $v0, ($v1)
/* 0FBFE8 802929D8 3C180700 */  lui   $t8, (0x07004608 >> 16) # lui $t8, 0x700
/* 0FBFEC 802929DC 3C100600 */  lui   $s0, 0x600
/* 0FBFF0 802929E0 244F0008 */  addiu $t7, $v0, 8
/* 0FBFF4 802929E4 AC6F0000 */  sw    $t7, ($v1)
/* 0FBFF8 802929E8 37184608 */  ori   $t8, (0x07004608 & 0xFFFF) # ori $t8, $t8, 0x4608
/* 0FBFFC 802929EC AC580004 */  sw    $t8, 4($v0)
/* 0FC000 802929F0 AC500000 */  sw    $s0, ($v0)
.L802929F4:
/* 0FC004 802929F4 8C620000 */  lw    $v0, ($v1)
/* 0FC008 802929F8 3C0EBA00 */  lui   $t6, (0xBA001402 >> 16) # lui $t6, 0xba00
/* 0FC00C 802929FC 35CE1402 */  ori   $t6, (0xBA001402 & 0xFFFF) # ori $t6, $t6, 0x1402
/* 0FC010 80292A00 24590008 */  addiu $t9, $v0, 8
/* 0FC014 80292A04 AC790000 */  sw    $t9, ($v1)
/* 0FC018 80292A08 3C0F0010 */  lui   $t7, 0x10
/* 0FC01C 80292A0C AC4F0004 */  sw    $t7, 4($v0)
/* 0FC020 80292A10 AC4E0000 */  sw    $t6, ($v0)
/* 0FC024 80292A14 00402025 */  move  $a0, $v0
/* 0FC028 80292A18 8C620000 */  lw    $v0, ($v1)
/* 0FC02C 80292A1C 3C19F800 */  lui   $t9, 0xf800
/* 0FC030 80292A20 3C0E8016 */  lui   $t6, %hi(D_801625EC) # $t6, 0x8016
/* 0FC034 80292A24 24580008 */  addiu $t8, $v0, 8
/* 0FC038 80292A28 AC780000 */  sw    $t8, ($v1)
/* 0FC03C 80292A2C AC590000 */  sw    $t9, ($v0)
/* 0FC040 80292A30 3C198016 */  lui   $t9, %hi(D_801625F4) # $t9, 0x8016
/* 0FC044 80292A34 8F3925F4 */  lw    $t9, %lo(D_801625F4)($t9)
/* 0FC048 80292A38 8DCF25EC */  lw    $t7, %lo(D_801625EC)($t6)
/* 0FC04C 80292A3C 00402825 */  move  $a1, $v0
/* 0FC050 80292A40 332E00FF */  andi  $t6, $t9, 0xff
/* 0FC054 80292A44 000FC600 */  sll   $t8, $t7, 0x18
/* 0FC058 80292A48 000E7C00 */  sll   $t7, $t6, 0x10
/* 0FC05C 80292A4C 3C0E8016 */  lui   $t6, %hi(D_801625F0) # $t6, 0x8016
/* 0FC060 80292A50 8DCE25F0 */  lw    $t6, %lo(D_801625F0)($t6)
/* 0FC064 80292A54 030FC825 */  or    $t9, $t8, $t7
/* 0FC068 80292A58 3C07802C */  lui   $a3, %hi(D_802B87B0) # $a3, 0x802c
/* 0FC06C 80292A5C 31D800FF */  andi  $t8, $t6, 0xff
/* 0FC070 80292A60 00187A00 */  sll   $t7, $t8, 8
/* 0FC074 80292A64 032F7025 */  or    $t6, $t9, $t7
/* 0FC078 80292A68 35D800FF */  ori   $t8, $t6, 0xff
/* 0FC07C 80292A6C AC580004 */  sw    $t8, 4($v0)
/* 0FC080 80292A70 8C620000 */  lw    $v0, ($v1)
/* 0FC084 80292A74 3C0FBC00 */  lui   $t7, (0xBC000008 >> 16) # lui $t7, 0xbc00
/* 0FC088 80292A78 35EF0008 */  ori   $t7, (0xBC000008 & 0xFFFF) # ori $t7, $t7, 8
/* 0FC08C 80292A7C 24590008 */  addiu $t9, $v0, 8
/* 0FC090 80292A80 AC790000 */  sw    $t9, ($v1)
/* 0FC094 80292A84 AC4F0000 */  sw    $t7, ($v0)
/* 0FC098 80292A88 3C0E802C */  lui   $t6, %hi(D_802B87B4) # $t6, 0x802c
/* 0FC09C 80292A8C 85CE87B4 */  lh    $t6, %lo(D_802B87B4)($t6)
/* 0FC0A0 80292A90 84E787B0 */  lh    $a3, %lo(D_802B87B0)($a3)
/* 0FC0A4 80292A94 3C180001 */  lui   $t8, (0x0001F400 >> 16) # lui $t8, 1
/* 0FC0A8 80292A98 3718F400 */  ori   $t8, (0x0001F400 & 0xFFFF) # ori $t8, $t8, 0xf400
/* 0FC0AC 80292A9C 01C74023 */  subu  $t0, $t6, $a3
/* 0FC0B0 80292AA0 0308001A */  div   $zero, $t8, $t0
/* 0FC0B4 80292AA4 00007812 */  mflo  $t7
/* 0FC0B8 80292AA8 000F7400 */  sll   $t6, $t7, 0x10
/* 0FC0BC 80292AAC 00403025 */  move  $a2, $v0
/* 0FC0C0 80292AB0 3C100600 */  lui   $s0, 0x600
/* 0FC0C4 80292AB4 15000002 */  bnez  $t0, .L80292AC0
/* 0FC0C8 80292AB8 00000000 */   nop   
/* 0FC0CC 80292ABC 0007000D */  break 7
.L80292AC0:
/* 0FC0D0 80292AC0 2401FFFF */  li    $at, -1
/* 0FC0D4 80292AC4 15010004 */  bne   $t0, $at, .L80292AD8
/* 0FC0D8 80292AC8 3C018000 */   lui   $at, 0x8000
/* 0FC0DC 80292ACC 17010002 */  bne   $t8, $at, .L80292AD8
/* 0FC0E0 80292AD0 00000000 */   nop   
/* 0FC0E4 80292AD4 0006000D */  break 6
.L80292AD8:
/* 0FC0E8 80292AD8 3C010001 */  lui   $at, (0x0001F400 >> 16) # lui $at, 1
/* 0FC0EC 80292ADC 0007C023 */  negu  $t8, $a3
/* 0FC0F0 80292AE0 0018CA00 */  sll   $t9, $t8, 8
/* 0FC0F4 80292AE4 3421F400 */  ori   $at, (0x0001F400 & 0xFFFF) # ori $at, $at, 0xf400
/* 0FC0F8 80292AE8 03217821 */  addu  $t7, $t9, $at
/* 0FC0FC 80292AEC 01E8001A */  div   $zero, $t7, $t0
/* 0FC100 80292AF0 0000C012 */  mflo  $t8
/* 0FC104 80292AF4 3319FFFF */  andi  $t9, $t8, 0xffff
/* 0FC108 80292AF8 15000002 */  bnez  $t0, .L80292B04
/* 0FC10C 80292AFC 00000000 */   nop   
/* 0FC110 80292B00 0007000D */  break 7
.L80292B04:
/* 0FC114 80292B04 2401FFFF */  li    $at, -1
/* 0FC118 80292B08 15010004 */  bne   $t0, $at, .L80292B1C
/* 0FC11C 80292B0C 3C018000 */   lui   $at, 0x8000
/* 0FC120 80292B10 15E10002 */  bne   $t7, $at, .L80292B1C
/* 0FC124 80292B14 00000000 */   nop   
/* 0FC128 80292B18 0006000D */  break 6
.L80292B1C:
/* 0FC12C 80292B1C 01D97825 */  or    $t7, $t6, $t9
/* 0FC130 80292B20 ACCF0004 */  sw    $t7, 4($a2)
/* 0FC134 80292B24 8C620000 */  lw    $v0, ($v1)
/* 0FC138 80292B28 3C0EE700 */  lui   $t6, 0xe700
/* 0FC13C 80292B2C 3C0FB700 */  lui   $t7, 0xb700
/* 0FC140 80292B30 24580008 */  addiu $t8, $v0, 8
/* 0FC144 80292B34 AC780000 */  sw    $t8, ($v1)
/* 0FC148 80292B38 AC400004 */  sw    $zero, 4($v0)
/* 0FC14C 80292B3C AC4E0000 */  sw    $t6, ($v0)
/* 0FC150 80292B40 8C620000 */  lw    $v0, ($v1)
/* 0FC154 80292B44 3C180001 */  lui   $t8, 1
/* 0FC158 80292B48 3C040900 */  lui   $a0, %hi(choco_mountain_dls) # $a0, 0x900
/* 0FC15C 80292B4C 24590008 */  addiu $t9, $v0, 8
/* 0FC160 80292B50 AC790000 */  sw    $t9, ($v1)
/* 0FC164 80292B54 AC580004 */  sw    $t8, 4($v0)
/* 0FC168 80292B58 AC4F0000 */  sw    $t7, ($v0)
/* 0FC16C 80292B5C 8C620000 */  lw    $v0, ($v1)
/* 0FC170 80292B60 3C19FC12 */  lui   $t9, (0xFC127FFF >> 16) # lui $t9, 0xfc12
/* 0FC174 80292B64 37397FFF */  ori   $t9, (0xFC127FFF & 0xFFFF) # ori $t9, $t9, 0x7fff
/* 0FC178 80292B68 244E0008 */  addiu $t6, $v0, 8
/* 0FC17C 80292B6C AC6E0000 */  sw    $t6, ($v1)
/* 0FC180 80292B70 240FF838 */  li    $t7, -1992
/* 0FC184 80292B74 AC4F0004 */  sw    $t7, 4($v0)
/* 0FC188 80292B78 AC590000 */  sw    $t9, ($v0)
/* 0FC18C 80292B7C 8C620000 */  lw    $v0, ($v1)
/* 0FC190 80292B80 3C19C811 */  lui   $t9, (0xC8112078 >> 16) # lui $t9, 0xc811
/* 0FC194 80292B84 3C0EB900 */  lui   $t6, (0xB900031D >> 16) # lui $t6, 0xb900
/* 0FC198 80292B88 24580008 */  addiu $t8, $v0, 8
/* 0FC19C 80292B8C AC780000 */  sw    $t8, ($v1)
/* 0FC1A0 80292B90 35CE031D */  ori   $t6, (0xB900031D & 0xFFFF) # ori $t6, $t6, 0x31d
/* 0FC1A4 80292B94 37392078 */  ori   $t9, (0xC8112078 & 0xFFFF) # ori $t9, $t9, 0x2078
/* 0FC1A8 80292B98 AC590004 */  sw    $t9, 4($v0)
/* 0FC1AC 80292B9C AC4E0000 */  sw    $t6, ($v0)
/* 0FC1B0 80292BA0 8C620000 */  lw    $v0, ($v1)
/* 0FC1B4 80292BA4 3C18BB00 */  lui   $t8, (0xBB000001 >> 16) # lui $t8, 0xbb00
/* 0FC1B8 80292BA8 37180001 */  ori   $t8, (0xBB000001 & 0xFFFF) # ori $t8, $t8, 1
/* 0FC1BC 80292BAC 244F0008 */  addiu $t7, $v0, 8
/* 0FC1C0 80292BB0 AC6F0000 */  sw    $t7, ($v1)
/* 0FC1C4 80292BB4 240EFFFF */  li    $t6, -1
/* 0FC1C8 80292BB8 AC4E0004 */  sw    $t6, 4($v0)
/* 0FC1CC 80292BBC AC580000 */  sw    $t8, ($v0)
/* 0FC1D0 80292BC0 8C620000 */  lw    $v0, ($v1)
/* 0FC1D4 80292BC4 3C0F0700 */  lui   $t7, (0x07005A70 >> 16) # lui $t7, 0x700
/* 0FC1D8 80292BC8 35EF5A70 */  ori   $t7, (0x07005A70 & 0xFFFF) # ori $t7, $t7, 0x5a70
/* 0FC1DC 80292BCC 24590008 */  addiu $t9, $v0, 8
/* 0FC1E0 80292BD0 AC790000 */  sw    $t9, ($v1)
/* 0FC1E4 80292BD4 AC4F0004 */  sw    $t7, 4($v0)
/* 0FC1E8 80292BD8 AC500000 */  sw    $s0, ($v0)
/* 0FC1EC 80292BDC 8C620000 */  lw    $v0, ($v1)
/* 0FC1F0 80292BE0 3C190700 */  lui   $t9, (0x07000828 >> 16) # lui $t9, 0x700
/* 0FC1F4 80292BE4 37390828 */  ori   $t9, (0x07000828 & 0xFFFF) # ori $t9, $t9, 0x828
/* 0FC1F8 80292BE8 24580008 */  addiu $t8, $v0, 8
/* 0FC1FC 80292BEC AC780000 */  sw    $t8, ($v1)
/* 0FC200 80292BF0 AFA20020 */  sw    $v0, 0x20($sp)
/* 0FC204 80292BF4 AC590004 */  sw    $t9, 4($v0)
/* 0FC208 80292BF8 AC500000 */  sw    $s0, ($v0)
/* 0FC20C 80292BFC 8C620000 */  lw    $v0, ($v1)
/* 0FC210 80292C00 3C180700 */  lui   $t8, (0x070008E0 >> 16) # lui $t8, 0x700
/* 0FC214 80292C04 371808E0 */  ori   $t8, (0x070008E0 & 0xFFFF) # ori $t8, $t8, 0x8e0
/* 0FC218 80292C08 244F0008 */  addiu $t7, $v0, 8
/* 0FC21C 80292C0C AC6F0000 */  sw    $t7, ($v1)
/* 0FC220 80292C10 AC580004 */  sw    $t8, 4($v0)
/* 0FC224 80292C14 AC500000 */  sw    $s0, ($v0)
/* 0FC228 80292C18 8C620000 */  lw    $v0, ($v1)
/* 0FC22C 80292C1C 3C0E0700 */  lui   $t6, (0x07005868 >> 16) # lui $t6, 0x700
/* 0FC230 80292C20 35CE5868 */  ori   $t6, (0x07005868 & 0xFFFF) # ori $t6, $t6, 0x5868
/* 0FC234 80292C24 24590008 */  addiu $t9, $v0, 8
/* 0FC238 80292C28 AC790000 */  sw    $t9, ($v1)
/* 0FC23C 80292C2C AC4E0004 */  sw    $t6, 4($v0)
/* 0FC240 80292C30 AC500000 */  sw    $s0, ($v0)
/* 0FC244 80292C34 8C620000 */  lw    $v0, ($v1)
/* 0FC248 80292C38 3C190002 */  lui   $t9, 2
/* 0FC24C 80292C3C 3C18B600 */  lui   $t8, 0xb600
/* 0FC250 80292C40 244F0008 */  addiu $t7, $v0, 8
/* 0FC254 80292C44 AC6F0000 */  sw    $t7, ($v1)
/* 0FC258 80292C48 AC590004 */  sw    $t9, 4($v0)
/* 0FC25C 80292C4C AC580000 */  sw    $t8, ($v0)
/* 0FC260 80292C50 8FA50090 */  lw    $a1, 0x90($sp)
/* 0FC264 80292C54 0C0A436B */  jal   load_surface_map
/* 0FC268 80292C58 24840150 */   addiu $a0, %lo(choco_mountain_dls) # addiu $a0, $a0, 0x150
/* 0FC26C 80292C5C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FC270 80292C60 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FC274 80292C64 8C620000 */  lw    $v0, ($v1)
/* 0FC278 80292C68 241F2000 */  li    $ra, 8192
/* 0FC27C 80292C6C 3C0FB600 */  lui   $t7, 0xb600
/* 0FC280 80292C70 244E0008 */  addiu $t6, $v0, 8
/* 0FC284 80292C74 AC6E0000 */  sw    $t6, ($v1)
/* 0FC288 80292C78 AC5F0004 */  sw    $ra, 4($v0)
/* 0FC28C 80292C7C AC4F0000 */  sw    $t7, ($v0)
/* 0FC290 80292C80 8C620000 */  lw    $v0, ($v1)
/* 0FC294 80292C84 3C0EC811 */  lui   $t6, (0xC8113078 >> 16) # lui $t6, 0xc811
/* 0FC298 80292C88 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FC29C 80292C8C 24580008 */  addiu $t8, $v0, 8
/* 0FC2A0 80292C90 AC780000 */  sw    $t8, ($v1)
/* 0FC2A4 80292C94 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FC2A8 80292C98 35CE3078 */  ori   $t6, (0xC8113078 & 0xFFFF) # ori $t6, $t6, 0x3078
/* 0FC2AC 80292C9C AC4E0004 */  sw    $t6, 4($v0)
/* 0FC2B0 80292CA0 AC590000 */  sw    $t9, ($v0)
/* 0FC2B4 80292CA4 8C620000 */  lw    $v0, ($v1)
/* 0FC2B8 80292CA8 3C19FFFC */  lui   $t9, (0xFFFCF238 >> 16) # lui $t9, 0xfffc
/* 0FC2BC 80292CAC 3C18FCFF */  lui   $t8, (0xFCFFFFFF >> 16) # lui $t8, 0xfcff
/* 0FC2C0 80292CB0 244F0008 */  addiu $t7, $v0, 8
/* 0FC2C4 80292CB4 AC6F0000 */  sw    $t7, ($v1)
/* 0FC2C8 80292CB8 3718FFFF */  ori   $t8, (0xFCFFFFFF & 0xFFFF) # ori $t8, $t8, 0xffff
/* 0FC2CC 80292CBC 3739F238 */  ori   $t9, (0xFFFCF238 & 0xFFFF) # ori $t9, $t9, 0xf238
/* 0FC2D0 80292CC0 AC590004 */  sw    $t9, 4($v0)
/* 0FC2D4 80292CC4 AC580000 */  sw    $t8, ($v0)
/* 0FC2D8 80292CC8 8C620000 */  lw    $v0, ($v1)
/* 0FC2DC 80292CCC 3C0F0700 */  lui   $t7, (0x07000448 >> 16) # lui $t7, 0x700
/* 0FC2E0 80292CD0 35EF0448 */  ori   $t7, (0x07000448 & 0xFFFF) # ori $t7, $t7, 0x448
/* 0FC2E4 80292CD4 244E0008 */  addiu $t6, $v0, 8
/* 0FC2E8 80292CD8 AC6E0000 */  sw    $t6, ($v1)
/* 0FC2EC 80292CDC AC4F0004 */  sw    $t7, 4($v0)
/* 0FC2F0 80292CE0 AC500000 */  sw    $s0, ($v0)
/* 0FC2F4 80292CE4 8C620000 */  lw    $v0, ($v1)
/* 0FC2F8 80292CE8 3C190700 */  lui   $t9, (0x070005D8 >> 16) # lui $t9, 0x700
/* 0FC2FC 80292CEC 373905D8 */  ori   $t9, (0x070005D8 & 0xFFFF) # ori $t9, $t9, 0x5d8
/* 0FC300 80292CF0 24580008 */  addiu $t8, $v0, 8
/* 0FC304 80292CF4 AC780000 */  sw    $t8, ($v1)
/* 0FC308 80292CF8 AC590004 */  sw    $t9, 4($v0)
/* 0FC30C 80292CFC AC500000 */  sw    $s0, ($v0)
/* 0FC310 80292D00 8C620000 */  lw    $v0, ($v1)
/* 0FC314 80292D04 3C0FB700 */  lui   $t7, 0xb700
/* 0FC318 80292D08 3C190700 */  lui   $t9, (0x07000718 >> 16) # lui $t9, 0x700
/* 0FC31C 80292D0C 244E0008 */  addiu $t6, $v0, 8
/* 0FC320 80292D10 AC6E0000 */  sw    $t6, ($v1)
/* 0FC324 80292D14 AC5F0004 */  sw    $ra, 4($v0)
/* 0FC328 80292D18 AC4F0000 */  sw    $t7, ($v0)
/* 0FC32C 80292D1C 8C620000 */  lw    $v0, ($v1)
/* 0FC330 80292D20 37390718 */  ori   $t9, (0x07000718 & 0xFFFF) # ori $t9, $t9, 0x718
/* 0FC334 80292D24 3C0FB600 */  lui   $t7, 0xb600
/* 0FC338 80292D28 24580008 */  addiu $t8, $v0, 8
/* 0FC33C 80292D2C AC780000 */  sw    $t8, ($v1)
/* 0FC340 80292D30 AC590004 */  sw    $t9, 4($v0)
/* 0FC344 80292D34 AC500000 */  sw    $s0, ($v0)
/* 0FC348 80292D38 8C620000 */  lw    $v0, ($v1)
/* 0FC34C 80292D3C 3C180001 */  lui   $t8, 1
/* 0FC350 80292D40 244E0008 */  addiu $t6, $v0, 8
/* 0FC354 80292D44 AC6E0000 */  sw    $t6, ($v1)
/* 0FC358 80292D48 AC580004 */  sw    $t8, 4($v0)
/* 0FC35C 80292D4C AC4F0000 */  sw    $t7, ($v0)
/* 0FC360 80292D50 8C620000 */  lw    $v0, ($v1)
/* 0FC364 80292D54 3C0EBA00 */  lui   $t6, (0xBA001402 >> 16) # lui $t6, 0xba00
/* 0FC368 80292D58 35CE1402 */  ori   $t6, (0xBA001402 & 0xFFFF) # ori $t6, $t6, 0x1402
/* 0FC36C 80292D5C 24590008 */  addiu $t9, $v0, 8
/* 0FC370 80292D60 AC790000 */  sw    $t9, ($v1)
/* 0FC374 80292D64 AC400004 */  sw    $zero, 4($v0)
/* 0FC378 80292D68 AC4E0000 */  sw    $t6, ($v0)
/* 0FC37C 80292D6C 8C620000 */  lw    $v0, ($v1)
/* 0FC380 80292D70 3C18E700 */  lui   $t8, 0xe700
/* 0FC384 80292D74 244F0008 */  addiu $t7, $v0, 8
/* 0FC388 80292D78 AC6F0000 */  sw    $t7, ($v1)
/* 0FC38C 80292D7C AC400004 */  sw    $zero, 4($v0)
/* 0FC390 80292D80 AC580000 */  sw    $t8, ($v0)
/* 0FC394 80292D84 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0FC398 80292D88 8FB00018 */  lw    $s0, 0x18($sp)
/* 0FC39C 80292D8C 27BD0090 */  addiu $sp, $sp, 0x90
/* 0FC3A0 80292D90 03E00008 */  jr    $ra
/* 0FC3A4 80292D94 00000000 */   nop   
