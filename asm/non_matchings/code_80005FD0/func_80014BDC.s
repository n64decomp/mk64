.section .late_rodata

glabel D_800ED200
.double 90.0

glabel D_800ED208
.double 4.583333333333333

glabel D_800ED210
.double 2.9166666666666665

.section .text

glabel func_80014BDC
/* 0157DC 80014BDC 3C0E800E */  lui   $t6, %hi(gCCSelection)
/* 0157E0 80014BE0 8DCEC548 */  lw    $t6, %lo(gCCSelection)($t6)
/* 0157E4 80014BE4 3C01800F */  lui   $at, %hi(D_800ED200)
/* 0157E8 80014BE8 D428D200 */  ldc1  $f8, %lo(D_800ED200)($at)
/* 0157EC 80014BEC 448E2000 */  mtc1  $t6, $f4
/* 0157F0 80014BF0 3C01406B */  li    $at, 0x406B0000 # 3.671875
/* 0157F4 80014BF4 44818800 */  mtc1  $at, $f17
/* 0157F8 80014BF8 468021A1 */  cvt.d.w $f6, $f4
/* 0157FC 80014BFC 44808000 */  mtc1  $zero, $f16
/* 015800 80014C00 3C01800F */  lui   $at, %hi(D_800ED208)
/* 015804 80014C04 D432D208 */  ldc1  $f18, %lo(D_800ED208)($at)
/* 015808 80014C08 3C01800F */  lui   $at, %hi(D_800ED210)
/* 01580C 80014C0C 46283282 */  mul.d $f10, $f6, $f8
/* 015810 80014C10 D426D210 */  ldc1  $f6, %lo(D_800ED210)($at)
/* 015814 80014C14 3C0F800E */  lui   $t7, %hi(gModeSelection)
/* 015818 80014C18 8DEFC53C */  lw    $t7, %lo(gModeSelection)($t7)
/* 01581C 80014C1C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 015820 80014C20 24010001 */  li    $at, 1
/* 015824 80014C24 3C188016 */  lui   $t8, %hi(gCarList) # $t8, 0x8016
/* 015828 80014C28 AFBF001C */  sw    $ra, 0x1c($sp)
/* 01582C 80014C2C 46305003 */  div.d $f0, $f10, $f16
/* 015830 80014C30 24060007 */  li    $a2, 7
/* 015834 80014C34 27183C68 */  addiu $t8, %lo(gCarList) # addiu $t8, $t8, 0x3c68
/* 015838 80014C38 24070019 */  li    $a3, 25
/* 01583C 80014C3C 3C198016 */  lui   $t9, %hi(D_80164550) # $t9, 0x8016
/* 015840 80014C40 46320100 */  add.d $f4, $f0, $f18
/* 015844 80014C44 46260200 */  add.d $f8, $f0, $f6
/* 015848 80014C48 46202320 */  cvt.s.d $f12, $f4
/* 01584C 80014C4C 15E10002 */  bne   $t7, $at, .L80014C58
/* 015850 80014C50 462043A0 */   cvt.s.d $f14, $f8
/* 015854 80014C54 24060008 */  li    $a2, 8
.L80014C58:
/* 015858 80014C58 8F394550 */  lw    $t9, %lo(D_80164550)($t9)
/* 01585C 80014C5C AFB80010 */  sw    $t8, 0x10($sp)
/* 015860 80014C60 0C004E79 */  jal   func_800139E4
/* 015864 80014C64 AFB90014 */   sw    $t9, 0x14($sp)
/* 015868 80014C68 8FBF001C */  lw    $ra, 0x1c($sp)
/* 01586C 80014C6C 27BD0020 */  addiu $sp, $sp, 0x20
/* 015870 80014C70 03E00008 */  jr    $ra
/* 015874 80014C74 00000000 */   nop
