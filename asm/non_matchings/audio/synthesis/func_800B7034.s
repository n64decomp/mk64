glabel func_800B7034
/* 0B7C34 800B7034 3C08803B */  lui   $t0, %hi(gMaxSimultaneousNotes) # $t0, 0x803b
/* 0B7C38 800B7038 250870B0 */  addiu $t0, %lo(gMaxSimultaneousNotes) # addiu $t0, $t0, 0x70b0
/* 0B7C3C 800B703C 8D030000 */  lw    $v1, ($t0)
/* 0B7C40 800B7040 00803825 */  move  $a3, $a0
/* 0B7C44 800B7044 00001025 */  move  $v0, $zero
/* 0B7C48 800B7048 18600026 */  blez  $v1, .L800B70E4
/* 0B7C4C 800B704C 00002825 */   move  $a1, $zero
/* 0B7C50 800B7050 3C0A803B */  lui   $t2, %hi(gNoteSubsEu) # $t2, 0x803b
/* 0B7C54 800B7054 3C09803B */  lui   $t1, %hi(D_803B1508) # $t1, 0x803b
/* 0B7C58 800B7058 25291508 */  addiu $t1, %lo(D_803B1508) # addiu $t1, $t1, 0x1508
/* 0B7C5C 800B705C 254AFBC4 */  addiu $t2, %lo(gNoteSubsEu) # addiu $t2, $t2, -0x43c
.L800B7060:
/* 0B7C60 800B7060 00670019 */  multu $v1, $a3
/* 0B7C64 800B7064 8D2E0000 */  lw    $t6, ($t1)
/* 0B7C68 800B7068 8D4B0000 */  lw    $t3, ($t2)
/* 0B7C6C 800B706C 00AE2021 */  addu  $a0, $a1, $t6
/* 0B7C70 800B7070 8C8C00B0 */  lw    $t4, 0xb0($a0)
/* 0B7C74 800B7074 248400B0 */  addiu $a0, $a0, 0xb0
/* 0B7C78 800B7078 000C6FC2 */  srl   $t5, $t4, 0x1f
/* 0B7C7C 800B707C 00007812 */  mflo  $t7
/* 0B7C80 800B7080 01E2C021 */  addu  $t8, $t7, $v0
/* 0B7C84 800B7084 0018C900 */  sll   $t9, $t8, 4
/* 0B7C88 800B7088 11A0000D */  beqz  $t5, .L800B70C0
/* 0B7C8C 800B708C 032B3021 */   addu  $a2, $t9, $t3
/* 0B7C90 800B7090 8C810000 */  lw    $at, ($a0)
/* 0B7C94 800B7094 ACC10000 */  sw    $at, ($a2)
/* 0B7C98 800B7098 8C8F0004 */  lw    $t7, 4($a0)
/* 0B7C9C 800B709C ACCF0004 */  sw    $t7, 4($a2)
/* 0B7CA0 800B70A0 8C810008 */  lw    $at, 8($a0)
/* 0B7CA4 800B70A4 ACC10008 */  sw    $at, 8($a2)
/* 0B7CA8 800B70A8 8C8F000C */  lw    $t7, 0xc($a0)
/* 0B7CAC 800B70AC ACCF000C */  sw    $t7, 0xc($a2)
/* 0B7CB0 800B70B0 90980000 */  lbu   $t8, ($a0)
/* 0B7CB4 800B70B4 3319FFBF */  andi  $t9, $t8, 0xffbf
/* 0B7CB8 800B70B8 10000004 */  b     .L800B70CC
/* 0B7CBC 800B70BC A0990000 */   sb    $t9, ($a0)
.L800B70C0:
/* 0B7CC0 800B70C0 90CB0000 */  lbu   $t3, ($a2)
/* 0B7CC4 800B70C4 316CFF7F */  andi  $t4, $t3, 0xff7f
/* 0B7CC8 800B70C8 A0CC0000 */  sb    $t4, ($a2)
.L800B70CC:
/* 0B7CCC 800B70CC 8D030000 */  lw    $v1, ($t0)
/* 0B7CD0 800B70D0 24420001 */  addiu $v0, $v0, 1
/* 0B7CD4 800B70D4 24A500C0 */  addiu $a1, $a1, 0xc0
/* 0B7CD8 800B70D8 0043082A */  slt   $at, $v0, $v1
/* 0B7CDC 800B70DC 1420FFE0 */  bnez  $at, .L800B7060
/* 0B7CE0 800B70E0 00000000 */   nop   
.L800B70E4:
/* 0B7CE4 800B70E4 03E00008 */  jr    $ra
/* 0B7CE8 800B70E8 00000000 */   nop   
