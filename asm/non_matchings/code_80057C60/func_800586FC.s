glabel func_800586FC
/* 0592FC 800586FC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 059300 80058700 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 059304 80058704 8C620000 */  lw    $v0, ($v1)
/* 059308 80058708 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 05930C 8005870C AFBF0014 */  sw    $ra, 0x14($sp)
/* 059310 80058710 244E0008 */  addiu $t6, $v0, 8
/* 059314 80058714 AC6E0000 */  sw    $t6, ($v1)
/* 059318 80058718 3C0FBA00 */  lui   $t7, (0xBA001301 >> 16) # lui $t7, 0xba00
/* 05931C 8005871C 35EF1301 */  ori   $t7, (0xBA001301 & 0xFFFF) # ori $t7, $t7, 0x1301
/* 059320 80058720 3C180008 */  lui   $t8, 8
/* 059324 80058724 AC580004 */  sw    $t8, 4($v0)
/* 059328 80058728 AC4F0000 */  sw    $t7, ($v0)
/* 05932C 8005872C 8C620000 */  lw    $v0, ($v1)
/* 059330 80058730 3C0A0103 */  lui   $t2, (0x01030040 >> 16) # lui $t2, 0x103
/* 059334 80058734 3C088015 */  lui   $t0, %hi(gGfxPool) # $t0, 0x8015
/* 059338 80058738 24590008 */  addiu $t9, $v0, 8
/* 05933C 8005873C AC790000 */  sw    $t9, ($v1)
/* 059340 80058740 354A0040 */  ori   $t2, (0x01030040 & 0xFFFF) # ori $t2, $t2, 0x40
/* 059344 80058744 2508EF40 */  addiu $t0, %lo(gGfxPool) # addiu $t0, $t0, -0x10c0
/* 059348 80058748 AC4A0000 */  sw    $t2, ($v0)
/* 05934C 8005874C 8D0B0000 */  lw    $t3, ($t0)
/* 059350 80058750 3C091FFF */  lui   $t1, (0x1FFFFFFF >> 16) # lui $t1, 0x1fff
/* 059354 80058754 3529FFFF */  ori   $t1, (0x1FFFFFFF & 0xFFFF) # ori $t1, $t1, 0xffff
/* 059358 80058758 256C0080 */  addiu $t4, $t3, 0x80
/* 05935C 8005875C 01896824 */  and   $t5, $t4, $t1
/* 059360 80058760 AC4D0004 */  sw    $t5, 4($v0)
/* 059364 80058764 8C620000 */  lw    $v0, ($v1)
/* 059368 80058768 3C0F0101 */  lui   $t7, (0x01010040 >> 16) # lui $t7, 0x101
/* 05936C 8005876C 35EF0040 */  ori   $t7, (0x01010040 & 0xFFFF) # ori $t7, $t7, 0x40
/* 059370 80058770 244E0008 */  addiu $t6, $v0, 8
/* 059374 80058774 AC6E0000 */  sw    $t6, ($v1)
/* 059378 80058778 AC4F0000 */  sw    $t7, ($v0)
/* 05937C 8005877C 8D180000 */  lw    $t8, ($t0)
/* 059380 80058780 24040001 */  li    $a0, 1
/* 059384 80058784 27190200 */  addiu $t9, $t8, 0x200
/* 059388 80058788 03295024 */  and   $t2, $t9, $t1
/* 05938C 8005878C 0C0162D6 */  jal   func_80058B58
/* 059390 80058790 AC4A0004 */   sw    $t2, 4($v0)
/* 059394 80058794 8FBF0014 */  lw    $ra, 0x14($sp)
/* 059398 80058798 27BD0018 */  addiu $sp, $sp, 0x18
/* 05939C 8005879C 03E00008 */  jr    $ra
/* 0593A0 800587A0 00000000 */   nop   
