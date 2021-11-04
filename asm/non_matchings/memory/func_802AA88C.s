glabel func_802AA88C
/* 113E9C 802AA88C 00A03825 */  move  $a3, $a1
/* 113EA0 802AA890 3C0F8016 */  lui   $t7, %hi(gHeapEndPtr) # $t7, 0x8016
/* 113EA4 802AA894 8DEFF72C */  lw    $t7, %lo(gHeapEndPtr)($t7)
/* 113EA8 802AA898 00E43023 */  subu  $a2, $a3, $a0
/* 113EAC 802AA89C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 113EB0 802AA8A0 24C6000F */  addiu $a2, $a2, 0xf
/* 113EB4 802AA8A4 2401FFF0 */  li    $at, -16
/* 113EB8 802AA8A8 AFA40030 */  sw    $a0, 0x30($sp)
/* 113EBC 802AA8AC 00802825 */  move  $a1, $a0
/* 113EC0 802AA8B0 00C17024 */  and   $t6, $a2, $at
/* 113EC4 802AA8B4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 113EC8 802AA8B8 01EE2023 */  subu  $a0, $t7, $t6
/* 113ECC 802AA8BC 01C03025 */  move  $a2, $t6
/* 113ED0 802AA8C0 0C000456 */  jal   dma_copy
/* 113ED4 802AA8C4 AFA40020 */   sw    $a0, 0x20($sp)
/* 113ED8 802AA8C8 8FA40020 */  lw    $a0, 0x20($sp)
/* 113EDC 802AA8CC 3C058016 */  lui   $a1, %hi(gPrevLoadedAddress) # $a1, 0x8016
/* 113EE0 802AA8D0 8CA5F728 */  lw    $a1, %lo(gPrevLoadedAddress)($a1)
/* 113EE4 802AA8D4 8C830004 */  lw    $v1, 4($a0)
/* 113EE8 802AA8D8 2401FFF0 */  li    $at, -16
/* 113EEC 802AA8DC AFA5001C */  sw    $a1, 0x1c($sp)
/* 113EF0 802AA8E0 2463000F */  addiu $v1, $v1, 0xf
/* 113EF4 802AA8E4 0061C024 */  and   $t8, $v1, $at
/* 113EF8 802AA8E8 0C010034 */  jal   mio0decode
/* 113EFC 802AA8EC AFB80028 */   sw    $t8, 0x28($sp)
/* 113F00 802AA8F0 3C048016 */  lui   $a0, %hi(gPrevLoadedAddress) # $a0, 0x8016
/* 113F04 802AA8F4 2484F728 */  addiu $a0, %lo(gPrevLoadedAddress) # addiu $a0, $a0, -0x8d8
/* 113F08 802AA8F8 8FA30028 */  lw    $v1, 0x28($sp)
/* 113F0C 802AA8FC 8C990000 */  lw    $t9, ($a0)
/* 113F10 802AA900 8FBF0014 */  lw    $ra, 0x14($sp)
/* 113F14 802AA904 8FA2001C */  lw    $v0, 0x1c($sp)
/* 113F18 802AA908 03234021 */  addu  $t0, $t9, $v1
/* 113F1C 802AA90C AC880000 */  sw    $t0, ($a0)
/* 113F20 802AA910 03E00008 */  jr    $ra
/* 113F24 802AA914 27BD0030 */   addiu $sp, $sp, 0x30
