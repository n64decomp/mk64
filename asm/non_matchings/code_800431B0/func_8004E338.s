glabel func_8004E338
/* 04EF38 8004E338 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04EF3C 8004E33C 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04EF40 8004E340 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04EF44 8004E344 8D030000 */  lw    $v1, ($t0)
/* 04EF48 8004E348 AFA40020 */  sw    $a0, 0x20($sp)
/* 04EF4C 8004E34C AFBF001C */  sw    $ra, 0x1c($sp)
/* 04EF50 8004E350 246E0008 */  addiu $t6, $v1, 8
/* 04EF54 8004E354 AFA50024 */  sw    $a1, 0x24($sp)
/* 04EF58 8004E358 AFA60028 */  sw    $a2, 0x28($sp)
/* 04EF5C 8004E35C AFA7002C */  sw    $a3, 0x2c($sp)
/* 04EF60 8004E360 AD0E0000 */  sw    $t6, ($t0)
/* 04EF64 8004E364 3C180D00 */  lui   $t8, %hi(D_0D007DB8) # $t8, 0xd00
/* 04EF68 8004E368 27187DB8 */  addiu $t8, %lo(D_0D007DB8) # addiu $t8, $t8, 0x7db8
/* 04EF6C 8004E36C 3C0F0600 */  lui   $t7, 0x600
/* 04EF70 8004E370 3C048016 */  lui   $a0, %hi(D_8016589C) # $a0, 0x8016
/* 04EF74 8004E374 AC6F0000 */  sw    $t7, ($v1)
/* 04EF78 8004E378 AC780004 */  sw    $t8, 4($v1)
/* 04EF7C 8004E37C 0C012CAF */  jal   func_8004B2BC
/* 04EF80 8004E380 8C84589C */   lw    $a0, %lo(D_8016589C)($a0)
/* 04EF84 8004E384 0C012C17 */  jal   func_8004B05C
/* 04EF88 8004E388 8FA40028 */   lw    $a0, 0x28($sp)
/* 04EF8C 8004E38C 8FB90034 */  lw    $t9, 0x34($sp)
/* 04EF90 8004E390 8FA40020 */  lw    $a0, 0x20($sp)
/* 04EF94 8004E394 8FA50024 */  lw    $a1, 0x24($sp)
/* 04EF98 8004E398 8FA6002C */  lw    $a2, 0x2c($sp)
/* 04EF9C 8004E39C 8FA70030 */  lw    $a3, 0x30($sp)
/* 04EFA0 8004E3A0 0C01381B */  jal   func_8004E06C
/* 04EFA4 8004E3A4 AFB90010 */   sw    $t9, 0x10($sp)
/* 04EFA8 8004E3A8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04EFAC 8004E3AC 27BD0020 */  addiu $sp, $sp, 0x20
/* 04EFB0 8004E3B0 03E00008 */  jr    $ra
/* 04EFB4 8004E3B4 00000000 */   nop   

/* 04EFB8 8004E3B8 03E00008 */  jr    $ra
/* 04EFBC 8004E3BC 00000000 */   nop   

/* 04EFC0 8004E3C0 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04EFC4 8004E3C4 8FAE0038 */  lw    $t6, 0x38($sp)
/* 04EFC8 8004E3C8 8FAF003C */  lw    $t7, 0x3c($sp)
/* 04EFCC 8004E3CC 8FB80044 */  lw    $t8, 0x44($sp)
/* 04EFD0 8004E3D0 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04EFD4 8004E3D4 AFAE0010 */  sw    $t6, 0x10($sp)
/* 04EFD8 8004E3D8 AFAF0014 */  sw    $t7, 0x14($sp)
/* 04EFDC 8004E3DC 0C013890 */  jal   func_8004E240
/* 04EFE0 8004E3E0 AFB80018 */   sw    $t8, 0x18($sp)
/* 04EFE4 8004E3E4 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04EFE8 8004E3E8 27BD0028 */  addiu $sp, $sp, 0x28
/* 04EFEC 8004E3EC 03E00008 */  jr    $ra
/* 04EFF0 8004E3F0 00000000 */   nop   

