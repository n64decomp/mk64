glabel func_80295BF8
/* 0FF208 80295BF8 000470C0 */  sll   $t6, $a0, 3
/* 0FF20C 80295BFC 01C47023 */  subu  $t6, $t6, $a0
/* 0FF210 80295C00 000E7100 */  sll   $t6, $t6, 4
/* 0FF214 80295C04 01C47023 */  subu  $t6, $t6, $a0
/* 0FF218 80295C08 000E7080 */  sll   $t6, $t6, 2
/* 0FF21C 80295C0C 01C47023 */  subu  $t6, $t6, $a0
/* 0FF220 80295C10 3C0F800F */  lui   $t7, %hi(gPlayers) # $t7, 0x800f
/* 0FF224 80295C14 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0FF228 80295C18 25EF6990 */  addiu $t7, %lo(gPlayers) # addiu $t7, $t7, 0x6990
/* 0FF22C 80295C1C 000E70C0 */  sll   $t6, $t6, 3
/* 0FF230 80295C20 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FF234 80295C24 01CF1021 */  addu  $v0, $t6, $t7
/* 0FF238 80295C28 24440110 */  addiu $a0, $v0, 0x110
/* 0FF23C 80295C2C 0C0AAAAB */  jal   func_802AAAAC
/* 0FF240 80295C30 AFA20018 */   sw    $v0, 0x18($sp)
/* 0FF244 80295C34 8FA20018 */  lw    $v0, 0x18($sp)
/* 0FF248 80295C38 24031388 */  li    $v1, 5000
/* 0FF24C 80295C3C A04001BD */  sb    $zero, 0x1bd($v0)
/* 0FF250 80295C40 A04001A5 */  sb    $zero, 0x1a5($v0)
/* 0FF254 80295C44 A04001ED */  sb    $zero, 0x1ed($v0)
/* 0FF258 80295C48 A04001D5 */  sb    $zero, 0x1d5($v0)
/* 0FF25C 80295C4C A44301BE */  sh    $v1, 0x1be($v0)
/* 0FF260 80295C50 A44301A6 */  sh    $v1, 0x1a6($v0)
/* 0FF264 80295C54 A44301EE */  sh    $v1, 0x1ee($v0)
/* 0FF268 80295C58 A44301D6 */  sh    $v1, 0x1d6($v0)
/* 0FF26C 80295C5C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FF270 80295C60 27BD0020 */  addiu $sp, $sp, 0x20
/* 0FF274 80295C64 03E00008 */  jr    $ra
/* 0FF278 80295C68 00000000 */   nop   
