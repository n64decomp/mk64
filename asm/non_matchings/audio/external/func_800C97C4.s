glabel func_800C97C4
/* 0CA3C4 800C97C4 308600FF */  andi  $a2, $a0, 0xff
/* 0CA3C8 800C97C8 0006C0C0 */  sll   $t8, $a2, 3
/* 0CA3CC 800C97CC 0306C023 */  subu  $t8, $t8, $a2
/* 0CA3D0 800C97D0 0018C100 */  sll   $t8, $t8, 4
/* 0CA3D4 800C97D4 0306C023 */  subu  $t8, $t8, $a2
/* 0CA3D8 800C97D8 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CA3DC 800C97DC 0018C080 */  sll   $t8, $t8, 2
/* 0CA3E0 800C97E0 0306C023 */  subu  $t8, $t8, $a2
/* 0CA3E4 800C97E4 3C19800F */  lui   $t9, %hi(gPlayers) # $t9, 0x800f
/* 0CA3E8 800C97E8 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0CA3EC 800C97EC 27396990 */  addiu $t9, %lo(gPlayers) # addiu $t9, $t9, 0x6990
/* 0CA3F0 800C97F0 0018C0C0 */  sll   $t8, $t8, 3
/* 0CA3F4 800C97F4 00067100 */  sll   $t6, $a2, 4
/* 0CA3F8 800C97F8 01C67023 */  subu  $t6, $t6, $a2
/* 0CA3FC 800C97FC 03198821 */  addu  $s1, $t8, $t9
/* 0CA400 800C9800 3C0F800F */  lui   $t7, %hi(D_800E9F7C) # $t7, 0x800f
/* 0CA404 800C9804 96250254 */  lhu   $a1, 0x254($s1)
/* 0CA408 800C9808 AFB00028 */  sw    $s0, 0x28($sp)
/* 0CA40C 800C980C 25EF9F7C */  addiu $t7, %lo(D_800E9F7C) # addiu $t7, $t7, -0x6084
/* 0CA410 800C9810 000E7080 */  sll   $t6, $t6, 2
/* 0CA414 800C9814 3C010104 */  lui   $at, (0x0104FF00 >> 16) # lui $at, 0x104
/* 0CA418 800C9818 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0CA41C 800C981C AFBE0030 */  sw    $fp, 0x30($sp)
/* 0CA420 800C9820 AFA40038 */  sw    $a0, 0x38($sp)
/* 0CA424 800C9824 3421FF00 */  ori   $at, (0x0104FF00 & 0xFFFF) # ori $at, $at, 0xff00
/* 0CA428 800C9828 01CF8021 */  addu  $s0, $t6, $t7
/* 0CA42C 800C982C 03A0F025 */  move  $fp, $sp
/* 0CA430 800C9830 02002025 */  move  $a0, $s0
/* 0CA434 800C9834 0C03155E */  jal   func_800C5578
/* 0CA438 800C9838 00A12821 */   addu  $a1, $a1, $at
/* 0CA43C 800C983C 96250254 */  lhu   $a1, 0x254($s1)
/* 0CA440 800C9840 3C010104 */  lui   $at, (0x0104FF14 >> 16) # lui $at, 0x104
/* 0CA444 800C9844 3421FF14 */  ori   $at, (0x0104FF14 & 0xFFFF) # ori $at, $at, 0xff14
/* 0CA448 800C9848 02002025 */  move  $a0, $s0
/* 0CA44C 800C984C 0C03155E */  jal   func_800C5578
/* 0CA450 800C9850 00A12821 */   addu  $a1, $a1, $at
/* 0CA454 800C9854 96250254 */  lhu   $a1, 0x254($s1)
/* 0CA458 800C9858 3C010104 */  lui   $at, (0x0104FF2E >> 16) # lui $at, 0x104
/* 0CA45C 800C985C 3421FF2E */  ori   $at, (0x0104FF2E & 0xFFFF) # ori $at, $at, 0xff2e
/* 0CA460 800C9860 02002025 */  move  $a0, $s0
/* 0CA464 800C9864 0C03155E */  jal   func_800C5578
/* 0CA468 800C9868 00A12821 */   addu  $a1, $a1, $at
/* 0CA46C 800C986C 96250254 */  lhu   $a1, 0x254($s1)
/* 0CA470 800C9870 3C010104 */  lui   $at, (0x0104FF36 >> 16) # lui $at, 0x104
/* 0CA474 800C9874 3421FF36 */  ori   $at, (0x0104FF36 & 0xFFFF) # ori $at, $at, 0xff36
/* 0CA478 800C9878 02002025 */  move  $a0, $s0
/* 0CA47C 800C987C 0C03155E */  jal   func_800C5578
/* 0CA480 800C9880 00A12821 */   addu  $a1, $a1, $at
/* 0CA484 800C9884 96250254 */  lhu   $a1, 0x254($s1)
/* 0CA488 800C9888 3C010104 */  lui   $at, (0x0104FF3E >> 16) # lui $at, 0x104
/* 0CA48C 800C988C 3421FF3E */  ori   $at, (0x0104FF3E & 0xFFFF) # ori $at, $at, 0xff3e
/* 0CA490 800C9890 02002025 */  move  $a0, $s0
/* 0CA494 800C9894 0C03155E */  jal   func_800C5578
/* 0CA498 800C9898 00A12821 */   addu  $a1, $a1, $at
/* 0CA49C 800C989C 8FDF0034 */  lw    $ra, 0x34($fp)
/* 0CA4A0 800C98A0 03C0E825 */  move  $sp, $fp
/* 0CA4A4 800C98A4 8FD00028 */  lw    $s0, 0x28($fp)
/* 0CA4A8 800C98A8 8FD1002C */  lw    $s1, 0x2c($fp)
/* 0CA4AC 800C98AC 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0CA4B0 800C98B0 03E00008 */  jr    $ra
/* 0CA4B4 800C98B4 27BD0038 */   addiu $sp, $sp, 0x38
