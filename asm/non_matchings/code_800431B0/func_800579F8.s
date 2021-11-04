glabel func_800579F8
/* 0585F8 800579F8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0585FC 800579FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 058600 80057A00 AFA40018 */  sw    $a0, 0x18($sp)
/* 058604 80057A04 AFA5001C */  sw    $a1, 0x1c($sp)
/* 058608 80057A08 AFA60020 */  sw    $a2, 0x20($sp)
/* 05860C 80057A0C 0C015DC4 */  jal   load_debug_font
/* 058610 80057A10 AFA70024 */   sw    $a3, 0x24($sp)
/* 058614 80057A14 27A40018 */  addiu $a0, $sp, 0x18
/* 058618 80057A18 27A5001C */  addiu $a1, $sp, 0x1c
/* 05861C 80057A1C 0C015D21 */  jal   debug_print_string
/* 058620 80057A20 8FA60020 */   lw    $a2, 0x20($sp)
/* 058624 80057A24 27A40018 */  addiu $a0, $sp, 0x18
/* 058628 80057A28 27A5001C */  addiu $a1, $sp, 0x1c
/* 05862C 80057A2C 8FA60024 */  lw    $a2, 0x24($sp)
/* 058630 80057A30 0C015D49 */  jal   debug_print_number
/* 058634 80057A34 2407000A */   li    $a3, 10
/* 058638 80057A38 0C015DDE */  jal   func_80057778
/* 05863C 80057A3C 00000000 */   nop   
/* 058640 80057A40 8FBF0014 */  lw    $ra, 0x14($sp)
/* 058644 80057A44 27BD0018 */  addiu $sp, $sp, 0x18
/* 058648 80057A48 03E00008 */  jr    $ra
/* 05864C 80057A4C 00000000 */   nop   
