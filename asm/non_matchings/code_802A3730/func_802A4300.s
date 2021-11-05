glabel func_802A4300
/* 10D910 802A4300 3C0E800E */  lui   $t6, %hi(D_800DC52C) # $t6, 0x800e
/* 10D914 802A4304 8DCEC52C */  lw    $t6, %lo(D_800DC52C)($t6)
/* 10D918 802A4308 3C0F800E */  lui   $t7, %hi(D_800DC5B0) # $t7, 0x800e
/* 10D91C 802A430C 11C0007D */  beqz  $t6, .L802A4504
/* 10D920 802A4310 00000000 */   nop   
/* 10D924 802A4314 95EFC5B0 */  lhu   $t7, %lo(D_800DC5B0)($t7)
/* 10D928 802A4318 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 10D92C 802A431C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 10D930 802A4320 15E00078 */  bnez  $t7, .L802A4504
/* 10D934 802A4324 00000000 */   nop   
/* 10D938 802A4328 8C620000 */  lw    $v0, ($v1)
/* 10D93C 802A432C 3C0DE700 */  lui   $t5, 0xe700
/* 10D940 802A4330 3C0EBA00 */  lui   $t6, (0xBA001402 >> 16) # lui $t6, 0xba00
/* 10D944 802A4334 24580008 */  addiu $t8, $v0, 8
/* 10D948 802A4338 AC780000 */  sw    $t8, ($v1)
/* 10D94C 802A433C AC400004 */  sw    $zero, 4($v0)
/* 10D950 802A4340 AC4D0000 */  sw    $t5, ($v0)
/* 10D954 802A4344 8C620000 */  lw    $v0, ($v1)
/* 10D958 802A4348 35CE1402 */  ori   $t6, (0xBA001402 & 0xFFFF) # ori $t6, $t6, 0x1402
/* 10D95C 802A434C 3C0F0030 */  lui   $t7, 0x30
/* 10D960 802A4350 24590008 */  addiu $t9, $v0, 8
/* 10D964 802A4354 AC790000 */  sw    $t9, ($v1)
/* 10D968 802A4358 AC4F0004 */  sw    $t7, 4($v0)
/* 10D96C 802A435C AC4E0000 */  sw    $t6, ($v0)
/* 10D970 802A4360 8C620000 */  lw    $v0, ($v1)
/* 10D974 802A4364 3C19FF10 */  lui   $t9, (0xFF10013F >> 16) # lui $t9, 0xff10
/* 10D978 802A4368 3739013F */  ori   $t9, (0xFF10013F & 0xFFFF) # ori $t9, $t9, 0x13f
/* 10D97C 802A436C 24580008 */  addiu $t8, $v0, 8
/* 10D980 802A4370 AC780000 */  sw    $t8, ($v1)
/* 10D984 802A4374 3C0E800E */  lui   $t6, %hi(sRenderingFramebuffer) # $t6, 0x800e
/* 10D988 802A4378 AC590000 */  sw    $t9, ($v0)
/* 10D98C 802A437C 95CEC560 */  lhu   $t6, %lo(sRenderingFramebuffer)($t6)
/* 10D990 802A4380 3C188015 */  lui   $t8, %hi(gPhysicalFramebuffers)
/* 10D994 802A4384 3C0C1FFF */  lui   $t4, (0x1FFFFFFF >> 16) # lui $t4, 0x1fff
/* 10D998 802A4388 000E7880 */  sll   $t7, $t6, 2
/* 10D99C 802A438C 030FC021 */  addu  $t8, $t8, $t7
/* 10D9A0 802A4390 8F1802A8 */  lw    $t8, %lo(gPhysicalFramebuffers)($t8)
/* 10D9A4 802A4394 358CFFFF */  ori   $t4, (0x1FFFFFFF & 0xFFFF) # ori $t4, $t4, 0xffff
/* 10D9A8 802A4398 3C0FF700 */  lui   $t7, 0xf700
/* 10D9AC 802A439C 030CC824 */  and   $t9, $t8, $t4
/* 10D9B0 802A43A0 AC590004 */  sw    $t9, 4($v0)
/* 10D9B4 802A43A4 8C620000 */  lw    $v0, ($v1)
/* 10D9B8 802A43A8 3C180001 */  lui   $t8, (0x00010001 >> 16) # lui $t8, 1
/* 10D9BC 802A43AC 37180001 */  ori   $t8, (0x00010001 & 0xFFFF) # ori $t8, $t8, 1
/* 10D9C0 802A43B0 244E0008 */  addiu $t6, $v0, 8
/* 10D9C4 802A43B4 AC6E0000 */  sw    $t6, ($v1)
/* 10D9C8 802A43B8 AC580004 */  sw    $t8, 4($v0)
/* 10D9CC 802A43BC AC4F0000 */  sw    $t7, ($v0)
/* 10D9D0 802A43C0 8C620000 */  lw    $v0, ($v1)
/* 10D9D4 802A43C4 3C0F802C */  lui   $t7, %hi(D_802B8880) # $t7, 0x802c
/* 10D9D8 802A43C8 25EF8880 */  addiu $t7, %lo(D_802B8880) # addiu $t7, $t7, -0x7780
/* 10D9DC 802A43CC 24590008 */  addiu $t9, $v0, 8
/* 10D9E0 802A43D0 AC790000 */  sw    $t9, ($v1)
/* 10D9E4 802A43D4 3C0E0380 */  lui   $t6, (0x03800010 >> 16) # lui $t6, 0x380
/* 10D9E8 802A43D8 35CE0010 */  ori   $t6, (0x03800010 & 0xFFFF) # ori $t6, $t6, 0x10
/* 10D9EC 802A43DC 01ECC024 */  and   $t8, $t7, $t4
/* 10D9F0 802A43E0 AC580004 */  sw    $t8, 4($v0)
/* 10D9F4 802A43E4 AC4E0000 */  sw    $t6, ($v0)
/* 10D9F8 802A43E8 8C620000 */  lw    $v0, ($v1)
/* 10D9FC 802A43EC 3C0F0050 */  lui   $t7, (0x005003C0 >> 16) # lui $t7, 0x50
/* 10DA00 802A43F0 35EF03C0 */  ori   $t7, (0x005003C0 & 0xFFFF) # ori $t7, $t7, 0x3c0
/* 10DA04 802A43F4 24590008 */  addiu $t9, $v0, 8
/* 10DA08 802A43F8 AC790000 */  sw    $t9, ($v1)
/* 10DA0C 802A43FC 3C0EED00 */  lui   $t6, 0xed00
/* 10DA10 802A4400 AC4E0000 */  sw    $t6, ($v0)
/* 10DA14 802A4404 AC4F0004 */  sw    $t7, 4($v0)
/* 10DA18 802A4408 8C620000 */  lw    $v0, ($v1)
/* 10DA1C 802A440C 3C0B800E */  lui   $t3, %hi(D_800DC52C) # $t3, 0x800e
/* 10DA20 802A4410 24010001 */  li    $at, 1
/* 10DA24 802A4414 24580008 */  addiu $t8, $v0, 8
/* 10DA28 802A4418 AC780000 */  sw    $t8, ($v1)
/* 10DA2C 802A441C AC400004 */  sw    $zero, 4($v0)
/* 10DA30 802A4420 AC4D0000 */  sw    $t5, ($v0)
/* 10DA34 802A4424 8D6BC52C */  lw    $t3, %lo(D_800DC52C)($t3)
/* 10DA38 802A4428 3C19F64F */  lui   $t9, 0xf64f
/* 10DA3C 802A442C 11610011 */  beq   $t3, $at, .L802A4474
/* 10DA40 802A4430 24010002 */   li    $at, 2
/* 10DA44 802A4434 11610006 */  beq   $t3, $at, .L802A4450
/* 10DA48 802A4438 3C0EF627 */   lui   $t6, (0xF627C3BC >> 16) # lui $t6, 0xf627
/* 10DA4C 802A443C 24010003 */  li    $at, 3
/* 10DA50 802A4440 11610014 */  beq   $t3, $at, .L802A4494
/* 10DA54 802A4444 3C18F627 */   lui   $t8, 0xf627
/* 10DA58 802A4448 10000023 */  b     .L802A44D8
/* 10DA5C 802A444C 8C620000 */   lw    $v0, ($v1)
.L802A4450:
/* 10DA60 802A4450 8C620000 */  lw    $v0, ($v1)
/* 10DA64 802A4454 3C0F0027 */  lui   $t7, (0x00274000 >> 16) # lui $t7, 0x27
/* 10DA68 802A4458 35EF4000 */  ori   $t7, (0x00274000 & 0xFFFF) # ori $t7, $t7, 0x4000
/* 10DA6C 802A445C 24590008 */  addiu $t9, $v0, 8
/* 10DA70 802A4460 AC790000 */  sw    $t9, ($v1)
/* 10DA74 802A4464 35CEC3BC */  ori   $t6, (0xF627C3BC & 0xFFFF) # ori $t6, $t6, 0xc3bc
/* 10DA78 802A4468 AC4E0000 */  sw    $t6, ($v0)
/* 10DA7C 802A446C 10000019 */  b     .L802A44D4
/* 10DA80 802A4470 AC4F0004 */   sw    $t7, 4($v0)
.L802A4474:
/* 10DA84 802A4474 8C620000 */  lw    $v0, ($v1)
/* 10DA88 802A4478 3739C1E4 */  ori   $t9, $t9, 0xc1e4
/* 10DA8C 802A447C 240E01DC */  li    $t6, 476
/* 10DA90 802A4480 24580008 */  addiu $t8, $v0, 8
/* 10DA94 802A4484 AC780000 */  sw    $t8, ($v1)
/* 10DA98 802A4488 AC4E0004 */  sw    $t6, 4($v0)
/* 10DA9C 802A448C 10000011 */  b     .L802A44D4
/* 10DAA0 802A4490 AC590000 */   sw    $t9, ($v0)
.L802A4494:
/* 10DAA4 802A4494 8C620000 */  lw    $v0, ($v1)
/* 10DAA8 802A4498 3C190027 */  lui   $t9, (0x00274000 >> 16) # lui $t9, 0x27
/* 10DAAC 802A449C 37394000 */  ori   $t9, (0x00274000 & 0xFFFF) # ori $t9, $t9, 0x4000
/* 10DAB0 802A44A0 244F0008 */  addiu $t7, $v0, 8
/* 10DAB4 802A44A4 AC6F0000 */  sw    $t7, ($v1)
/* 10DAB8 802A44A8 3718C3BC */  ori   $t8, $t8, 0xc3bc
/* 10DABC 802A44AC AC580000 */  sw    $t8, ($v0)
/* 10DAC0 802A44B0 AC590004 */  sw    $t9, 4($v0)
/* 10DAC4 802A44B4 8C620000 */  lw    $v0, ($v1)
/* 10DAC8 802A44B8 3C0FF64F */  lui   $t7, (0xF64FC1E4 >> 16) # lui $t7, 0xf64f
/* 10DACC 802A44BC 35EFC1E4 */  ori   $t7, (0xF64FC1E4 & 0xFFFF) # ori $t7, $t7, 0xc1e4
/* 10DAD0 802A44C0 244E0008 */  addiu $t6, $v0, 8
/* 10DAD4 802A44C4 AC6E0000 */  sw    $t6, ($v1)
/* 10DAD8 802A44C8 241801DC */  li    $t8, 476
/* 10DADC 802A44CC AC580004 */  sw    $t8, 4($v0)
/* 10DAE0 802A44D0 AC4F0000 */  sw    $t7, ($v0)
.L802A44D4:
/* 10DAE4 802A44D4 8C620000 */  lw    $v0, ($v1)
.L802A44D8:
/* 10DAE8 802A44D8 3C0FBA00 */  lui   $t7, (0xBA001402 >> 16) # lui $t7, 0xba00
/* 10DAEC 802A44DC 35EF1402 */  ori   $t7, (0xBA001402 & 0xFFFF) # ori $t7, $t7, 0x1402
/* 10DAF0 802A44E0 24590008 */  addiu $t9, $v0, 8
/* 10DAF4 802A44E4 AC790000 */  sw    $t9, ($v1)
/* 10DAF8 802A44E8 AC400004 */  sw    $zero, 4($v0)
/* 10DAFC 802A44EC AC4D0000 */  sw    $t5, ($v0)
/* 10DB00 802A44F0 8C620000 */  lw    $v0, ($v1)
/* 10DB04 802A44F4 244E0008 */  addiu $t6, $v0, 8
/* 10DB08 802A44F8 AC6E0000 */  sw    $t6, ($v1)
/* 10DB0C 802A44FC AC400004 */  sw    $zero, 4($v0)
/* 10DB10 802A4500 AC4F0000 */  sw    $t7, ($v0)
.L802A4504:
/* 10DB14 802A4504 03E00008 */  jr    $ra
/* 10DB18 802A4508 00000000 */   nop   
