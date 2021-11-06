glabel func_800C9250
/* 0C9E50 800C9250 308E00FF */  andi  $t6, $a0, 0xff
/* 0C9E54 800C9254 000E78C0 */  sll   $t7, $t6, 3
/* 0C9E58 800C9258 01EE7823 */  subu  $t7, $t7, $t6
/* 0C9E5C 800C925C 000F7900 */  sll   $t7, $t7, 4
/* 0C9E60 800C9260 01EE7823 */  subu  $t7, $t7, $t6
/* 0C9E64 800C9264 000F7880 */  sll   $t7, $t7, 2
/* 0C9E68 800C9268 01EE7823 */  subu  $t7, $t7, $t6
/* 0C9E6C 800C926C 000F78C0 */  sll   $t7, $t7, 3
/* 0C9E70 800C9270 3C18800F */  lui   $t8, %hi(gPlayers+0x254)
/* 0C9E74 800C9274 030FC021 */  addu  $t8, $t8, $t7
/* 0C9E78 800C9278 3C08803B */  lui   $t0, %hi(D_803B7194) # $t0, 0x803b
/* 0C9E7C 800C927C 8D087194 */  lw    $t0, %lo(D_803B7194)($t0)
/* 0C9E80 800C9280 97186BE4 */  lhu   $t8, %lo(gPlayers+0x254)($t8)
/* 0C9E84 800C9284 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C9E88 800C9288 3C012900 */  lui   $at, (0x29008001 >> 16) # lui $at, 0x2900
/* 0C9E8C 800C928C 31090001 */  andi  $t1, $t0, 1
/* 0C9E90 800C9290 0018C900 */  sll   $t9, $t8, 4
/* 0C9E94 800C9294 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C9E98 800C9298 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C9E9C 800C929C AFA40030 */  sw    $a0, 0x30($sp)
/* 0C9EA0 800C92A0 03292821 */  addu  $a1, $t9, $t1
/* 0C9EA4 800C92A4 34218001 */  ori   $at, (0x29008001 & 0xFFFF) # ori $at, $at, 0x8001
/* 0C9EA8 800C92A8 01C02025 */  move  $a0, $t6
/* 0C9EAC 800C92AC 03A0F025 */  move  $fp, $sp
/* 0C9EB0 800C92B0 0C03243D */  jal   func_800C90F4
/* 0C9EB4 800C92B4 00A12821 */   addu  $a1, $a1, $at
/* 0C9EB8 800C92B8 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C9EBC 800C92BC 03C0E825 */  move  $sp, $fp
/* 0C9EC0 800C92C0 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C9EC4 800C92C4 03E00008 */  jr    $ra
/* 0C9EC8 800C92C8 27BD0030 */   addiu $sp, $sp, 0x30
