glabel func_80043764
/* 044364 80043764 44876000 */  mtc1  $a3, $f12
/* 044368 80043768 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04436C 8004376C AFBF0014 */  sw    $ra, 0x14($sp)
/* 044370 80043770 AFA60020 */  sw    $a2, 0x20($sp)
/* 044374 80043774 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 044378 80043778 44076000 */  mfc1  $a3, $f12
/* 04437C 8004377C 0C0108CC */  jal   func_80042330
/* 044380 80043780 01C03025 */   move  $a2, $t6
/* 044384 80043784 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 044388 80043788 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04438C 8004378C 8C620000 */  lw    $v0, ($v1)
/* 044390 80043790 3C180D00 */  lui   $t8, %hi(D_0D0078A0) # $t8, 0xd00
/* 044394 80043794 3C070600 */  lui   $a3, 0x600
/* 044398 80043798 244F0008 */  addiu $t7, $v0, 8
/* 04439C 8004379C AC6F0000 */  sw    $t7, ($v1)
/* 0443A0 800437A0 271878A0 */  addiu $t8, %lo(D_0D0078A0) # addiu $t8, $t8, 0x78a0
/* 0443A4 800437A4 AC580004 */  sw    $t8, 4($v0)
/* 0443A8 800437A8 AC470000 */  sw    $a3, ($v0)
/* 0443AC 800437AC 8C620000 */  lw    $v0, ($v1)
/* 0443B0 800437B0 3C080400 */  lui   $t0, (0x0400103F >> 16) # lui $t0, 0x400
/* 0443B4 800437B4 3508103F */  ori   $t0, (0x0400103F & 0xFFFF) # ori $t0, $t0, 0x103f
/* 0443B8 800437B8 24590008 */  addiu $t9, $v0, 8
/* 0443BC 800437BC AC790000 */  sw    $t9, ($v1)
/* 0443C0 800437C0 AC480000 */  sw    $t0, ($v0)
/* 0443C4 800437C4 8FA90028 */  lw    $t1, 0x28($sp)
/* 0443C8 800437C8 3C0B0D00 */  lui   $t3, %hi(D_0D006940) # $t3, 0xd00
/* 0443CC 800437CC 256B6940 */  addiu $t3, %lo(D_0D006940) # addiu $t3, $t3, 0x6940
/* 0443D0 800437D0 AC490004 */  sw    $t1, 4($v0)
/* 0443D4 800437D4 8C620000 */  lw    $v0, ($v1)
/* 0443D8 800437D8 244A0008 */  addiu $t2, $v0, 8
/* 0443DC 800437DC AC6A0000 */  sw    $t2, ($v1)
/* 0443E0 800437E0 AC4B0004 */  sw    $t3, 4($v0)
/* 0443E4 800437E4 AC470000 */  sw    $a3, ($v0)
/* 0443E8 800437E8 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0443EC 800437EC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0443F0 800437F0 03E00008 */  jr    $ra
/* 0443F4 800437F4 00000000 */   nop   
