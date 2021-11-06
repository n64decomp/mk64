glabel func_800C35E8
/* 0C41E8 800C35E8 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0C41EC 800C35EC 308E00FF */  andi  $t6, $a0, 0xff
/* 0C41F0 800C35F0 3C018019 */  lui   $at, %hi(D_80192CC6)
/* 0C41F4 800C35F4 AFA40010 */  sw    $a0, 0x10($sp)
/* 0C41F8 800C35F8 002E0821 */  addu  $at, $at, $t6
/* 0C41FC 800C35FC A0202CC6 */  sb    $zero, %lo(D_80192CC6)($at)
/* 0C4200 800C3600 03E00008 */  jr    $ra
/* 0C4204 800C3604 27BD0010 */   addiu $sp, $sp, 0x10
