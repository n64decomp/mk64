glabel func_80080A4C
/* 08164C 80080A4C 0005C8C0 */  sll   $t9, $a1, 3
/* 081650 80080A50 00057080 */  sll   $t6, $a1, 2
/* 081654 80080A54 0325C823 */  subu  $t9, $t9, $a1
/* 081658 80080A58 01C57023 */  subu  $t6, $t6, $a1
/* 08165C 80080A5C 3C0F800E */  lui   $t7, %hi(camera1) # $t7, 0x800e
/* 081660 80080A60 0019C900 */  sll   $t9, $t9, 4
/* 081664 80080A64 8DEFDB40 */  lw    $t7, %lo(camera1)($t7)
/* 081668 80080A68 000E70C0 */  sll   $t6, $t6, 3
/* 08166C 80080A6C 0325C823 */  subu  $t9, $t9, $a1
/* 081670 80080A70 3C09800E */  lui   $t1, %hi(gScreenModeSelection) # $t1, 0x800e
/* 081674 80080A74 8D29C530 */  lw    $t1, %lo(gScreenModeSelection)($t1)
/* 081678 80080A78 01C57023 */  subu  $t6, $t6, $a1
/* 08167C 80080A7C 0019C880 */  sll   $t9, $t9, 2
/* 081680 80080A80 3C08800E */  lui   $t0, %hi(gPlayerOne) # $t0, 0x800e
/* 081684 80080A84 8D08C4DC */  lw    $t0, %lo(gPlayerOne)($t0)
/* 081688 80080A88 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 08168C 80080A8C 000E70C0 */  sll   $t6, $t6, 3
/* 081690 80080A90 0325C823 */  subu  $t9, $t9, $a1
/* 081694 80080A94 0019C8C0 */  sll   $t9, $t9, 3
/* 081698 80080A98 24010003 */  li    $at, 3
/* 08169C 80080A9C 01CFC021 */  addu  $t8, $t6, $t7
/* 0816A0 80080AA0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0816A4 80080AA4 AFA40020 */  sw    $a0, 0x20($sp)
/* 0816A8 80080AA8 AFB8001C */  sw    $t8, 0x1c($sp)
/* 0816AC 80080AAC 1121001A */  beq   $t1, $at, .L80080B18
/* 0816B0 80080AB0 03283821 */   addu  $a3, $t9, $t0
/* 0816B4 80080AB4 24050010 */  li    $a1, 16
/* 0816B8 80080AB8 0C01C8C8 */  jal   func_80072320
/* 0816BC 80080ABC AFA70018 */   sw    $a3, 0x18($sp)
/* 0816C0 80080AC0 10400015 */  beqz  $v0, .L80080B18
/* 0816C4 80080AC4 8FA70018 */   lw    $a3, 0x18($sp)
/* 0816C8 80080AC8 8FA40020 */  lw    $a0, 0x20($sp)
/* 0816CC 80080ACC 00E02825 */  move  $a1, $a3
/* 0816D0 80080AD0 0C022296 */  jal   func_80088A58
/* 0816D4 80080AD4 3C0643FA */   lui   $a2, 0x43fa
/* 0816D8 80080AD8 50400010 */  beql  $v0, $zero, .L80080B1C
/* 0816DC 80080ADC 8FBF0014 */   lw    $ra, 0x14($sp)
/* 0816E0 80080AE0 0C007284 */  jal   func_8001CA10
/* 0816E4 80080AE4 8FA4001C */   lw    $a0, 0x1c($sp)
/* 0816E8 80080AE8 8FAA0020 */  lw    $t2, 0x20($sp)
/* 0816EC 80080AEC 3C0C8016 */  lui   $t4, %hi(D_80165C18) # $t4, 0x8016
/* 0816F0 80080AF0 258C5C18 */  addiu $t4, %lo(D_80165C18) # addiu $t4, $t4, 0x5c18
/* 0816F4 80080AF4 000A58C0 */  sll   $t3, $t2, 3
/* 0816F8 80080AF8 016A5823 */  subu  $t3, $t3, $t2
/* 0816FC 80080AFC 000B5940 */  sll   $t3, $t3, 5
/* 081700 80080B00 016C1021 */  addu  $v0, $t3, $t4
/* 081704 80080B04 3C061900 */  lui   $a2, (0x1900800F >> 16) # lui $a2, 0x1900
/* 081708 80080B08 34C6800F */  ori   $a2, (0x1900800F & 0xFFFF) # ori $a2, $a2, 0x800f
/* 08170C 80080B0C 24440004 */  addiu $a0, $v0, 4
/* 081710 80080B10 0C03262E */  jal   func_800C98B8
/* 081714 80080B14 24450038 */   addiu $a1, $v0, 0x38
.L80080B18:
/* 081718 80080B18 8FBF0014 */  lw    $ra, 0x14($sp)
.L80080B1C:
/* 08171C 80080B1C 27BD0020 */  addiu $sp, $sp, 0x20
/* 081720 80080B20 03E00008 */  jr    $ra
/* 081724 80080B24 00000000 */   nop
