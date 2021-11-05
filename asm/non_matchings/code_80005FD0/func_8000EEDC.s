glabel func_8000EEDC
/* 00FADC 8000EEDC 3C038016 */  lui   $v1, %hi(D_801641F8) # $v1, 0x8016
/* 00FAE0 8000EEE0 3C048016 */  lui   $a0, %hi(D_801642D8) # $a0, 0x8016
/* 00FAE4 8000EEE4 248442D8 */  addiu $a0, %lo(D_801642D8) # addiu $a0, $a0, 0x42d8
/* 00FAE8 8000EEE8 246341F8 */  addiu $v1, %lo(D_801641F8) # addiu $v1, $v1, 0x41f8
/* 00FAEC 8000EEEC 240203E8 */  li    $v0, 1000
.L8000EEF0:
/* 00FAF0 8000EEF0 24630070 */  addiu $v1, $v1, 0x70
/* 00FAF4 8000EEF4 A460FFB8 */  sh    $zero, -0x48($v1)
/* 00FAF8 8000EEF8 A462FFBA */  sh    $v0, -0x46($v1)
/* 00FAFC 8000EEFC A460FFD4 */  sh    $zero, -0x2c($v1)
/* 00FB00 8000EF00 A462FFD6 */  sh    $v0, -0x2a($v1)
/* 00FB04 8000EF04 A460FFF0 */  sh    $zero, -0x10($v1)
/* 00FB08 8000EF08 A462FFF2 */  sh    $v0, -0xe($v1)
/* 00FB0C 8000EF0C A460FF9C */  sh    $zero, -0x64($v1)
/* 00FB10 8000EF10 1464FFF7 */  bne   $v1, $a0, .L8000EEF0
/* 00FB14 8000EF14 A462FF9E */   sh    $v0, -0x62($v1)
/* 00FB18 8000EF18 03E00008 */  jr    $ra
/* 00FB1C 8000EF1C 00000000 */   nop   
