glabel func_80072180
/* 072D80 80072180 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 072D84 80072184 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 072D88 80072188 24030001 */  li    $v1, 1
/* 072D8C 8007218C 3C0F800E */  lui   $t7, %hi(gPlayerOne) # $t7, 0x800e
/* 072D90 80072190 146E0009 */  bne   $v1, $t6, .L800721B8
/* 072D94 80072194 00000000 */   nop
/* 072D98 80072198 8DEFC4DC */  lw    $t7, %lo(gPlayerOne)($t7)
/* 072D9C 8007219C 95E20000 */  lhu   $v0, ($t7)
/* 072DA0 800721A0 30588000 */  andi  $t8, $v0, 0x8000
/* 072DA4 800721A4 13000004 */  beqz  $t8, .L800721B8
/* 072DA8 800721A8 30591100 */   andi  $t9, $v0, 0x1100
/* 072DAC 800721AC 17200002 */  bnez  $t9, .L800721B8
/* 072DB0 800721B0 3C018016 */   lui   $at, %hi(D_80162DF8) # $at, 0x8016
/* 072DB4 800721B4 AC232DF8 */  sw    $v1, %lo(D_80162DF8)($at)
.L800721B8:
/* 072DB8 800721B8 03E00008 */  jr    $ra
/* 072DBC 800721BC 00000000 */   nop
