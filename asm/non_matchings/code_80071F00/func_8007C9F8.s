glabel func_8007C9F8
/* 07D5F8 8007C9F8 3C028019 */  lui   $v0, %hi(D_8018EDF3) # $v0, 0x8019
/* 07D5FC 8007C9FC 8042EDF3 */  lb    $v0, %lo(D_8018EDF3)($v0)
/* 07D600 8007CA00 24010001 */  li    $at, 1
/* 07D604 8007CA04 54410004 */  bnel  $v0, $at, .L8007CA18
/* 07D608 8007CA08 24010002 */   li    $at, 2
/* 07D60C 8007CA0C 03E00008 */  jr    $ra
/* 07D610 8007CA10 00001025 */   move  $v0, $zero

/* 07D614 8007CA14 24010002 */  li    $at, 2
.L8007CA18:
/* 07D618 8007CA18 14410012 */  bne   $v0, $at, .L8007CA64
/* 07D61C 8007CA1C 3C038016 */   lui   $v1, %hi(gGPCurrentRacePlayerIdByRank) # 0x8016
/* 07D620 8007CA20 3C0E800E */  lui   $t6, %hi(gModeSelection) # $t6, 0x800e
/* 07D624 8007CA24 8DCEC53C */  lw    $t6, %lo(gModeSelection)($t6)
/* 07D628 8007CA28 3C048016 */  lui   $a0, %hi(gPlayerPositions) # $a0, 0x8016
/* 07D62C 8007CA2C 248443B8 */  addiu $a0, %lo(gPlayerPositions) # addiu $a0, $a0, 0x43b8
/* 07D630 8007CA30 15C0000A */  bnez  $t6, .L8007CA5C
/* 07D634 8007CA34 3C038016 */   lui   $v1, %hi(gGPCurrentRacePlayerIdByRank) # 0x8016
/* 07D638 8007CA38 8C820000 */  lw    $v0, ($a0)
/* 07D63C 8007CA3C 8C830004 */  lw    $v1, 4($a0)
/* 07D640 8007CA40 0043082A */  slt   $at, $v0, $v1
/* 07D644 8007CA44 10200003 */  beqz  $at, .L8007CA54
/* 07D648 8007CA48 00000000 */   nop
/* 07D64C 8007CA4C 03E00008 */  jr    $ra
/* 07D650 8007CA50 00001025 */   move  $v0, $zero

.L8007CA54:
/* 07D654 8007CA54 03E00008 */  jr    $ra
/* 07D658 8007CA58 24020001 */   li    $v0, 1

.L8007CA5C:
/* 07D65C 8007CA5C 03E00008 */  jr    $ra
/* 07D660 8007CA60 84624360 */   lh    $v0, %lo(gGPCurrentRacePlayerIdByRank)($v1) # 0x4360($v1)

.L8007CA64:
/* 07D664 8007CA64 84634360 */  lh    $v1, %lo(gGPCurrentRacePlayerIdByRank)($v1) # 0x4360($v1)
/* 07D668 8007CA68 03E00008 */  jr    $ra
/* 07D66C 8007CA6C 00601025 */   move  $v0, $v1
