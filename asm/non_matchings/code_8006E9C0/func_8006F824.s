glabel func_8006F824
/* 070424 8006F824 3C0E8016 */  lui   $t6, %hi(D_801657E4) # $t6, 0x8016
/* 070428 8006F828 81CE57E4 */  lb    $t6, %lo(D_801657E4)($t6)
/* 07042C 8006F82C 3C0F8016 */  lui   $t7, %hi(D_801657E6) # $t7, 0x8016
/* 070430 8006F830 81EF57E6 */  lb    $t7, %lo(D_801657E6)($t7)
/* 070434 8006F834 3C018016 */  lui   $at, %hi(D_80165808) # $at, 0x8016
/* 070438 8006F838 3C188016 */  lui   $t8, %hi(D_801657F0) # $t8, 0x8016
/* 07043C 8006F83C A02E5808 */  sb    $t6, %lo(D_80165808)($at)
/* 070440 8006F840 831857F0 */  lb    $t8, %lo(D_801657F0)($t8)
/* 070444 8006F844 3C018016 */  lui   $at, %hi(D_80165810) # $at, 0x8016
/* 070448 8006F848 3C198016 */  lui   $t9, %hi(D_801657E8) # $t9, 0x8016
/* 07044C 8006F84C A02F5810 */  sb    $t7, %lo(D_80165810)($at)
/* 070450 8006F850 833957E8 */  lb    $t9, %lo(D_801657E8)($t9)
/* 070454 8006F854 3C018016 */  lui   $at, %hi(D_80165820) # $at, 0x8016
/* 070458 8006F858 3C088016 */  lui   $t0, %hi(D_801657F8) # $t0, 0x8016
/* 07045C 8006F85C A0385820 */  sb    $t8, %lo(D_80165820)($at)
/* 070460 8006F860 810857F8 */  lb    $t0, %lo(D_801657F8)($t0)
/* 070464 8006F864 3C018016 */  lui   $at, %hi(D_80165818) # $at, 0x8016
/* 070468 8006F868 A0395818 */  sb    $t9, %lo(D_80165818)($at)
/* 07046C 8006F86C 3C038016 */  lui   $v1, %hi(D_80165800) # $v1, 0x8016
/* 070470 8006F870 3C018016 */  lui   $at, %hi(D_80165828) # $at, 0x8016
/* 070474 8006F874 24635800 */  addiu $v1, %lo(D_80165800) # addiu $v1, $v1, 0x5800
/* 070478 8006F878 A0285828 */  sb    $t0, %lo(D_80165828)($at)
/* 07047C 8006F87C 80690000 */  lb    $t1, ($v1)
/* 070480 8006F880 806A0001 */  lb    $t2, 1($v1)
/* 070484 8006F884 3C028016 */  lui   $v0, %hi(D_80165832) # $v0, 0x8016
/* 070488 8006F888 24425832 */  addiu $v0, %lo(D_80165832) # addiu $v0, $v0, 0x5832
/* 07048C 8006F88C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 070490 8006F890 AFBF0014 */  sw    $ra, 0x14($sp)
/* 070494 8006F894 A0490000 */  sb    $t1, ($v0)
/* 070498 8006F898 10800008 */  beqz  $a0, .L8006F8BC
/* 07049C 8006F89C A04A0001 */   sb    $t2, 1($v0)
/* 0704A0 8006F8A0 3C0B800E */  lui   $t3, %hi(D_800DC5FC) # $t3, 0x800e
/* 0704A4 8006F8A4 956BC5FC */  lhu   $t3, %lo(D_800DC5FC)($t3)
/* 0704A8 8006F8A8 3C044900 */  lui   $a0, (0x4900801C >> 16) # lui $a0, 0x4900
/* 0704AC 8006F8AC 55600004 */  bnel  $t3, $zero, .L8006F8C0
/* 0704B0 8006F8B0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0704B4 8006F8B4 0C032384 */  jal   play_sound2
/* 0704B8 8006F8B8 3484801C */   ori   $a0, (0x4900801C & 0xFFFF) # ori $a0, $a0, 0x801c
.L8006F8BC:
/* 0704BC 8006F8BC 8FBF0014 */  lw    $ra, 0x14($sp)
.L8006F8C0:
/* 0704C0 8006F8C0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0704C4 8006F8C4 03E00008 */  jr    $ra
/* 0704C8 8006F8C8 00000000 */   nop   
