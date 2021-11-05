glabel func_8004C450
/* 04D050 8004C450 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 04D054 8004C454 25080298 */  addiu $t0, %lo(gDisplayListHead) # addiu $t0, $t0, 0x298
/* 04D058 8004C458 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 04D05C 8004C45C 8D030000 */  lw    $v1, ($t0)
/* 04D060 8004C460 AFBF0024 */  sw    $ra, 0x24($sp)
/* 04D064 8004C464 AFA40028 */  sw    $a0, 0x28($sp)
/* 04D068 8004C468 246E0008 */  addiu $t6, $v1, 8
/* 04D06C 8004C46C AFA5002C */  sw    $a1, 0x2c($sp)
/* 04D070 8004C470 AFA60030 */  sw    $a2, 0x30($sp)
/* 04D074 8004C474 AFA70034 */  sw    $a3, 0x34($sp)
/* 04D078 8004C478 AD0E0000 */  sw    $t6, ($t0)
/* 04D07C 8004C47C 3C180D00 */  lui   $t8, %hi(D_0D007F38) # $t8, 0xd00
/* 04D080 8004C480 27187F38 */  addiu $t8, %lo(D_0D007F38) # addiu $t8, $t8, 0x7f38
/* 04D084 8004C484 3C0F0600 */  lui   $t7, 0x600
/* 04D088 8004C488 AC6F0000 */  sw    $t7, ($v1)
/* 04D08C 8004C48C AC780004 */  sw    $t8, 4($v1)
/* 04D090 8004C490 3C068016 */  lui   $a2, %hi(D_801656E0) # $a2, 0x8016
/* 04D094 8004C494 3C058016 */  lui   $a1, %hi(D_801656D0) # $a1, 0x8016
/* 04D098 8004C498 3C048016 */  lui   $a0, %hi(D_801656C0) # $a0, 0x8016
/* 04D09C 8004C49C 24190080 */  li    $t9, 128
/* 04D0A0 8004C4A0 24090080 */  li    $t1, 128
/* 04D0A4 8004C4A4 240A00FF */  li    $t2, 255
/* 04D0A8 8004C4A8 AFAA0018 */  sw    $t2, 0x18($sp)
/* 04D0AC 8004C4AC AFA90014 */  sw    $t1, 0x14($sp)
/* 04D0B0 8004C4B0 AFB90010 */  sw    $t9, 0x10($sp)
/* 04D0B4 8004C4B4 948456C0 */  lhu   $a0, %lo(D_801656C0)($a0)
/* 04D0B8 8004C4B8 94A556D0 */  lhu   $a1, %lo(D_801656D0)($a1)
/* 04D0BC 8004C4BC 94C656E0 */  lhu   $a2, %lo(D_801656E0)($a2)
/* 04D0C0 8004C4C0 0C012D85 */  jal   func_8004B614
/* 04D0C4 8004C4C4 24070080 */   li    $a3, 128
/* 04D0C8 8004C4C8 8FA40038 */  lw    $a0, 0x38($sp)
/* 04D0CC 8004C4CC 8FA50030 */  lw    $a1, 0x30($sp)
/* 04D0D0 8004C4D0 0C010F54 */  jal   func_80043D50
/* 04D0D4 8004C4D4 8FA60034 */   lw    $a2, 0x34($sp)
/* 04D0D8 8004C4D8 8FA60030 */  lw    $a2, 0x30($sp)
/* 04D0DC 8004C4DC 8FA70034 */  lw    $a3, 0x34($sp)
/* 04D0E0 8004C4E0 8FAB0028 */  lw    $t3, 0x28($sp)
/* 04D0E4 8004C4E4 8FAD002C */  lw    $t5, 0x2c($sp)
/* 04D0E8 8004C4E8 240F0001 */  li    $t7, 1
/* 04D0EC 8004C4EC 00066042 */  srl   $t4, $a2, 1
/* 04D0F0 8004C4F0 00077042 */  srl   $t6, $a3, 1
/* 04D0F4 8004C4F4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04D0F8 8004C4F8 016C2023 */  subu  $a0, $t3, $t4
/* 04D0FC 8004C4FC 0C012E5F */  jal   func_8004B97C
/* 04D100 8004C500 01AE2823 */   subu  $a1, $t5, $t6
/* 04D104 8004C504 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 04D108 8004C508 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 04D10C 8004C50C 8C830000 */  lw    $v1, ($a0)
/* 04D110 8004C510 3C090D00 */  lui   $t1, %hi(D_0D007EB8) # $t1, 0xd00
/* 04D114 8004C514 25297EB8 */  addiu $t1, %lo(D_0D007EB8) # addiu $t1, $t1, 0x7eb8
/* 04D118 8004C518 24780008 */  addiu $t8, $v1, 8
/* 04D11C 8004C51C AC980000 */  sw    $t8, ($a0)
/* 04D120 8004C520 3C190600 */  lui   $t9, 0x600
/* 04D124 8004C524 AC790000 */  sw    $t9, ($v1)
/* 04D128 8004C528 AC690004 */  sw    $t1, 4($v1)
/* 04D12C 8004C52C 8FBF0024 */  lw    $ra, 0x24($sp)
/* 04D130 8004C530 27BD0028 */  addiu $sp, $sp, 0x28
/* 04D134 8004C534 03E00008 */  jr    $ra
/* 04D138 8004C538 00000000 */   nop   

