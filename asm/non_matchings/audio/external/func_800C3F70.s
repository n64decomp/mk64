glabel func_800C3F70
/* 0C4B70 800C3F70 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0C4B74 800C3F74 3C058019 */  lui   $a1, %hi(D_801930D0) # $a1, 0x8019
/* 0C4B78 800C3F78 3C048019 */  lui   $a0, %hi(D_80192CC6) # $a0, 0x8019
/* 0C4B7C 800C3F7C 44810000 */  mtc1  $at, $f0
/* 0C4B80 800C3F80 27ADFFF0 */  addiu $t5, $sp, -0x10
/* 0C4B84 800C3F84 24842CC6 */  addiu $a0, %lo(D_80192CC6) # addiu $a0, $a0, 0x2cc6
/* 0C4B88 800C3F88 24A530D0 */  addiu $a1, %lo(D_801930D0) # addiu $a1, $a1, 0x30d0
/* 0C4B8C 800C3F8C 00001025 */  move  $v0, $zero
/* 0C4B90 800C3F90 2408007F */  li    $t0, 127
/* 0C4B94 800C3F94 3407FFFF */  li    $a3, 65535
/* 0C4B98 800C3F98 2406024C */  li    $a2, 588
.L800C3F9C:
/* 0C4B9C 800C3F9C 00460019 */  multu $v0, $a2
/* 0C4BA0 800C3FA0 00827021 */  addu  $t6, $a0, $v0
/* 0C4BA4 800C3FA4 A1C00000 */  sb    $zero, ($t6)
/* 0C4BA8 800C3FA8 24420001 */  addiu $v0, $v0, 1
/* 0C4BAC 800C3FAC 305800FF */  andi  $t8, $v0, 0xff
/* 0C4BB0 800C3FB0 2B010003 */  slti  $at, $t8, 3
/* 0C4BB4 800C3FB4 03001025 */  move  $v0, $t8
/* 0C4BB8 800C3FB8 00007812 */  mflo  $t7
/* 0C4BBC 800C3FBC 00AF1821 */  addu  $v1, $a1, $t7
/* 0C4BC0 800C3FC0 A4670248 */  sh    $a3, 0x248($v1)
/* 0C4BC4 800C3FC4 E4600000 */  swc1  $f0, ($v1)
/* 0C4BC8 800C3FC8 A460000C */  sh    $zero, 0xc($v1)
/* 0C4BCC 800C3FCC A4600028 */  sh    $zero, 0x28($v1)
/* 0C4BD0 800C3FD0 A4600018 */  sh    $zero, 0x18($v1)
/* 0C4BD4 800C3FD4 AC600014 */  sw    $zero, 0x14($v1)
/* 0C4BD8 800C3FD8 A460024A */  sh    $zero, 0x24a($v1)
/* 0C4BDC 800C3FDC A0600041 */  sb    $zero, 0x41($v1)
/* 0C4BE0 800C3FE0 A0600042 */  sb    $zero, 0x42($v1)
/* 0C4BE4 800C3FE4 A0600012 */  sb    $zero, 0x12($v1)
/* 0C4BE8 800C3FE8 A068000E */  sb    $t0, 0xe($v1)
/* 0C4BEC 800C3FEC A068000F */  sb    $t0, 0xf($v1)
/* 0C4BF0 800C3FF0 A0680010 */  sb    $t0, 0x10($v1)
/* 0C4BF4 800C3FF4 A4600244 */  sh    $zero, 0x244($v1)
/* 0C4BF8 800C3FF8 1420FFE8 */  bnez  $at, .L800C3F9C
/* 0C4BFC 800C3FFC A4600246 */   sh    $zero, 0x246($v1)
/* 0C4C00 800C4000 01A0E825 */  move  $sp, $t5
/* 0C4C04 800C4004 03E00008 */  jr    $ra
/* 0C4C08 800C4008 25BD0010 */   addiu $sp, $t5, 0x10
