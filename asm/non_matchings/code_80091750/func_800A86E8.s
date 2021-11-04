glabel func_800A86E8
/* 0A92E8 800A86E8 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0A92EC 800A86EC AFA40030 */  sw    $a0, 0x30($sp)
/* 0A92F0 800A86F0 8FAE0030 */  lw    $t6, 0x30($sp)
/* 0A92F4 800A86F4 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0A92F8 800A86F8 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A92FC 800A86FC 8DC60010 */  lw    $a2, 0x10($t6)
/* 0A9300 800A8700 8DC5000C */  lw    $a1, 0xc($t6)
/* 0A9304 800A8704 24180001 */  li    $t8, 1
/* 0A9308 800A8708 24190001 */  li    $t9, 1
/* 0A930C 800A870C 24080001 */  li    $t0, 1
/* 0A9310 800A8710 240900FF */  li    $t1, 255
/* 0A9314 800A8714 24CF0027 */  addiu $t7, $a2, 0x27
/* 0A9318 800A8718 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0A931C 800A871C AFA90020 */  sw    $t1, 0x20($sp)
/* 0A9320 800A8720 AFA8001C */  sw    $t0, 0x1c($sp)
/* 0A9324 800A8724 AFB90018 */  sw    $t9, 0x18($sp)
/* 0A9328 800A8728 AFB80014 */  sw    $t8, 0x14($sp)
/* 0A932C 800A872C 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A9330 800A8730 0C026306 */  jal   func_80098C18
/* 0A9334 800A8734 24A70064 */   addiu $a3, $a1, 0x64
/* 0A9338 800A8738 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0A933C 800A873C 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A9340 800A8740 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
/* 0A9344 800A8744 03E00008 */  jr    $ra
/* 0A9348 800A8748 27BD0030 */   addiu $sp, $sp, 0x30