/* 04EFF4 8004E3F4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04EFF8 8004E3F8 8FAE0038 */  lw    $t6, 0x38($sp)
/* 04EFFC 8004E3FC 8FAF003C */  lw    $t7, 0x3c($sp)
/* 04F000 8004E400 8FB80040 */  lw    $t8, 0x40($sp)
/* 04F004 8004E404 8FB90048 */  lw    $t9, 0x48($sp)
/* 04F008 8004E408 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04F00C 8004E40C AFAE0010 */  sw    $t6, 0x10($sp)
/* 04F010 8004E410 AFAF0014 */  sw    $t7, 0x14($sp)
/* 04F014 8004E414 AFB80018 */  sw    $t8, 0x18($sp)
/* 04F018 8004E418 0C0138AE */  jal   func_8004E2B8
/* 04F01C 8004E41C AFB9001C */   sw    $t9, 0x1c($sp)
/* 04F020 8004E420 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04F024 8004E424 27BD0028 */  addiu $sp, $sp, 0x28
/* 04F028 8004E428 03E00008 */  jr    $ra
/* 04F02C 8004E42C 00000000 */   nop   

/* 04F030 8004E430 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04F034 8004E434 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04F038 8004E438 240E0008 */  li    $t6, 8
/* 04F03C 8004E43C 240F0080 */  li    $t7, 128
/* 04F040 8004E440 24180080 */  li    $t8, 128
/* 04F044 8004E444 AFB80018 */  sw    $t8, 0x18($sp)
/* 04F048 8004E448 AFAF0014 */  sw    $t7, 0x14($sp)
/* 04F04C 8004E44C 0C013890 */  jal   func_8004E240
/* 04F050 8004E450 AFAE0010 */   sw    $t6, 0x10($sp)
/* 04F054 8004E454 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04F058 8004E458 27BD0028 */  addiu $sp, $sp, 0x28
/* 04F05C 8004E45C 03E00008 */  jr    $ra
/* 04F060 8004E460 00000000 */   nop   

/* 04F064 8004E464 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04F068 8004E468 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04F06C 8004E46C 240E0020 */  li    $t6, 32
/* 04F070 8004E470 240F0020 */  li    $t7, 32
/* 04F074 8004E474 24180020 */  li    $t8, 32
/* 04F078 8004E478 AFB80018 */  sw    $t8, 0x18($sp)
/* 04F07C 8004E47C AFAF0014 */  sw    $t7, 0x14($sp)
/* 04F080 8004E480 0C013890 */  jal   func_8004E240
/* 04F084 8004E484 AFAE0010 */   sw    $t6, 0x10($sp)
/* 04F088 8004E488 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04F08C 8004E48C 27BD0028 */  addiu $sp, $sp, 0x28
/* 04F090 8004E490 03E00008 */  jr    $ra
/* 04F094 8004E494 00000000 */   nop   

/* 04F098 8004E498 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04F09C 8004E49C AFBF0024 */  sw    $ra, 0x24($sp)
/* 04F0A0 8004E4A0 240E0020 */  li    $t6, 32
/* 04F0A4 8004E4A4 240F0040 */  li    $t7, 64
/* 04F0A8 8004E4A8 24180040 */  li    $t8, 64
/* 04F0AC 8004E4AC AFB80018 */  sw    $t8, 0x18($sp)
/* 04F0B0 8004E4B0 AFAF0014 */  sw    $t7, 0x14($sp)
/* 04F0B4 8004E4B4 0C013890 */  jal   func_8004E240
/* 04F0B8 8004E4B8 AFAE0010 */   sw    $t6, 0x10($sp)
/* 04F0BC 8004E4BC 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04F0C0 8004E4C0 27BD0028 */  addiu $sp, $sp, 0x28
/* 04F0C4 8004E4C4 03E00008 */  jr    $ra
/* 04F0C8 8004E4C8 00000000 */   nop   
