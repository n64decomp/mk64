glabel func_800C36C4
/* 0C42C4 800C36C4 308E00FF */  andi  $t6, $a0, 0xff
/* 0C42C8 800C36C8 000E40C0 */  sll   $t0, $t6, 3
/* 0C42CC 800C36CC 010E4021 */  addu  $t0, $t0, $t6
/* 0C42D0 800C36D0 00084080 */  sll   $t0, $t0, 2
/* 0C42D4 800C36D4 010E4021 */  addu  $t0, $t0, $t6
/* 0C42D8 800C36D8 00084080 */  sll   $t0, $t0, 2
/* 0C42DC 800C36DC 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0C42E0 800C36E0 010E4023 */  subu  $t0, $t0, $t6
/* 0C42E4 800C36E4 3C098019 */  lui   $t1, %hi(D_801930D0) # $t1, 0x8019
/* 0C42E8 800C36E8 252930D0 */  addiu $t1, %lo(D_801930D0) # addiu $t1, $t1, 0x30d0
/* 0C42EC 800C36EC 00084080 */  sll   $t0, $t0, 2
/* 0C42F0 800C36F0 30AF00FF */  andi  $t7, $a1, 0xff
/* 0C42F4 800C36F4 01091021 */  addu  $v0, $t0, $t1
/* 0C42F8 800C36F8 004F5021 */  addu  $t2, $v0, $t7
/* 0C42FC 800C36FC AFA40010 */  sw    $a0, 0x10($sp)
/* 0C4300 800C3700 AFA50014 */  sw    $a1, 0x14($sp)
/* 0C4304 800C3704 AFA60018 */  sw    $a2, 0x18($sp)
/* 0C4308 800C3708 AFA7001C */  sw    $a3, 0x1c($sp)
/* 0C430C 800C370C A146000E */  sb    $a2, 0xe($t2)
/* 0C4310 800C3710 240B0001 */  li    $t3, 1
/* 0C4314 800C3714 A0470011 */  sb    $a3, 0x11($v0)
/* 0C4318 800C3718 A04B0012 */  sb    $t3, 0x12($v0)
/* 0C431C 800C371C 03E00008 */  jr    $ra
/* 0C4320 800C3720 27BD0010 */   addiu $sp, $sp, 0x10
