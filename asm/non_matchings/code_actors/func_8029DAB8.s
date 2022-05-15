glabel func_8029DAB8
/* 1070C8 8029DAB8 3C018015 */  lui   $at, %hi(D_80150110) # $at, 0x8015
/* 1070CC 8029DABC 3C038016 */  lui   $v1, %hi(gActorList) # $v1, 0x8016
/* 1070D0 8029DAC0 3C028016 */  lui   $v0, %hi(D_80162578) # $v0, 0x8016
/* 1070D4 8029DAC4 44800000 */  mtc1  $zero, $f0
/* 1070D8 8029DAC8 A4200110 */  sh    $zero, %lo(D_80150110)($at)
/* 1070DC 8029DACC 24422578 */  addiu $v0, %lo(D_80162578) # addiu $v0, $v0, 0x2578
/* 1070E0 8029DAD0 2463F9B8 */  addiu $v1, %lo(gActorList) # addiu $v1, $v1, -0x648
.L8029DAD4:
/* 1070E4 8029DAD4 246301C0 */  addiu $v1, $v1, 0x1c0
/* 1070E8 8029DAD8 A460FEB2 */  sh    $zero, -0x14e($v1)
/* 1070EC 8029DADC A460FEB0 */  sh    $zero, -0x150($v1)
/* 1070F0 8029DAE0 A460FEB4 */  sh    $zero, -0x14c($v1)
/* 1070F4 8029DAE4 A460FEB6 */  sh    $zero, -0x14a($v1)
/* 1070F8 8029DAE8 E460FEB8 */  swc1  $f0, -0x148($v1)
/* 1070FC 8029DAEC E460FEBC */  swc1  $f0, -0x144($v1)
/* 107100 8029DAF0 A460FF22 */  sh    $zero, -0xde($v1)
/* 107104 8029DAF4 A460FF20 */  sh    $zero, -0xe0($v1)
/* 107108 8029DAF8 A460FF24 */  sh    $zero, -0xdc($v1)
/* 10710C 8029DAFC A460FF26 */  sh    $zero, -0xda($v1)
/* 107110 8029DB00 E460FF28 */  swc1  $f0, -0xd8($v1)
/* 107114 8029DB04 E460FF2C */  swc1  $f0, -0xd4($v1)
/* 107118 8029DB08 A460FF92 */  sh    $zero, -0x6e($v1)
/* 10711C 8029DB0C A460FF90 */  sh    $zero, -0x70($v1)
/* 107120 8029DB10 A460FF94 */  sh    $zero, -0x6c($v1)
/* 107124 8029DB14 A460FF96 */  sh    $zero, -0x6a($v1)
/* 107128 8029DB18 E460FF98 */  swc1  $f0, -0x68($v1)
/* 10712C 8029DB1C E460FF9C */  swc1  $f0, -0x64($v1)
/* 107130 8029DB20 A460FE42 */  sh    $zero, -0x1be($v1)
/* 107134 8029DB24 A460FE40 */  sh    $zero, -0x1c0($v1)
/* 107138 8029DB28 A460FE44 */  sh    $zero, -0x1bc($v1)
/* 10713C 8029DB2C A460FE46 */  sh    $zero, -0x1ba($v1)
/* 107140 8029DB30 E460FE48 */  swc1  $f0, -0x1b8($v1)
/* 107144 8029DB34 1462FFE7 */  bne   $v1, $v0, .L8029DAD4
/* 107148 8029DB38 E460FE4C */   swc1  $f0, -0x1b4($v1)
/* 10714C 8029DB3C 03E00008 */  jr    $ra
/* 107150 8029DB40 00000000 */   nop   
