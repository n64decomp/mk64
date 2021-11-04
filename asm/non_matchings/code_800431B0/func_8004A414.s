glabel func_8004A414
/* 04B014 8004A414 44866000 */  mtc1  $a2, $f12
/* 04B018 8004A418 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04B01C 8004A41C AFBF001C */  sw    $ra, 0x1c($sp)
/* 04B020 8004A420 44066000 */  mfc1  $a2, $f12
/* 04B024 8004A424 0C010B80 */  jal   func_80042E00
/* 04B028 8004A428 AFA7002C */   sw    $a3, 0x2c($sp)
/* 04B02C 8004A42C 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04B030 8004A430 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04B034 8004A434 8D030000 */  lw    $v1, ($t0)
/* 04B038 8004A438 3C180D00 */  lui   $t8, %hi(D_0D007A40) # $t8, 0xd00
/* 04B03C 8004A43C 27187A40 */  addiu $t8, %lo(D_0D007A40) # addiu $t8, $t8, 0x7a40
/* 04B040 8004A440 246E0008 */  addiu $t6, $v1, 8
/* 04B044 8004A444 AD0E0000 */  sw    $t6, ($t0)
/* 04B048 8004A448 3C0F0600 */  lui   $t7, 0x600
/* 04B04C 8004A44C AC6F0000 */  sw    $t7, ($v1)
/* 04B050 8004A450 AC780004 */  sw    $t8, 4($v1)
/* 04B054 8004A454 8FA90040 */  lw    $t1, 0x40($sp)
/* 04B058 8004A458 8FB9003C */  lw    $t9, 0x3c($sp)
/* 04B05C 8004A45C 8FA70038 */  lw    $a3, 0x38($sp)
/* 04B060 8004A460 8FA60034 */  lw    $a2, 0x34($sp)
/* 04B064 8004A464 8FA50030 */  lw    $a1, 0x30($sp)
/* 04B068 8004A468 8FA4002C */  lw    $a0, 0x2c($sp)
/* 04B06C 8004A46C AFA90014 */  sw    $t1, 0x14($sp)
/* 04B070 8004A470 0C0124B5 */  jal   func_800492D4
/* 04B074 8004A474 AFB90010 */   sw    $t9, 0x10($sp)
/* 04B078 8004A478 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04B07C 8004A47C 27BD0020 */  addiu $sp, $sp, 0x20
/* 04B080 8004A480 03E00008 */  jr    $ra
/* 04B084 8004A484 00000000 */   nop   

/* 04B088 8004A488 44866000 */  mtc1  $a2, $f12
/* 04B08C 8004A48C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04B090 8004A490 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04B094 8004A494 44066000 */  mfc1  $a2, $f12
/* 04B098 8004A498 0C010B80 */  jal   func_80042E00
/* 04B09C 8004A49C AFA7002C */   sw    $a3, 0x2c($sp)
/* 04B0A0 8004A4A0 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04B0A4 8004A4A4 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04B0A8 8004A4A8 8D030000 */  lw    $v1, ($t0)
/* 04B0AC 8004A4AC 3C180D00 */  lui   $t8, %hi(D_0D007A60) # $t8, 0xd00
/* 04B0B0 8004A4B0 27187A60 */  addiu $t8, %lo(D_0D007A60) # addiu $t8, $t8, 0x7a60
/* 04B0B4 8004A4B4 246E0008 */  addiu $t6, $v1, 8
/* 04B0B8 8004A4B8 AD0E0000 */  sw    $t6, ($t0)
/* 04B0BC 8004A4BC 3C0F0600 */  lui   $t7, 0x600
/* 04B0C0 8004A4C0 AC6F0000 */  sw    $t7, ($v1)
/* 04B0C4 8004A4C4 AC780004 */  sw    $t8, 4($v1)
/* 04B0C8 8004A4C8 8FA90040 */  lw    $t1, 0x40($sp)
/* 04B0CC 8004A4CC 8FB9003C */  lw    $t9, 0x3c($sp)
/* 04B0D0 8004A4D0 8FA70038 */  lw    $a3, 0x38($sp)
/* 04B0D4 8004A4D4 8FA60034 */  lw    $a2, 0x34($sp)
/* 04B0D8 8004A4D8 8FA50030 */  lw    $a1, 0x30($sp)
/* 04B0DC 8004A4DC 8FA4002C */  lw    $a0, 0x2c($sp)
/* 04B0E0 8004A4E0 AFA90014 */  sw    $t1, 0x14($sp)
/* 04B0E4 8004A4E4 0C0124B5 */  jal   func_800492D4
/* 04B0E8 8004A4E8 AFB90010 */   sw    $t9, 0x10($sp)
/* 04B0EC 8004A4EC 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04B0F0 8004A4F0 27BD0020 */  addiu $sp, $sp, 0x20
/* 04B0F4 8004A4F4 03E00008 */  jr    $ra
/* 04B0F8 8004A4F8 00000000 */   nop   

