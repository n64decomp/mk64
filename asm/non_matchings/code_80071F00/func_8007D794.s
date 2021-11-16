glabel func_8007D794
/* 07E394 8007D794 3C02800E */  lui   $v0, %hi(gCCSelection) # $v0, 0x800e
/* 07E398 8007D798 8C42C548 */  lw    $v0, %lo(gCCSelection)($v0)
/* 07E39C 8007D79C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 07E3A0 8007D7A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 07E3A4 8007D7A4 14400007 */  bnez  $v0, .L8007D7C4
/* 07E3A8 8007D7A8 24010001 */   li    $at, 1
/* 07E3AC 8007D7AC 3C063E4C */  lui   $a2, (0x3E4CCCCD >> 16) # lui $a2, 0x3e4c
/* 07E3B0 8007D7B0 34C6CCCD */  ori   $a2, (0x3E4CCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 07E3B4 8007D7B4 0C022681 */  jal   func_80089A04
/* 07E3B8 8007D7B8 3C053F00 */   lui   $a1, 0x3f00
/* 07E3BC 8007D7BC 1000000E */  b     .L8007D7F8
/* 07E3C0 8007D7C0 8FBF0014 */   lw    $ra, 0x14($sp)
.L8007D7C4:
/* 07E3C4 8007D7C4 14410008 */  bne   $v0, $at, .L8007D7E8
/* 07E3C8 8007D7C8 3C053E80 */   lui   $a1, 0x3e80
/* 07E3CC 8007D7CC 3C053ECC */  lui   $a1, (0x3ECCCCCD >> 16) # lui $a1, 0x3ecc
/* 07E3D0 8007D7D0 3C063E19 */  lui   $a2, (0x3E19999A >> 16) # lui $a2, 0x3e19
/* 07E3D4 8007D7D4 34C6999A */  ori   $a2, (0x3E19999A & 0xFFFF) # ori $a2, $a2, 0x999a
/* 07E3D8 8007D7D8 0C022681 */  jal   func_80089A04
/* 07E3DC 8007D7DC 34A5CCCD */   ori   $a1, (0x3ECCCCCD & 0xFFFF) # ori $a1, $a1, 0xcccd
/* 07E3E0 8007D7E0 10000005 */  b     .L8007D7F8
/* 07E3E4 8007D7E4 8FBF0014 */   lw    $ra, 0x14($sp)
.L8007D7E8:
/* 07E3E8 8007D7E8 3C063DCC */  lui   $a2, (0x3DCCCCCD >> 16) # lui $a2, 0x3dcc
/* 07E3EC 8007D7EC 0C022681 */  jal   func_80089A04
/* 07E3F0 8007D7F0 34C6CCCD */   ori   $a2, (0x3DCCCCCD & 0xFFFF) # ori $a2, $a2, 0xcccd
/* 07E3F4 8007D7F4 8FBF0014 */  lw    $ra, 0x14($sp)
.L8007D7F8:
/* 07E3F8 8007D7F8 27BD0018 */  addiu $sp, $sp, 0x18
/* 07E3FC 8007D7FC 03E00008 */  jr    $ra
/* 07E400 8007D800 00000000 */   nop   
