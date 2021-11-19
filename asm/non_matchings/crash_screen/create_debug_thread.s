glabel create_debug_thread
/* 0052B8 800046B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0052BC 800046BC AFBF001C */  sw    $ra, 0x1c($sp)
/* 0052C0 800046C0 3C048016 */  lui   $a0, %hi(D_80162D40) # $a0, 0x8016
/* 0052C4 800046C4 3C058016 */  lui   $a1, %hi(D_80162D58) # $a1, 0x8016
/* 0052C8 800046C8 24A52D58 */  addiu $a1, %lo(D_80162D58) # addiu $a1, $a1, 0x2d58
/* 0052CC 800046CC 24842D40 */  addiu $a0, %lo(D_80162D40) # addiu $a0, $a0, 0x2d40
/* 0052D0 800046D0 0C033358 */  jal   osCreateMesgQueue
/* 0052D4 800046D4 24060001 */   li    $a2, 1
/* 0052D8 800046D8 3C0E8016 */  lui   $t6, %hi(D_80162D40) # $t6, 0x8016
/* 0052DC 800046DC 25CE2D40 */  addiu $t6, %lo(D_80162D40) # addiu $t6, $t6, 0x2d40
/* 0052E0 800046E0 3C048016 */  lui   $a0, %hi(D_80162790) # $a0, 0x8016
/* 0052E4 800046E4 3C068000 */  lui   $a2, %hi(thread9_crash_screen) # $a2, 0x8000
/* 0052E8 800046E8 240F007F */  li    $t7, 127
/* 0052EC 800046EC AFAF0014 */  sw    $t7, 0x14($sp)
/* 0052F0 800046F0 24C64530 */  addiu $a2, %lo(thread9_crash_screen) # addiu $a2, $a2, 0x4530
/* 0052F4 800046F4 24842790 */  addiu $a0, %lo(D_80162790) # addiu $a0, $a0, 0x2790
/* 0052F8 800046F8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0052FC 800046FC 24050009 */  li    $a1, 9
/* 005300 80004700 0C032FDC */  jal   osCreateThread
/* 005304 80004704 00003825 */   move  $a3, $zero
/* 005308 80004708 8FBF001C */  lw    $ra, 0x1c($sp)
/* 00530C 8000470C 27BD0020 */  addiu $sp, $sp, 0x20
/* 005310 80004710 03E00008 */  jr    $ra
/* 005314 80004714 00000000 */   nop   
