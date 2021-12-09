# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel __osContRamWrite
/* 0D7EF0 800D72F0 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 0D7EF4 800D72F4 8FB80070 */  lw    $t8, 0x70($sp)
/* 0D7EF8 800D72F8 3C0E8019 */  lui   $t6, %hi(__osPfsPifRam) # $t6, 0x8019
/* 0D7EFC 800D72FC 25CE6590 */  addiu $t6, %lo(__osPfsPifRam) # addiu $t6, $t6, 0x6590
/* 0D7F00 800D7300 240F0002 */  li    $t7, 2
/* 0D7F04 800D7304 24010001 */  li    $at, 1
/* 0D7F08 800D7308 AFBF001C */  sw    $ra, 0x1c($sp)
/* 0D7F0C 800D730C AFA40060 */  sw    $a0, 0x60($sp)
/* 0D7F10 800D7310 AFA50064 */  sw    $a1, 0x64($sp)
/* 0D7F14 800D7314 AFA60068 */  sw    $a2, 0x68($sp)
/* 0D7F18 800D7318 AFA7006C */  sw    $a3, 0x6c($sp)
/* 0D7F1C 800D731C AFB00018 */  sw    $s0, 0x18($sp)
/* 0D7F20 800D7320 AFA0005C */  sw    $zero, 0x5c($sp)
/* 0D7F24 800D7324 AFAE0054 */  sw    $t6, 0x54($sp)
/* 0D7F28 800D7328 13010009 */  beq   $t8, $at, .L800D7350
/* 0D7F2C 800D732C AFAF0028 */   sw    $t7, 0x28($sp)
/* 0D7F30 800D7330 97B9006A */  lhu   $t9, 0x6a($sp)
/* 0D7F34 800D7334 2B210007 */  slti  $at, $t9, 7
/* 0D7F38 800D7338 10200005 */  beqz  $at, .L800D7350
/* 0D7F3C 800D733C 00000000 */   nop   
/* 0D7F40 800D7340 13200003 */  beqz  $t9, .L800D7350
/* 0D7F44 800D7344 00000000 */   nop   
/* 0D7F48 800D7348 10000070 */  b     .L800D750C
/* 0D7F4C 800D734C 00001025 */   move  $v0, $zero
.L800D7350:
/* 0D7F50 800D7350 0C034EE8 */  jal   __osSiGetAccess
/* 0D7F54 800D7354 00000000 */   nop   
/* 0D7F58 800D7358 24080003 */  li    $t0, 3
/* 0D7F5C 800D735C 3C018019 */  lui   $at, %hi(_osLastSentSiCmd) # $at, 0x8019
/* 0D7F60 800D7360 A0286540 */  sb    $t0, %lo(_osLastSentSiCmd)($at)
/* 0D7F64 800D7364 8FA40064 */  lw    $a0, 0x64($sp)
/* 0D7F68 800D7368 97A5006A */  lhu   $a1, 0x6a($sp)
/* 0D7F6C 800D736C 0C035D48 */  jal   __osPackRamWriteData
/* 0D7F70 800D7370 8FA6006C */   lw    $a2, 0x6c($sp)
/* 0D7F74 800D7374 3C058019 */  lui   $a1, %hi(__osPfsPifRam) # $a1, 0x8019
/* 0D7F78 800D7378 24A56590 */  addiu $a1, %lo(__osPfsPifRam) # addiu $a1, $a1, 0x6590
/* 0D7F7C 800D737C 0C034EA8 */  jal   __osSiRawStartDma
/* 0D7F80 800D7380 24040001 */   li    $a0, 1
/* 0D7F84 800D7384 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0D7F88 800D7388 8FA40060 */  lw    $a0, 0x60($sp)
/* 0D7F8C 800D738C 00002825 */  move  $a1, $zero
/* 0D7F90 800D7390 0C0335D4 */  jal   osRecvMesg
/* 0D7F94 800D7394 24060001 */   li    $a2, 1
.L800D7398:
/* 0D7F98 800D7398 AFA00058 */  sw    $zero, 0x58($sp)
.L800D739C:
/* 0D7F9C 800D739C 8FAA0058 */  lw    $t2, 0x58($sp)
/* 0D7FA0 800D73A0 8FAC0058 */  lw    $t4, 0x58($sp)
/* 0D7FA4 800D73A4 3C018019 */  lui   $at, %hi(__osPfsPifRam) # 0x8019
/* 0D7FA8 800D73A8 000A5880 */  sll   $t3, $t2, 2
/* 0D7FAC 800D73AC 002B0821 */  addu  $at, $at, $t3
/* 0D7FB0 800D73B0 240900FF */  li    $t1, 255
/* 0D7FB4 800D73B4 AC296590 */  sw    $t1, %lo(__osPfsPifRam)($at) # 0x6590($at)
/* 0D7FB8 800D73B8 258D0001 */  addiu $t5, $t4, 1
/* 0D7FBC 800D73BC 29A10010 */  slti  $at, $t5, 0x10
/* 0D7FC0 800D73C0 1420FFF6 */  bnez  $at, .L800D739C
/* 0D7FC4 800D73C4 AFAD0058 */   sw    $t5, 0x58($sp)
/* 0D7FC8 800D73C8 3C018019 */  lui   $at, 0x8019 # $at, 0x8019
/* 0D7FCC 800D73CC 3C058019 */  lui   $a1, %hi(__osPfsPifRam) # $a1, 0x8019
/* 0D7FD0 800D73D0 AC2065CC */  sw    $zero, 0x65cc($at)
/* 0D7FD4 800D73D4 24A56590 */  addiu $a1, %lo(__osPfsPifRam) # addiu $a1, $a1, 0x6590
/* 0D7FD8 800D73D8 0C034EA8 */  jal   __osSiRawStartDma
/* 0D7FDC 800D73DC 00002025 */   move  $a0, $zero
/* 0D7FE0 800D73E0 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0D7FE4 800D73E4 8FA40060 */  lw    $a0, 0x60($sp)
/* 0D7FE8 800D73E8 00002825 */  move  $a1, $zero
/* 0D7FEC 800D73EC 0C0335D4 */  jal   osRecvMesg
/* 0D7FF0 800D73F0 24060001 */   li    $a2, 1
/* 0D7FF4 800D73F4 8FAF0064 */  lw    $t7, 0x64($sp)
/* 0D7FF8 800D73F8 3C0E8019 */  lui   $t6, %hi(__osPfsPifRam) # $t6, 0x8019
/* 0D7FFC 800D73FC 25CE6590 */  addiu $t6, %lo(__osPfsPifRam) # addiu $t6, $t6, 0x6590
/* 0D8000 800D7400 11E0000C */  beqz  $t7, .L800D7434
/* 0D8004 800D7404 AFAE0054 */   sw    $t6, 0x54($sp)
/* 0D8008 800D7408 19E0000A */  blez  $t7, .L800D7434
/* 0D800C 800D740C AFA00058 */   sw    $zero, 0x58($sp)
.L800D7410:
/* 0D8010 800D7410 8FA80058 */  lw    $t0, 0x58($sp)
/* 0D8014 800D7414 8FA90064 */  lw    $t1, 0x64($sp)
/* 0D8018 800D7418 8FB80054 */  lw    $t8, 0x54($sp)
/* 0D801C 800D741C 250A0001 */  addiu $t2, $t0, 1
/* 0D8020 800D7420 0149082A */  slt   $at, $t2, $t1
/* 0D8024 800D7424 27190001 */  addiu $t9, $t8, 1
/* 0D8028 800D7428 AFAA0058 */  sw    $t2, 0x58($sp)
/* 0D802C 800D742C 1420FFF8 */  bnez  $at, .L800D7410
/* 0D8030 800D7430 AFB90054 */   sw    $t9, 0x54($sp)
.L800D7434:
/* 0D8034 800D7434 8FAC0054 */  lw    $t4, 0x54($sp)
/* 0D8038 800D7438 27AB002C */  addiu $t3, $sp, 0x2c
/* 0D803C 800D743C 258E0024 */  addiu $t6, $t4, 0x24
.L800D7440:
/* 0D8040 800D7440 89810000 */  lwl   $at, ($t4)
/* 0D8044 800D7444 99810003 */  lwr   $at, 3($t4)
/* 0D8048 800D7448 258C000C */  addiu $t4, $t4, 0xc
/* 0D804C 800D744C 256B000C */  addiu $t3, $t3, 0xc
/* 0D8050 800D7450 AD61FFF4 */  sw    $at, -0xc($t3)
/* 0D8054 800D7454 8981FFF8 */  lwl   $at, -8($t4)
/* 0D8058 800D7458 9981FFFB */  lwr   $at, -5($t4)
/* 0D805C 800D745C AD61FFF8 */  sw    $at, -8($t3)
/* 0D8060 800D7460 8981FFFC */  lwl   $at, -4($t4)
/* 0D8064 800D7464 9981FFFF */  lwr   $at, -1($t4)
/* 0D8068 800D7468 158EFFF5 */  bne   $t4, $t6, .L800D7440
/* 0D806C 800D746C AD61FFFC */   sw    $at, -4($t3)
/* 0D8070 800D7470 89810000 */  lwl   $at, ($t4)
/* 0D8074 800D7474 99810003 */  lwr   $at, 3($t4)
/* 0D8078 800D7478 AD610000 */  sw    $at, ($t3)
/* 0D807C 800D747C 93AF002E */  lbu   $t7, 0x2e($sp)
/* 0D8080 800D7480 31F800C0 */  andi  $t8, $t7, 0xc0
/* 0D8084 800D7484 0018C903 */  sra   $t9, $t8, 4
/* 0D8088 800D7488 17200013 */  bnez  $t9, .L800D74D8
/* 0D808C 800D748C AFB9005C */   sw    $t9, 0x5c($sp)
/* 0D8090 800D7490 0C035FC4 */  jal   __osContDataCrc
/* 0D8094 800D7494 8FA4006C */   lw    $a0, 0x6c($sp)
/* 0D8098 800D7498 93A80052 */  lbu   $t0, 0x52($sp)
/* 0D809C 800D749C 1048000E */  beq   $v0, $t0, .L800D74D8
/* 0D80A0 800D74A0 00000000 */   nop   
/* 0D80A4 800D74A4 8FA40060 */  lw    $a0, 0x60($sp)
/* 0D80A8 800D74A8 0C0339F5 */  jal   func_800CE7D4
/* 0D80AC 800D74AC 8FA50064 */   lw    $a1, 0x64($sp)
/* 0D80B0 800D74B0 AFA2005C */  sw    $v0, 0x5c($sp)
/* 0D80B4 800D74B4 8FAA005C */  lw    $t2, 0x5c($sp)
/* 0D80B8 800D74B8 11400005 */  beqz  $t2, .L800D74D0
/* 0D80BC 800D74BC 00000000 */   nop   
/* 0D80C0 800D74C0 0C034EF9 */  jal   __osSiRelAccess
/* 0D80C4 800D74C4 00000000 */   nop   
/* 0D80C8 800D74C8 10000010 */  b     .L800D750C
/* 0D80CC 800D74CC 8FA2005C */   lw    $v0, 0x5c($sp)
.L800D74D0:
/* 0D80D0 800D74D0 24090004 */  li    $t1, 4
/* 0D80D4 800D74D4 AFA9005C */  sw    $t1, 0x5c($sp)
.L800D74D8:
/* 0D80D8 800D74D8 8FAD005C */  lw    $t5, 0x5c($sp)
/* 0D80DC 800D74DC 24010004 */  li    $at, 4
/* 0D80E0 800D74E0 15A10007 */  bne   $t5, $at, .L800D7500
/* 0D80E4 800D74E4 00000000 */   nop   
/* 0D80E8 800D74E8 8FAE0028 */  lw    $t6, 0x28($sp)
/* 0D80EC 800D74EC 29D00000 */  slti  $s0, $t6, 0
/* 0D80F0 800D74F0 3A100001 */  xori  $s0, $s0, 1
/* 0D80F4 800D74F4 25CCFFFF */  addiu $t4, $t6, -1
/* 0D80F8 800D74F8 1600FFA7 */  bnez  $s0, .L800D7398
/* 0D80FC 800D74FC AFAC0028 */   sw    $t4, 0x28($sp)
.L800D7500:
/* 0D8100 800D7500 0C034EF9 */  jal   __osSiRelAccess
/* 0D8104 800D7504 00000000 */   nop   
/* 0D8108 800D7508 8FA2005C */  lw    $v0, 0x5c($sp)
.L800D750C:
/* 0D810C 800D750C 8FBF001C */  lw    $ra, 0x1c($sp)
/* 0D8110 800D7510 8FB00018 */  lw    $s0, 0x18($sp)
/* 0D8114 800D7514 27BD0060 */  addiu $sp, $sp, 0x60
/* 0D8118 800D7518 03E00008 */  jr    $ra
/* 0D811C 800D751C 00000000 */   nop   

