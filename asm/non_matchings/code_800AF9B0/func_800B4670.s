glabel func_800B4670
/* 0B5270 800B4670 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0B5274 800B4674 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B5278 800B4678 0C02D24B */  jal   func_800B492C
/* 0B527C 800B467C 00000000 */   nop   
/* 0B5280 800B4680 3C018019 */  lui   $at, %hi(D_8018ED16) # $at, 0x8019
/* 0B5284 800B4684 0C02D279 */  jal   func_800B49E4
/* 0B5288 800B4688 A022ED16 */   sb    $v0, %lo(D_8018ED16)($at)
/* 0B528C 800B468C 3C068019 */  lui   $a2, %hi(D_8018ED10) # $a2, 0x8019
/* 0B5290 800B4690 3C0E8019 */  lui   $t6, %hi(D_8018EB90) # $t6, 0x8019
/* 0B5294 800B4694 24C6ED10 */  addiu $a2, %lo(D_8018ED10) # addiu $a2, $a2, -0x12f0
/* 0B5298 800B4698 25CEEB90 */  addiu $t6, %lo(D_8018EB90) # addiu $t6, $t6, -0x1470
/* 0B529C 800B469C 00CE2823 */  subu  $a1, $a2, $t6
/* 0B52A0 800B46A0 3C018019 */  lui   $at, %hi(D_8018ED17) # $at, 0x8019
/* 0B52A4 800B46A4 000578C2 */  srl   $t7, $a1, 3
/* 0B52A8 800B46A8 3C048015 */  lui   $a0, %hi(gSIEventMesgQueue) # $a0, 0x8015
/* 0B52AC 800B46AC A022ED17 */  sb    $v0, %lo(D_8018ED17)($at)
/* 0B52B0 800B46B0 2484F0B8 */  addiu $a0, %lo(gSIEventMesgQueue) # addiu $a0, $a0, -0xf48
/* 0B52B4 800B46B4 31E500FF */  andi  $a1, $t7, 0xff
/* 0B52B8 800B46B8 0C034014 */  jal   osEepromLongWrite
/* 0B52BC 800B46BC 24070008 */   li    $a3, 8
/* 0B52C0 800B46C0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B52C4 800B46C4 27BD0018 */  addiu $sp, $sp, 0x18
/* 0B52C8 800B46C8 03E00008 */  jr    $ra
/* 0B52CC 800B46CC 00000000 */   nop   
