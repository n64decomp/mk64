glabel func_80073CB0
/* 0748B0 80073CB0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 0748B4 80073CB4 AFA70034 */  sw    $a3, 0x34($sp)
/* 0748B8 80073CB8 8FAE0034 */  lw    $t6, 0x34($sp)
/* 0748BC 80073CBC 8FAF0038 */  lw    $t7, 0x38($sp)
/* 0748C0 80073CC0 8FB8003C */  lw    $t8, 0x3c($sp)
/* 0748C4 80073CC4 8FB90040 */  lw    $t9, 0x40($sp)
/* 0748C8 80073CC8 AFA5002C */  sw    $a1, 0x2c($sp)
/* 0748CC 80073CCC 00802825 */  move  $a1, $a0
/* 0748D0 80073CD0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0748D4 80073CD4 AFA40028 */  sw    $a0, 0x28($sp)
/* 0748D8 80073CD8 AFA60030 */  sw    $a2, 0x30($sp)
/* 0748DC 80073CDC 8FA70030 */  lw    $a3, 0x30($sp)
/* 0748E0 80073CE0 8FA6002C */  lw    $a2, 0x2c($sp)
/* 0748E4 80073CE4 24040001 */  li    $a0, 1
/* 0748E8 80073CE8 AFAE0010 */  sw    $t6, 0x10($sp)
/* 0748EC 80073CEC AFAF0014 */  sw    $t7, 0x14($sp)
/* 0748F0 80073CF0 AFB80018 */  sw    $t8, 0x18($sp)
/* 0748F4 80073CF4 0C01CEDE */  jal   func_80073B78
/* 0748F8 80073CF8 AFB9001C */   sw    $t9, 0x1c($sp)
/* 0748FC 80073CFC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 074900 80073D00 27BD0028 */  addiu $sp, $sp, 0x28
/* 074904 80073D04 03E00008 */  jr    $ra
/* 074908 80073D08 00000000 */   nop   
