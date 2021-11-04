glabel func_80074574
/* 075174 80074574 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 075178 80074578 AFA60020 */  sw    $a2, 0x20($sp)
/* 07517C 8007457C 97A80022 */  lhu   $t0, 0x22($sp)
/* 075180 80074580 30EEFFFF */  andi  $t6, $a3, 0xffff
/* 075184 80074584 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 075188 80074588 010E0019 */  multu $t0, $t6
/* 07518C 8007458C 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 075190 80074590 3C190064 */  lui   $t9, %hi(_other_texturesSegmentRomStart) # $t9, 0x64
/* 075194 80074594 AFBF0014 */  sw    $ra, 0x14($sp)
/* 075198 80074598 AFA40018 */  sw    $a0, 0x18($sp)
/* 07519C 8007459C 27391F70 */  addiu $t9, %lo(_other_texturesSegmentRomStart) # addiu $t9, $t9, 0x1f70
/* 0751A0 800745A0 0081C024 */  and   $t8, $a0, $at
/* 0751A4 800745A4 AFA70024 */  sw    $a3, 0x24($sp)
/* 0751A8 800745A8 03192021 */  addu  $a0, $t8, $t9
/* 0751AC 800745AC 00003012 */  mflo  $a2
/* 0751B0 800745B0 0C01D144 */  jal   func_80074510
/* 0751B4 800745B4 00000000 */   nop   
/* 0751B8 800745B8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0751BC 800745BC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0751C0 800745C0 03E00008 */  jr    $ra
/* 0751C4 800745C4 00000000 */   nop   
