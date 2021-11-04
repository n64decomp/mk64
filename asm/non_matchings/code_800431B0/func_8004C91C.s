glabel func_8004C91C
/* 04D51C 8004C91C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04D520 8004C920 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04D524 8004C924 8C620000 */  lw    $v0, ($v1)
/* 04D528 8004C928 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04D52C 8004C92C AFBF0024 */  sw    $ra, 0x24($sp)
/* 04D530 8004C930 244E0008 */  addiu $t6, $v0, 8
/* 04D534 8004C934 AC6E0000 */  sw    $t6, ($v1)
/* 04D538 8004C938 3C0F0D01 */  lui   $t7, %hi(D_0D008108) # $t7, 0xd01
/* 04D53C 8004C93C 3C0B0600 */  lui   $t3, 0x600
/* 04D540 8004C940 25EF8108 */  addiu $t7, %lo(D_0D008108) # addiu $t7, $t7, -0x7ef8
/* 04D544 8004C944 AC4F0004 */  sw    $t7, 4($v0)
/* 04D548 8004C948 AC4B0000 */  sw    $t3, ($v0)
/* 04D54C 8004C94C 8C620000 */  lw    $v0, ($v1)
/* 04D550 8004C950 3C190D00 */  lui   $t9, %hi(D_0D007EF8) # $t9, 0xd00
/* 04D554 8004C954 27397EF8 */  addiu $t9, %lo(D_0D007EF8) # addiu $t9, $t9, 0x7ef8
/* 04D558 8004C958 24580008 */  addiu $t8, $v0, 8
/* 04D55C 8004C95C AC780000 */  sw    $t8, ($v1)
/* 04D560 8004C960 AC590004 */  sw    $t9, 4($v0)
/* 04D564 8004C964 AC4B0000 */  sw    $t3, ($v0)
/* 04D568 8004C968 8C620000 */  lw    $v0, ($v1)
/* 04D56C 8004C96C 3C0DB900 */  lui   $t5, (0xB9000002 >> 16) # lui $t5, 0xb900
/* 04D570 8004C970 35AD0002 */  ori   $t5, (0xB9000002 & 0xFFFF) # ori $t5, $t5, 2
/* 04D574 8004C974 244C0008 */  addiu $t4, $v0, 8
/* 04D578 8004C978 AC6C0000 */  sw    $t4, ($v1)
/* 04D57C 8004C97C 240E0001 */  li    $t6, 1
/* 04D580 8004C980 AC4E0004 */  sw    $t6, 4($v0)
/* 04D584 8004C984 AC4D0000 */  sw    $t5, ($v0)
/* 04D588 8004C988 8FB8003C */  lw    $t8, 0x3c($sp)
/* 04D58C 8004C98C 8FAF0038 */  lw    $t7, 0x38($sp)
/* 04D590 8004C990 AFA00018 */  sw    $zero, 0x18($sp)
/* 04D594 8004C994 AFB80014 */  sw    $t8, 0x14($sp)
/* 04D598 8004C998 0C01309A */  jal   func_8004C268
/* 04D59C 8004C99C AFAF0010 */   sw    $t7, 0x10($sp)
/* 04D5A0 8004C9A0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04D5A4 8004C9A4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04D5A8 8004C9A8 8C620000 */  lw    $v0, ($v1)
/* 04D5AC 8004C9AC 3C0D0D00 */  lui   $t5, %hi(D_0D007EB8) # $t5, 0xd00
/* 04D5B0 8004C9B0 25AD7EB8 */  addiu $t5, %lo(D_0D007EB8) # addiu $t5, $t5, 0x7eb8
/* 04D5B4 8004C9B4 24590008 */  addiu $t9, $v0, 8
/* 04D5B8 8004C9B8 AC790000 */  sw    $t9, ($v1)
/* 04D5BC 8004C9BC 3C0C0600 */  lui   $t4, 0x600
/* 04D5C0 8004C9C0 AC4C0000 */  sw    $t4, ($v0)
/* 04D5C4 8004C9C4 AC4D0004 */  sw    $t5, 4($v0)
/* 04D5C8 8004C9C8 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04D5CC 8004C9CC 27BD0028 */  addiu $sp, $sp, 0x28
/* 04D5D0 8004C9D0 03E00008 */  jr    $ra
/* 04D5D4 8004C9D4 00000000 */   nop   
