glabel func_8004C9D8
/* 04D5D8 8004C9D8 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04D5DC 8004C9DC 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04D5E0 8004C9E0 8D030000 */  lw    $v1, ($t0)
/* 04D5E4 8004C9E4 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04D5E8 8004C9E8 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04D5EC 8004C9EC AFA40028 */  sw    $a0, 0x28($sp)
/* 04D5F0 8004C9F0 3C180D00 */  lui   $t8, %hi(D_0D007F38) # $t8, 0xd00
/* 04D5F4 8004C9F4 246E0008 */  addiu $t6, $v1, 8
/* 04D5F8 8004C9F8 AFA5002C */  sw    $a1, 0x2c($sp)
/* 04D5FC 8004C9FC AFA70034 */  sw    $a3, 0x34($sp)
/* 04D600 8004CA00 AD0E0000 */  sw    $t6, ($t0)
/* 04D604 8004CA04 27187F38 */  addiu $t8, %lo(D_0D007F38) # addiu $t8, $t8, 0x7f38
/* 04D608 8004CA08 3C0F0600 */  lui   $t7, 0x600
/* 04D60C 8004CA0C 00C02025 */  move  $a0, $a2
/* 04D610 8004CA10 AC6F0000 */  sw    $t7, ($v1)
/* 04D614 8004CA14 0C012CAF */  jal   func_8004B2BC
/* 04D618 8004CA18 AC780004 */   sw    $t8, 4($v1)
/* 04D61C 8004CA1C 8FB9003C */  lw    $t9, 0x3c($sp)
/* 04D620 8004CA20 8FA90044 */  lw    $t1, 0x44($sp)
/* 04D624 8004CA24 240A0001 */  li    $t2, 1
/* 04D628 8004CA28 AFAA0018 */  sw    $t2, 0x18($sp)
/* 04D62C 8004CA2C 8FA40028 */  lw    $a0, 0x28($sp)
/* 04D630 8004CA30 8FA5002C */  lw    $a1, 0x2c($sp)
/* 04D634 8004CA34 8FA60034 */  lw    $a2, 0x34($sp)
/* 04D638 8004CA38 8FA70038 */  lw    $a3, 0x38($sp)
/* 04D63C 8004CA3C AFB90010 */  sw    $t9, 0x10($sp)
/* 04D640 8004CA40 0C01309A */  jal   func_8004C268
/* 04D644 8004CA44 AFA90014 */   sw    $t1, 0x14($sp)
/* 04D648 8004CA48 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04D64C 8004CA4C 27BD0028 */  addiu $sp, $sp, 0x28
/* 04D650 8004CA50 03E00008 */  jr    $ra
/* 04D654 8004CA54 00000000 */   nop   
