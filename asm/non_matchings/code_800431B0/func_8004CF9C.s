glabel func_8004CF9C
/* 04DB9C 8004CF9C 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04DBA0 8004CFA0 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04DBA4 8004CFA4 8D030000 */  lw    $v1, ($t0)
/* 04DBA8 8004CFA8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04DBAC 8004CFAC AFBF001C */  sw    $ra, 0x1c($sp)
/* 04DBB0 8004CFB0 246E0008 */  addiu $t6, $v1, 8
/* 04DBB4 8004CFB4 AD0E0000 */  sw    $t6, ($t0)
/* 04DBB8 8004CFB8 3C180D00 */  lui   $t8, %hi(D_0D007FE0) # $t8, 0xd00
/* 04DBBC 8004CFBC 27187FE0 */  addiu $t8, %lo(D_0D007FE0) # addiu $t8, $t8, 0x7fe0
/* 04DBC0 8004CFC0 3C0F0600 */  lui   $t7, 0x600
/* 04DBC4 8004CFC4 AC6F0000 */  sw    $t7, ($v1)
/* 04DBC8 8004CFC8 AC780004 */  sw    $t8, 4($v1)
/* 04DBCC 8004CFCC 8FA90038 */  lw    $t1, 0x38($sp)
/* 04DBD0 8004CFD0 8FB90030 */  lw    $t9, 0x30($sp)
/* 04DBD4 8004CFD4 AFA90014 */  sw    $t1, 0x14($sp)
/* 04DBD8 8004CFD8 0C0133A3 */  jal   func_8004CE8C
/* 04DBDC 8004CFDC AFB90010 */   sw    $t9, 0x10($sp)
/* 04DBE0 8004CFE0 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04DBE4 8004CFE4 27BD0020 */  addiu $sp, $sp, 0x20
/* 04DBE8 8004CFE8 03E00008 */  jr    $ra
/* 04DBEC 8004CFEC 00000000 */   nop   

/* 04DBF0 8004CFF0 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04DBF4 8004CFF4 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04DBF8 8004CFF8 8D030000 */  lw    $v1, ($t0)
/* 04DBFC 8004CFFC 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04DC00 8004D000 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04DC04 8004D004 246E0008 */  addiu $t6, $v1, 8
/* 04DC08 8004D008 AD0E0000 */  sw    $t6, ($t0)
/* 04DC0C 8004D00C 3C180D01 */  lui   $t8, %hi(D_0D008000) # $t8, 0xd01
/* 04DC10 8004D010 27188000 */  addiu $t8, %lo(D_0D008000) # addiu $t8, $t8, -0x8000
/* 04DC14 8004D014 3C0F0600 */  lui   $t7, 0x600
/* 04DC18 8004D018 AC6F0000 */  sw    $t7, ($v1)
/* 04DC1C 8004D01C AC780004 */  sw    $t8, 4($v1)
/* 04DC20 8004D020 8FA90038 */  lw    $t1, 0x38($sp)
/* 04DC24 8004D024 8FB90030 */  lw    $t9, 0x30($sp)
/* 04DC28 8004D028 AFA90014 */  sw    $t1, 0x14($sp)
/* 04DC2C 8004D02C 0C0133A3 */  jal   func_8004CE8C
/* 04DC30 8004D030 AFB90010 */   sw    $t9, 0x10($sp)
/* 04DC34 8004D034 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04DC38 8004D038 27BD0020 */  addiu $sp, $sp, 0x20
/* 04DC3C 8004D03C 03E00008 */  jr    $ra
/* 04DC40 8004D040 00000000 */   nop   

/* 04DC44 8004D044 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04DC48 8004D048 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04DC4C 8004D04C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04DC50 8004D050 8D030000 */  lw    $v1, ($t0)
/* 04DC54 8004D054 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04DC58 8004D058 AFA40020 */  sw    $a0, 0x20($sp)
/* 04DC5C 8004D05C 246E0008 */  addiu $t6, $v1, 8
/* 04DC60 8004D060 AFA50024 */  sw    $a1, 0x24($sp)
/* 04DC64 8004D064 AFA60028 */  sw    $a2, 0x28($sp)
/* 04DC68 8004D068 AFA7002C */  sw    $a3, 0x2c($sp)
/* 04DC6C 8004D06C AD0E0000 */  sw    $t6, ($t0)
/* 04DC70 8004D070 3C180D00 */  lui   $t8, %hi(D_0D007FE0) # $t8, 0xd00
/* 04DC74 8004D074 27187FE0 */  addiu $t8, %lo(D_0D007FE0) # addiu $t8, $t8, 0x7fe0
/* 04DC78 8004D078 3C0F0600 */  lui   $t7, 0x600
/* 04DC7C 8004D07C AC6F0000 */  sw    $t7, ($v1)
/* 04DC80 8004D080 AC780004 */  sw    $t8, 4($v1)
/* 04DC84 8004D084 8FA70038 */  lw    $a3, 0x38($sp)
/* 04DC88 8004D088 8FA60034 */  lw    $a2, 0x34($sp)
/* 04DC8C 8004D08C 8FA50030 */  lw    $a1, 0x30($sp)
/* 04DC90 8004D090 0C012CD7 */  jal   func_8004B35C
/* 04DC94 8004D094 8FA4002C */   lw    $a0, 0x2c($sp)
/* 04DC98 8004D098 8FB90040 */  lw    $t9, 0x40($sp)
/* 04DC9C 8004D09C 8FA90048 */  lw    $t1, 0x48($sp)
/* 04DCA0 8004D0A0 8FA40020 */  lw    $a0, 0x20($sp)
/* 04DCA4 8004D0A4 8FA50024 */  lw    $a1, 0x24($sp)
/* 04DCA8 8004D0A8 8FA60028 */  lw    $a2, 0x28($sp)
/* 04DCAC 8004D0AC 8FA7003C */  lw    $a3, 0x3c($sp)
/* 04DCB0 8004D0B0 AFB90010 */  sw    $t9, 0x10($sp)
/* 04DCB4 8004D0B4 0C0133A3 */  jal   func_8004CE8C
/* 04DCB8 8004D0B8 AFA90014 */   sw    $t1, 0x14($sp)
/* 04DCBC 8004D0BC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04DCC0 8004D0C0 27BD0020 */  addiu $sp, $sp, 0x20
/* 04DCC4 8004D0C4 03E00008 */  jr    $ra
/* 04DCC8 8004D0C8 00000000 */   nop   

/* 04DCCC 8004D0CC 03E00008 */  jr    $ra
/* 04DCD0 8004D0D0 00000000 */   nop   