/* 04D13C 8004C53C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04D140 8004C540 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04D144 8004C544 8C620000 */  lw    $v0, ($v1)
/* 04D148 8004C548 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04D14C 8004C54C AFBF001C */  sw    $ra, 0x1c($sp)
/* 04D150 8004C550 244E0008 */  addiu $t6, $v0, 8
/* 04D154 8004C554 AFA40020 */  sw    $a0, 0x20($sp)
/* 04D158 8004C558 AFA50024 */  sw    $a1, 0x24($sp)
/* 04D15C 8004C55C AFA60028 */  sw    $a2, 0x28($sp)
/* 04D160 8004C560 AC6E0000 */  sw    $t6, ($v1)
/* 04D164 8004C564 3C0F0D01 */  lui   $t7, %hi(D_0D008108) # $t7, 0xd01
/* 04D168 8004C568 3C0B0600 */  lui   $t3, 0x600
/* 04D16C 8004C56C 25EF8108 */  addiu $t7, %lo(D_0D008108) # addiu $t7, $t7, -0x7ef8
/* 04D170 8004C570 AC4F0004 */  sw    $t7, 4($v0)
/* 04D174 8004C574 AC4B0000 */  sw    $t3, ($v0)
/* 04D178 8004C578 8C620000 */  lw    $v0, ($v1)
/* 04D17C 8004C57C 3C190D00 */  lui   $t9, %hi(D_0D007EF8) # $t9, 0xd00
/* 04D180 8004C580 27397EF8 */  addiu $t9, %lo(D_0D007EF8) # addiu $t9, $t9, 0x7ef8
/* 04D184 8004C584 24580008 */  addiu $t8, $v0, 8
/* 04D188 8004C588 AC780000 */  sw    $t8, ($v1)
/* 04D18C 8004C58C AC590004 */  sw    $t9, 4($v0)
/* 04D190 8004C590 AC4B0000 */  sw    $t3, ($v0)
/* 04D194 8004C594 8C620000 */  lw    $v0, ($v1)
/* 04D198 8004C598 3C0DB900 */  lui   $t5, (0xB9000002 >> 16) # lui $t5, 0xb900
/* 04D19C 8004C59C 35AD0002 */  ori   $t5, (0xB9000002 & 0xFFFF) # ori $t5, $t5, 2
/* 04D1A0 8004C5A0 244C0008 */  addiu $t4, $v0, 8
/* 04D1A4 8004C5A4 AC6C0000 */  sw    $t4, ($v1)
/* 04D1A8 8004C5A8 240E0001 */  li    $t6, 1
/* 04D1AC 8004C5AC AC4E0004 */  sw    $t6, 4($v0)
/* 04D1B0 8004C5B0 AC4D0000 */  sw    $t5, ($v0)
/* 04D1B4 8004C5B4 AFA7002C */  sw    $a3, 0x2c($sp)
/* 04D1B8 8004C5B8 8FA50028 */  lw    $a1, 0x28($sp)
/* 04D1BC 8004C5BC 8FA40030 */  lw    $a0, 0x30($sp)
/* 04D1C0 8004C5C0 0C01102E */  jal   func_800440B8
/* 04D1C4 8004C5C4 00E03025 */   move  $a2, $a3
/* 04D1C8 8004C5C8 8FA60028 */  lw    $a2, 0x28($sp)
/* 04D1CC 8004C5CC 8FA7002C */  lw    $a3, 0x2c($sp)
/* 04D1D0 8004C5D0 8FAF0020 */  lw    $t7, 0x20($sp)
/* 04D1D4 8004C5D4 8FB90024 */  lw    $t9, 0x24($sp)
/* 04D1D8 8004C5D8 0006C042 */  srl   $t8, $a2, 1
/* 04D1DC 8004C5DC 00076042 */  srl   $t4, $a3, 1
/* 04D1E0 8004C5E0 AFA00010 */  sw    $zero, 0x10($sp)
/* 04D1E4 8004C5E4 01F82023 */  subu  $a0, $t7, $t8
/* 04D1E8 8004C5E8 0C012E5F */  jal   func_8004B97C
/* 04D1EC 8004C5EC 032C2823 */   subu  $a1, $t9, $t4
/* 04D1F0 8004C5F0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04D1F4 8004C5F4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 04D1F8 8004C5F8 8C620000 */  lw    $v0, ($v1)
/* 04D1FC 8004C5FC 3C0F0D00 */  lui   $t7, %hi(D_0D007EB8) # $t7, 0xd00
/* 04D200 8004C600 25EF7EB8 */  addiu $t7, %lo(D_0D007EB8) # addiu $t7, $t7, 0x7eb8
/* 04D204 8004C604 244D0008 */  addiu $t5, $v0, 8
/* 04D208 8004C608 AC6D0000 */  sw    $t5, ($v1)
/* 04D20C 8004C60C 3C0E0600 */  lui   $t6, 0x600
/* 04D210 8004C610 AC4E0000 */  sw    $t6, ($v0)
/* 04D214 8004C614 AC4F0004 */  sw    $t7, 4($v0)
/* 04D218 8004C618 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04D21C 8004C61C 27BD0020 */  addiu $sp, $sp, 0x20
/* 04D220 8004C620 03E00008 */  jr    $ra
/* 04D224 8004C624 00000000 */   nop   