/* 04B0FC 8004A4FC 44866000 */  mtc1  $a2, $f12
/* 04B100 8004A500 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04B104 8004A504 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04B108 8004A508 44066000 */  mfc1  $a2, $f12
/* 04B10C 8004A50C 0C010B80 */  jal   func_80042E00
/* 04B110 8004A510 AFA7002C */   sw    $a3, 0x2c($sp)
/* 04B114 8004A514 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04B118 8004A518 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04B11C 8004A51C 8D030000 */  lw    $v1, ($t0)
/* 04B120 8004A520 3C180D00 */  lui   $t8, %hi(D_0D007AC0) # $t8, 0xd00
/* 04B124 8004A524 27187AC0 */  addiu $t8, %lo(D_0D007AC0) # addiu $t8, $t8, 0x7ac0
/* 04B128 8004A528 246E0008 */  addiu $t6, $v1, 8
/* 04B12C 8004A52C AD0E0000 */  sw    $t6, ($t0)
/* 04B130 8004A530 3C0F0600 */  lui   $t7, 0x600
/* 04B134 8004A534 AC6F0000 */  sw    $t7, ($v1)
/* 04B138 8004A538 AC780004 */  sw    $t8, 4($v1)
/* 04B13C 8004A53C 8FA90040 */  lw    $t1, 0x40($sp)
/* 04B140 8004A540 8FB9003C */  lw    $t9, 0x3c($sp)
/* 04B144 8004A544 8FA70038 */  lw    $a3, 0x38($sp)
/* 04B148 8004A548 8FA60034 */  lw    $a2, 0x34($sp)
/* 04B14C 8004A54C 8FA50030 */  lw    $a1, 0x30($sp)
/* 04B150 8004A550 8FA4002C */  lw    $a0, 0x2c($sp)
/* 04B154 8004A554 AFA90014 */  sw    $t1, 0x14($sp)
/* 04B158 8004A558 0C0124B5 */  jal   func_800492D4
/* 04B15C 8004A55C AFB90010 */   sw    $t9, 0x10($sp)
/* 04B160 8004A560 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04B164 8004A564 27BD0020 */  addiu $sp, $sp, 0x20
/* 04B168 8004A568 03E00008 */  jr    $ra
/* 04B16C 8004A56C 00000000 */   nop   

/* 04B170 8004A570 44866000 */  mtc1  $a2, $f12
/* 04B174 8004A574 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04B178 8004A578 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04B17C 8004A57C 44066000 */  mfc1  $a2, $f12
/* 04B180 8004A580 0C010B80 */  jal   func_80042E00
/* 04B184 8004A584 AFA7002C */   sw    $a3, 0x2c($sp)
/* 04B188 8004A588 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04B18C 8004A58C 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04B190 8004A590 8D030000 */  lw    $v1, ($t0)
/* 04B194 8004A594 3C180D00 */  lui   $t8, %hi(D_0D007AE0) # $t8, 0xd00
/* 04B198 8004A598 27187AE0 */  addiu $t8, %lo(D_0D007AE0) # addiu $t8, $t8, 0x7ae0
/* 04B19C 8004A59C 246E0008 */  addiu $t6, $v1, 8
/* 04B1A0 8004A5A0 AD0E0000 */  sw    $t6, ($t0)
/* 04B1A4 8004A5A4 3C0F0600 */  lui   $t7, 0x600
/* 04B1A8 8004A5A8 AC6F0000 */  sw    $t7, ($v1)
/* 04B1AC 8004A5AC AC780004 */  sw    $t8, 4($v1)
/* 04B1B0 8004A5B0 8FA90040 */  lw    $t1, 0x40($sp)
/* 04B1B4 8004A5B4 8FB9003C */  lw    $t9, 0x3c($sp)
/* 04B1B8 8004A5B8 8FA70038 */  lw    $a3, 0x38($sp)
/* 04B1BC 8004A5BC 8FA60034 */  lw    $a2, 0x34($sp)
/* 04B1C0 8004A5C0 8FA50030 */  lw    $a1, 0x30($sp)
/* 04B1C4 8004A5C4 8FA4002C */  lw    $a0, 0x2c($sp)
/* 04B1C8 8004A5C8 AFA90014 */  sw    $t1, 0x14($sp)
/* 04B1CC 8004A5CC 0C0124B5 */  jal   func_800492D4
/* 04B1D0 8004A5D0 AFB90010 */   sw    $t9, 0x10($sp)
/* 04B1D4 8004A5D4 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04B1D8 8004A5D8 27BD0020 */  addiu $sp, $sp, 0x20
/* 04B1DC 8004A5DC 03E00008 */  jr    $ra
/* 04B1E0 8004A5E0 00000000 */   nop   

/* 04B1E4 8004A5E4 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B1E8 8004A5E8 44866000 */  mtc1  $a2, $f12
/* 04B1EC 8004A5EC 8FAE0040 */  lw    $t6, 0x40($sp)
/* 04B1F0 8004A5F0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B1F4 8004A5F4 240F0010 */  li    $t7, 16
/* 04B1F8 8004A5F8 24180010 */  li    $t8, 16
/* 04B1FC 8004A5FC 24190010 */  li    $t9, 16
/* 04B200 8004A600 24080010 */  li    $t0, 16
/* 04B204 8004A604 44066000 */  mfc1  $a2, $f12
/* 04B208 8004A608 AFA80020 */  sw    $t0, 0x20($sp)
/* 04B20C 8004A60C AFB9001C */  sw    $t9, 0x1c($sp)
/* 04B210 8004A610 AFB80018 */  sw    $t8, 0x18($sp)
/* 04B214 8004A614 AFAF0014 */  sw    $t7, 0x14($sp)
/* 04B218 8004A618 0C012905 */  jal   func_8004A414
/* 04B21C 8004A61C AFAE0010 */   sw    $t6, 0x10($sp)
/* 04B220 8004A620 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B224 8004A624 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B228 8004A628 03E00008 */  jr    $ra
/* 04B22C 8004A62C 00000000 */   nop   
