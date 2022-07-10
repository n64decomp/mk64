glabel func_800C400C
/* 0C4C0C 800C400C 3C058019 */  lui   $a1, %hi(D_801930D0) # $a1, 0x8019
/* 0C4C10 800C4010 3C048019 */  lui   $a0, %hi(D_80192CC6) # $a0, 0x8019
/* 0C4C14 800C4014 27ADFFF0 */  addiu $t5, $sp, -0x10
/* 0C4C18 800C4018 24842CC6 */  addiu $a0, %lo(D_80192CC6) # addiu $a0, $a0, 0x2cc6
/* 0C4C1C 800C401C 24A530D0 */  addiu $a1, %lo(D_801930D0) # addiu $a1, $a1, 0x30d0
/* 0C4C20 800C4020 00001025 */  move  $v0, $zero
/* 0C4C24 800C4024 3407FFFF */  li    $a3, 65535
/* 0C4C28 800C4028 2406024C */  li    $a2, 588
.L800C402C:
/* 0C4C2C 800C402C 00460019 */  multu $v0, $a2
/* 0C4C30 800C4030 00827021 */  addu  $t6, $a0, $v0
/* 0C4C34 800C4034 A1C00000 */  sb    $zero, ($t6)
/* 0C4C38 800C4038 24420001 */  addiu $v0, $v0, 1
/* 0C4C3C 800C403C 305800FF */  andi  $t8, $v0, 0xff
/* 0C4C40 800C4040 2B010003 */  slti  $at, $t8, 3
/* 0C4C44 800C4044 03001025 */  move  $v0, $t8
/* 0C4C48 800C4048 00007812 */  mflo  $t7
/* 0C4C4C 800C404C 00AF1821 */  addu  $v1, $a1, $t7
/* 0C4C50 800C4050 A4670248 */  sh    $a3, 0x248($v1)
/* 0C4C54 800C4054 A4600028 */  sh    $zero, 0x28($v1)
/* 0C4C58 800C4058 A4600018 */  sh    $zero, 0x18($v1)
/* 0C4C5C 800C405C AC600014 */  sw    $zero, 0x14($v1)
/* 0C4C60 800C4060 A460024A */  sh    $zero, 0x24a($v1)
/* 0C4C64 800C4064 A0600041 */  sb    $zero, 0x41($v1)
/* 0C4C68 800C4068 A0600042 */  sb    $zero, 0x42($v1)
/* 0C4C6C 800C406C A4600244 */  sh    $zero, 0x244($v1)
/* 0C4C70 800C4070 1420FFEE */  bnez  $at, .L800C402C
/* 0C4C74 800C4074 A4600246 */   sh    $zero, 0x246($v1)
/* 0C4C78 800C4078 01A0E825 */  move  $sp, $t5
/* 0C4C7C 800C407C 03E00008 */  jr    $ra
/* 0C4C80 800C4080 25BD0010 */   addiu $sp, $t5, 0x10
