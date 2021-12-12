glabel func_800B44BC
/* 0B50BC 800B44BC 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0B50C0 800B44C0 3C0E800F */  lui   $t6, %hi(D_800F2BE4) # $t6, 0x800f
/* 0B50C4 800B44C4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B50C8 800B44C8 25CE2BE4 */  addiu $t6, %lo(D_800F2BE4) # addiu $t6, $t6, 0x2be4
/* 0B50CC 800B44CC 8DC10000 */  lw    $at, ($t6)
/* 0B50D0 800B44D0 27A50020 */  addiu $a1, $sp, 0x20
/* 0B50D4 800B44D4 3C038019 */  lui   $v1, %hi(gSoundMode) # $v1, 0x8019
/* 0B50D8 800B44D8 ACA10000 */  sw    $at, ($a1)
/* 0B50DC 800B44DC 9063EDF2 */  lbu   $v1, %lo(gSoundMode)($v1)
/* 0B50E0 800B44E0 24010001 */  li    $at, 1
/* 0B50E4 800B44E4 10600004 */  beqz  $v1, .L800B44F8
/* 0B50E8 800B44E8 00601025 */   move  $v0, $v1
/* 0B50EC 800B44EC 10410002 */  beq   $v0, $at, .L800B44F8
/* 0B50F0 800B44F0 24010003 */   li    $at, 3
/* 0B50F4 800B44F4 14410006 */  bne   $v0, $at, .L800B4510
.L800B44F8:
/* 0B50F8 800B44F8 00A34021 */   addu  $t0, $a1, $v1
/* 0B50FC 800B44FC 91040000 */  lbu   $a0, ($t0)
/* 0B5100 800B4500 3C01E000 */  lui   $at, 0xe000
/* 0B5104 800B4504 00814825 */  or    $t1, $a0, $at
/* 0B5108 800B4508 0C030D12 */  jal   func_800C3448
/* 0B510C 800B450C 01202025 */   move  $a0, $t1
.L800B4510:
/* 0B5110 800B4510 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B5114 800B4514 27BD0028 */  addiu $sp, $sp, 0x28
/* 0B5118 800B4518 03E00008 */  jr    $ra
/* 0B511C 800B451C 00000000 */   nop   