glabel __osPackRamWriteData
/* 0D8120 800D7520 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0D8124 800D7524 3C0E8019 */  lui   $t6, %hi(__osPfsPifRam) # $t6, 0x8019
/* 0D8128 800D7528 25CE6590 */  addiu $t6, %lo(__osPfsPifRam) # addiu $t6, $t6, 0x6590
/* 0D812C 800D752C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D8130 800D7530 AFA40048 */  sw    $a0, 0x48($sp)
/* 0D8134 800D7534 AFA5004C */  sw    $a1, 0x4c($sp)
/* 0D8138 800D7538 AFA60050 */  sw    $a2, 0x50($sp)
/* 0D813C 800D753C AFAE0044 */  sw    $t6, 0x44($sp)
/* 0D8140 800D7540 AFA00018 */  sw    $zero, 0x18($sp)
.L800D7544:
/* 0D8144 800D7544 8FAF0018 */  lw    $t7, 0x18($sp)
/* 0D8148 800D7548 8FB90018 */  lw    $t9, 0x18($sp)
/* 0D814C 800D754C 3C018019 */  lui   $at, %hi(__osPfsPifRam) # 0x8019
/* 0D8150 800D7550 000FC080 */  sll   $t8, $t7, 2
/* 0D8154 800D7554 00380821 */  addu  $at, $at, $t8
/* 0D8158 800D7558 AC206590 */  sw    $zero, %lo(__osPfsPifRam)($at) # 0x6590($at)
/* 0D815C 800D755C 27280001 */  addiu $t0, $t9, 1
/* 0D8160 800D7560 29010010 */  slti  $at, $t0, 0x10
/* 0D8164 800D7564 1420FFF7 */  bnez  $at, .L800D7544
/* 0D8168 800D7568 AFA80018 */   sw    $t0, 0x18($sp)
/* 0D816C 800D756C 24090001 */  li    $t1, 1
/* 0D8170 800D7570 3C018019 */  lui   $at, 0x8019 # $at, 0x8019
/* 0D8174 800D7574 240A00FF */  li    $t2, 255
/* 0D8178 800D7578 240B0023 */  li    $t3, 35
/* 0D817C 800D757C 240C0001 */  li    $t4, 1
/* 0D8180 800D7580 240D0003 */  li    $t5, 3
/* 0D8184 800D7584 AC2965CC */  sw    $t1, 0x65cc($at)
/* 0D8188 800D7588 A3AA001C */  sb    $t2, 0x1c($sp)
/* 0D818C 800D758C A3AB001D */  sb    $t3, 0x1d($sp)
/* 0D8190 800D7590 A3AC001E */  sb    $t4, 0x1e($sp)
/* 0D8194 800D7594 A3AD001F */  sb    $t5, 0x1f($sp)
/* 0D8198 800D7598 0C035F98 */  jal   __osContAddressCrc
/* 0D819C 800D759C 97A4004E */   lhu   $a0, 0x4e($sp)
/* 0D81A0 800D75A0 97AE004E */  lhu   $t6, 0x4e($sp)
/* 0D81A4 800D75A4 241900FF */  li    $t9, 255
/* 0D81A8 800D75A8 A3B90042 */  sb    $t9, 0x42($sp)
/* 0D81AC 800D75AC 000E7940 */  sll   $t7, $t6, 5
/* 0D81B0 800D75B0 004FC025 */  or    $t8, $v0, $t7
/* 0D81B4 800D75B4 A7B80020 */  sh    $t8, 0x20($sp)
/* 0D81B8 800D75B8 AFA00018 */  sw    $zero, 0x18($sp)
.L800D75BC:
/* 0D81BC 800D75BC 8FA80050 */  lw    $t0, 0x50($sp)
/* 0D81C0 800D75C0 8FAA0018 */  lw    $t2, 0x18($sp)
/* 0D81C4 800D75C4 91090000 */  lbu   $t1, ($t0)
/* 0D81C8 800D75C8 03AA5821 */  addu  $t3, $sp, $t2
/* 0D81CC 800D75CC A1690022 */  sb    $t1, 0x22($t3)
/* 0D81D0 800D75D0 8FAE0018 */  lw    $t6, 0x18($sp)
/* 0D81D4 800D75D4 8FAC0050 */  lw    $t4, 0x50($sp)
/* 0D81D8 800D75D8 25CF0001 */  addiu $t7, $t6, 1
/* 0D81DC 800D75DC 29E10020 */  slti  $at, $t7, 0x20
/* 0D81E0 800D75E0 258D0001 */  addiu $t5, $t4, 1
/* 0D81E4 800D75E4 AFAF0018 */  sw    $t7, 0x18($sp)
/* 0D81E8 800D75E8 1420FFF4 */  bnez  $at, .L800D75BC
/* 0D81EC 800D75EC AFAD0050 */   sw    $t5, 0x50($sp)
/* 0D81F0 800D75F0 8FB80048 */  lw    $t8, 0x48($sp)
/* 0D81F4 800D75F4 1300000E */  beqz  $t8, .L800D7630
/* 0D81F8 800D75F8 00000000 */   nop   
/* 0D81FC 800D75FC 1B00000C */  blez  $t8, .L800D7630
/* 0D8200 800D7600 AFA00018 */   sw    $zero, 0x18($sp)
.L800D7604:
/* 0D8204 800D7604 8FB90044 */  lw    $t9, 0x44($sp)
/* 0D8208 800D7608 A3200000 */  sb    $zero, ($t9)
/* 0D820C 800D760C 8FAA0018 */  lw    $t2, 0x18($sp)
/* 0D8210 800D7610 8FAC0048 */  lw    $t4, 0x48($sp)
/* 0D8214 800D7614 8FA80044 */  lw    $t0, 0x44($sp)
/* 0D8218 800D7618 254B0001 */  addiu $t3, $t2, 1
/* 0D821C 800D761C 016C082A */  slt   $at, $t3, $t4
/* 0D8220 800D7620 25090001 */  addiu $t1, $t0, 1
/* 0D8224 800D7624 AFAB0018 */  sw    $t3, 0x18($sp)
/* 0D8228 800D7628 1420FFF6 */  bnez  $at, .L800D7604
/* 0D822C 800D762C AFA90044 */   sw    $t1, 0x44($sp)
.L800D7630:
/* 0D8230 800D7630 27AE001C */  addiu $t6, $sp, 0x1c
/* 0D8234 800D7634 25D80024 */  addiu $t8, $t6, 0x24
/* 0D8238 800D7638 8FAD0044 */  lw    $t5, 0x44($sp)
.L800D763C:
/* 0D823C 800D763C 8DC10000 */  lw    $at, ($t6)
/* 0D8240 800D7640 25CE000C */  addiu $t6, $t6, 0xc
/* 0D8244 800D7644 25AD000C */  addiu $t5, $t5, 0xc
/* 0D8248 800D7648 A9A1FFF4 */  swl   $at, -0xc($t5)
/* 0D824C 800D764C B9A1FFF7 */  swr   $at, -9($t5)
/* 0D8250 800D7650 8DC1FFF8 */  lw    $at, -8($t6)
/* 0D8254 800D7654 A9A1FFF8 */  swl   $at, -8($t5)
/* 0D8258 800D7658 B9A1FFFB */  swr   $at, -5($t5)
/* 0D825C 800D765C 8DC1FFFC */  lw    $at, -4($t6)
/* 0D8260 800D7660 A9A1FFFC */  swl   $at, -4($t5)
/* 0D8264 800D7664 15D8FFF5 */  bne   $t6, $t8, .L800D763C
/* 0D8268 800D7668 B9A1FFFF */   swr   $at, -1($t5)
/* 0D826C 800D766C 8DC10000 */  lw    $at, ($t6)
/* 0D8270 800D7670 240900FE */  li    $t1, 254
/* 0D8274 800D7674 A9A10000 */  swl   $at, ($t5)
/* 0D8278 800D7678 B9A10003 */  swr   $at, 3($t5)
/* 0D827C 800D767C 8FB90044 */  lw    $t9, 0x44($sp)
/* 0D8280 800D7680 27280028 */  addiu $t0, $t9, 0x28
/* 0D8284 800D7684 AFA80044 */  sw    $t0, 0x44($sp)
/* 0D8288 800D7688 A1090000 */  sb    $t1, ($t0)
/* 0D828C 800D768C 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D8290 800D7690 27BD0048 */  addiu $sp, $sp, 0x48
/* 0D8294 800D7694 03E00008 */  jr    $ra
/* 0D8298 800D7698 00000000 */   nop   

/* 0D829C 800D769C 00000000 */  nop   
