glabel func_800B7304
/* 0B7F04 800B7304 27BDFFA8 */  addiu $sp, $sp, -0x58
/* 0B7F08 800B7308 AFB10020 */  sw    $s1, 0x20($sp)
/* 0B7F0C 800B730C 00068C00 */  sll   $s1, $a2, 0x10
/* 0B7F10 800B7310 00117403 */  sra   $t6, $s1, 0x10
/* 0B7F14 800B7314 000EC940 */  sll   $t9, $t6, 5
/* 0B7F18 800B7318 032EC821 */  addu  $t9, $t9, $t6
/* 0B7F1C 800B731C 3C0D803B */  lui   $t5, %hi(gSynthesisReverbs) # $t5, 0x803b
/* 0B7F20 800B7320 25ADF790 */  addiu $t5, %lo(gSynthesisReverbs) # addiu $t5, $t5, -0x870
/* 0B7F24 800B7324 0019C8C0 */  sll   $t9, $t9, 3
/* 0B7F28 800B7328 01C08825 */  move  $s1, $t6
/* 0B7F2C 800B732C 032D1821 */  addu  $v1, $t9, $t5
/* 0B7F30 800B7330 906E0003 */  lbu   $t6, 3($v1)
/* 0B7F34 800B7334 AFA70064 */  sw    $a3, 0x64($sp)
/* 0B7F38 800B7338 00077C00 */  sll   $t7, $a3, 0x10
/* 0B7F3C 800B733C 000F3C03 */  sra   $a3, $t7, 0x10
/* 0B7F40 800B7340 000E7880 */  sll   $t7, $t6, 2
/* 0B7F44 800B7344 01EE7823 */  subu  $t7, $t7, $t6
/* 0B7F48 800B7348 000F78C0 */  sll   $t7, $t7, 3
/* 0B7F4C 800B734C 01EE7821 */  addu  $t7, $t7, $t6
/* 0B7F50 800B7350 AFBF0024 */  sw    $ra, 0x24($sp)
/* 0B7F54 800B7354 AFB0001C */  sw    $s0, 0x1c($sp)
/* 0B7F58 800B7358 AFA5005C */  sw    $a1, 0x5c($sp)
/* 0B7F5C 800B735C AFA60060 */  sw    $a2, 0x60($sp)
/* 0B7F60 800B7360 3C0D0200 */  lui   $t5, (0x02000840 >> 16) # lui $t5, 0x200
/* 0B7F64 800B7364 000F7880 */  sll   $t7, $t7, 2
/* 0B7F68 800B7368 35AD0840 */  ori   $t5, (0x02000840 & 0xFFFF) # ori $t5, $t5, 0x840
/* 0B7F6C 800B736C 240E0300 */  li    $t6, 768
/* 0B7F70 800B7370 006FC021 */  addu  $t8, $v1, $t7
/* 0B7F74 800B7374 0007C880 */  sll   $t9, $a3, 2
/* 0B7F78 800B7378 AC8E0004 */  sw    $t6, 4($a0)
/* 0B7F7C 800B737C AC8D0000 */  sw    $t5, ($a0)
/* 0B7F80 800B7380 906F0004 */  lbu   $t7, 4($v1)
/* 0B7F84 800B7384 0327C821 */  addu  $t9, $t9, $a3
/* 0B7F88 800B7388 0019C880 */  sll   $t9, $t9, 2
/* 0B7F8C 800B738C 03194021 */  addu  $t0, $t8, $t9
/* 0B7F90 800B7390 24010001 */  li    $at, 1
/* 0B7F94 800B7394 25080030 */  addiu $t0, $t0, 0x30
/* 0B7F98 800B7398 15E1002D */  bne   $t7, $at, .L800B7450
/* 0B7F9C 800B739C 24900008 */   addiu $s0, $a0, 8
/* 0B7FA0 800B73A0 9506000E */  lhu   $a2, 0xe($t0)
/* 0B7FA4 800B73A4 85070010 */  lh    $a3, 0x10($t0)
/* 0B7FA8 800B73A8 AFA80054 */  sw    $t0, 0x54($sp)
/* 0B7FAC 800B73AC AFA30028 */  sw    $v1, 0x28($sp)
/* 0B7FB0 800B73B0 AFB10010 */  sw    $s1, 0x10($sp)
/* 0B7FB4 800B73B4 02002025 */  move  $a0, $s0
/* 0B7FB8 800B73B8 0C02DBA1 */  jal   synthesis_load_reverb_ring_buffer
/* 0B7FBC 800B73BC 24050840 */   li    $a1, 2112
/* 0B7FC0 800B73C0 8FA80054 */  lw    $t0, 0x54($sp)
/* 0B7FC4 800B73C4 00408025 */  move  $s0, $v0
/* 0B7FC8 800B73C8 8FA30028 */  lw    $v1, 0x28($sp)
/* 0B7FCC 800B73CC 85070012 */  lh    $a3, 0x12($t0)
/* 0B7FD0 800B73D0 02002025 */  move  $a0, $s0
/* 0B7FD4 800B73D4 00003025 */  move  $a2, $zero
/* 0B7FD8 800B73D8 50E0000A */  beql  $a3, $zero, .L800B7404
/* 0B7FDC 800B73DC 3C190C30 */   lui   $t9, 0xc30
/* 0B7FE0 800B73E0 85050010 */  lh    $a1, 0x10($t0)
/* 0B7FE4 800B73E4 AFA30028 */  sw    $v1, 0x28($sp)
/* 0B7FE8 800B73E8 AFB10010 */  sw    $s1, 0x10($sp)
/* 0B7FEC 800B73EC 24A50840 */  addiu $a1, $a1, 0x840
/* 0B7FF0 800B73F0 30B8FFFF */  andi  $t8, $a1, 0xffff
/* 0B7FF4 800B73F4 0C02DBA1 */  jal   synthesis_load_reverb_ring_buffer
/* 0B7FF8 800B73F8 03002825 */   move  $a1, $t8
/* 0B7FFC 800B73FC 8FA30028 */  lw    $v1, 0x28($sp)
/* 0B8000 800B7400 3C190C30 */  lui   $t9, (0x0C307FFF >> 16) # lui $t9, 0xc30
.L800B7404:
/* 0B8004 800B7404 3C0D0840 */  lui   $t5, (0x08400540 >> 16) # lui $t5, 0x840
/* 0B8008 800B7408 35AD0540 */  ori   $t5, (0x08400540 & 0xFFFF) # ori $t5, $t5, 0x540
/* 0B800C 800B740C 37397FFF */  ori   $t9, (0x0C307FFF & 0xFFFF) # ori $t9, $t9, 0x7fff
/* 0B8010 800B7410 AC590000 */  sw    $t9, ($v0)
/* 0B8014 800B7414 AC4D0004 */  sw    $t5, 4($v0)
/* 0B8018 800B7418 946E0008 */  lhu   $t6, 8($v1)
/* 0B801C 800B741C 34018000 */  li    $at, 32768
/* 0B8020 800B7420 24500008 */  addiu $s0, $v0, 8
/* 0B8024 800B7424 01C17821 */  addu  $t7, $t6, $at
/* 0B8028 800B7428 31F8FFFF */  andi  $t8, $t7, 0xffff
/* 0B802C 800B742C 3C010C30 */  lui   $at, 0xc30
/* 0B8030 800B7430 02002825 */  move  $a1, $s0
/* 0B8034 800B7434 3C0D0840 */  lui   $t5, (0x08400840 >> 16) # lui $t5, 0x840
/* 0B8038 800B7438 35AD0840 */  ori   $t5, (0x08400840 & 0xFFFF) # ori $t5, $t5, 0x840
/* 0B803C 800B743C 0301C825 */  or    $t9, $t8, $at
/* 0B8040 800B7440 ACB90000 */  sw    $t9, ($a1)
/* 0B8044 800B7444 ACAD0004 */  sw    $t5, 4($a1)
/* 0B8048 800B7448 10000073 */  b     .L800B7618
/* 0B804C 800B744C 26100008 */   addiu $s0, $s0, 8
.L800B7450:
/* 0B8050 800B7450 8D02000C */  lw    $v0, 0xc($t0)
/* 0B8054 800B7454 85190010 */  lh    $t9, 0x10($t0)
/* 0B8058 800B7458 2401FFF0 */  li    $at, -16
/* 0B805C 800B745C 304E0007 */  andi  $t6, $v0, 7
/* 0B8060 800B7460 000E7C40 */  sll   $t7, $t6, 0x11
/* 0B8064 800B7464 000FC403 */  sra   $t8, $t7, 0x10
/* 0B8068 800B7468 03195021 */  addu  $t2, $t8, $t9
/* 0B806C 800B746C 254A000F */  addiu $t2, $t2, 0xf
/* 0B8070 800B7470 03004825 */  move  $t1, $t8
/* 0B8074 800B7474 314DFFF0 */  andi  $t5, $t2, 0xfff0
/* 0B8078 800B7478 000D7400 */  sll   $t6, $t5, 0x10
/* 0B807C 800B747C 000E7C03 */  sra   $t7, $t6, 0x10
/* 0B8080 800B7480 01E05025 */  move  $t2, $t7
/* 0B8084 800B7484 A7AA0050 */  sh    $t2, 0x50($sp)
/* 0B8088 800B7488 A7A90052 */  sh    $t1, 0x52($sp)
/* 0B808C 800B748C AFA80054 */  sw    $t0, 0x54($sp)
/* 0B8090 800B7490 AFA30028 */  sw    $v1, 0x28($sp)
/* 0B8094 800B7494 AFB10010 */  sw    $s1, 0x10($sp)
/* 0B8098 800B7498 02002025 */  move  $a0, $s0
/* 0B809C 800B749C 24050020 */  li    $a1, 32
/* 0B80A0 800B74A0 05210003 */  bgez  $t1, .L800B74B0
/* 0B80A4 800B74A4 0009C043 */   sra   $t8, $t1, 1
/* 0B80A8 800B74A8 25210001 */  addiu $at, $t1, 1
/* 0B80AC 800B74AC 0001C043 */  sra   $t8, $at, 1
.L800B74B0:
/* 0B80B0 800B74B0 00583023 */  subu  $a2, $v0, $t8
/* 0B80B4 800B74B4 30D9FFFF */  andi  $t9, $a2, 0xffff
/* 0B80B8 800B74B8 03203025 */  move  $a2, $t9
/* 0B80BC 800B74BC 0C02DBA1 */  jal   synthesis_load_reverb_ring_buffer
/* 0B80C0 800B74C0 24070180 */   li    $a3, 384
/* 0B80C4 800B74C4 8FA80054 */  lw    $t0, 0x54($sp)
/* 0B80C8 800B74C8 00408025 */  move  $s0, $v0
/* 0B80CC 800B74CC 8FA30028 */  lw    $v1, 0x28($sp)
/* 0B80D0 800B74D0 850D0012 */  lh    $t5, 0x12($t0)
/* 0B80D4 800B74D4 87A90052 */  lh    $t1, 0x52($sp)
/* 0B80D8 800B74D8 87AA0050 */  lh    $t2, 0x50($sp)
/* 0B80DC 800B74DC 11A0000D */  beqz  $t5, .L800B7514
/* 0B80E0 800B74E0 02002025 */   move  $a0, $s0
/* 0B80E4 800B74E4 25450020 */  addiu $a1, $t2, 0x20
/* 0B80E8 800B74E8 30AEFFFF */  andi  $t6, $a1, 0xffff
/* 0B80EC 800B74EC 240F0180 */  li    $t7, 384
/* 0B80F0 800B74F0 01EA3823 */  subu  $a3, $t7, $t2
/* 0B80F4 800B74F4 01C02825 */  move  $a1, $t6
/* 0B80F8 800B74F8 00003025 */  move  $a2, $zero
/* 0B80FC 800B74FC AFB10010 */  sw    $s1, 0x10($sp)
/* 0B8100 800B7500 AFA30028 */  sw    $v1, 0x28($sp)
/* 0B8104 800B7504 0C02DBA1 */  jal   synthesis_load_reverb_ring_buffer
/* 0B8108 800B7508 A7A90052 */   sh    $t1, 0x52($sp)
/* 0B810C 800B750C 8FA30028 */  lw    $v1, 0x28($sp)
/* 0B8110 800B7510 87A90052 */  lh    $t1, 0x52($sp)
.L800B7514:
/* 0B8114 800B7514 25380020 */  addiu $t8, $t1, 0x20
/* 0B8118 800B7518 3C0A0800 */  lui   $t2, 0x800
/* 0B811C 800B751C 3319FFFF */  andi  $t9, $t8, 0xffff
/* 0B8120 800B7520 032A6825 */  or    $t5, $t9, $t2
/* 0B8124 800B7524 AC4D0000 */  sw    $t5, ($v0)
/* 0B8128 800B7528 8FA5005C */  lw    $a1, 0x5c($sp)
/* 0B812C 800B752C 3C010840 */  lui   $at, 0x840
/* 0B8130 800B7530 3C0B0500 */  lui   $t3, 0x500
/* 0B8134 800B7534 00057040 */  sll   $t6, $a1, 1
/* 0B8138 800B7538 31C5FFFF */  andi  $a1, $t6, 0xffff
/* 0B813C 800B753C 00A1C025 */  or    $t8, $a1, $at
/* 0B8140 800B7540 AC580004 */  sw    $t8, 4($v0)
/* 0B8144 800B7544 90780000 */  lbu   $t8, ($v1)
/* 0B8148 800B7548 946D000A */  lhu   $t5, 0xa($v1)
/* 0B814C 800B754C 24500008 */  addiu $s0, $v0, 8
/* 0B8150 800B7550 0018CC00 */  sll   $t9, $t8, 0x10
/* 0B8154 800B7554 01AB7025 */  or    $t6, $t5, $t3
/* 0B8158 800B7558 01D96825 */  or    $t5, $t6, $t9
/* 0B815C 800B755C 02003025 */  move  $a2, $s0
/* 0B8160 800B7560 ACCD0000 */  sw    $t5, ($a2)
/* 0B8164 800B7564 8C6F0020 */  lw    $t7, 0x20($v1)
/* 0B8168 800B7568 3C0C8000 */  lui   $t4, 0x8000
/* 0B816C 800B756C 26100008 */  addiu $s0, $s0, 8
/* 0B8170 800B7570 252E01A0 */  addiu $t6, $t1, 0x1a0
/* 0B8174 800B7574 01ECC021 */  addu  $t8, $t7, $t4
/* 0B8178 800B7578 ACD80004 */  sw    $t8, 4($a2)
/* 0B817C 800B757C 31D9FFFF */  andi  $t9, $t6, 0xffff
/* 0B8180 800B7580 02003825 */  move  $a3, $s0
/* 0B8184 800B7584 3C0109C0 */  lui   $at, 0x9c0
/* 0B8188 800B7588 00A17825 */  or    $t7, $a1, $at
/* 0B818C 800B758C 032A6825 */  or    $t5, $t9, $t2
/* 0B8190 800B7590 ACED0000 */  sw    $t5, ($a3)
/* 0B8194 800B7594 ACEF0004 */  sw    $t7, 4($a3)
/* 0B8198 800B7598 906F0000 */  lbu   $t7, ($v1)
/* 0B819C 800B759C 946E000A */  lhu   $t6, 0xa($v1)
/* 0B81A0 800B75A0 26100008 */  addiu $s0, $s0, 8
/* 0B81A4 800B75A4 000FC400 */  sll   $t8, $t7, 0x10
/* 0B81A8 800B75A8 01CBC825 */  or    $t9, $t6, $t3
/* 0B81AC 800B75AC 03387025 */  or    $t6, $t9, $t8
/* 0B81B0 800B75B0 02004025 */  move  $t0, $s0
/* 0B81B4 800B75B4 AD0E0000 */  sw    $t6, ($t0)
/* 0B81B8 800B75B8 8C6D0024 */  lw    $t5, 0x24($v1)
/* 0B81BC 800B75BC 26100008 */  addiu $s0, $s0, 8
/* 0B81C0 800B75C0 02001025 */  move  $v0, $s0
/* 0B81C4 800B75C4 01AC7821 */  addu  $t7, $t5, $t4
/* 0B81C8 800B75C8 AD0F0004 */  sw    $t7, 4($t0)
/* 0B81CC 800B75CC 3C180840 */  lui   $t8, (0x08400540 >> 16) # lui $t8, 0x840
/* 0B81D0 800B75D0 3C190C30 */  lui   $t9, (0x0C307FFF >> 16) # lui $t9, 0xc30
/* 0B81D4 800B75D4 37397FFF */  ori   $t9, (0x0C307FFF & 0xFFFF) # ori $t9, $t9, 0x7fff
/* 0B81D8 800B75D8 37180540 */  ori   $t8, (0x08400540 & 0xFFFF) # ori $t8, $t8, 0x540
/* 0B81DC 800B75DC AC580004 */  sw    $t8, 4($v0)
/* 0B81E0 800B75E0 AC590000 */  sw    $t9, ($v0)
/* 0B81E4 800B75E4 946E0008 */  lhu   $t6, 8($v1)
/* 0B81E8 800B75E8 34018000 */  li    $at, 32768
/* 0B81EC 800B75EC 26100008 */  addiu $s0, $s0, 8
/* 0B81F0 800B75F0 01C16821 */  addu  $t5, $t6, $at
/* 0B81F4 800B75F4 02002025 */  move  $a0, $s0
/* 0B81F8 800B75F8 31AFFFFF */  andi  $t7, $t5, 0xffff
/* 0B81FC 800B75FC 3C010C30 */  lui   $at, 0xc30
/* 0B8200 800B7600 3C180840 */  lui   $t8, (0x08400840 >> 16) # lui $t8, 0x840
/* 0B8204 800B7604 37180840 */  ori   $t8, (0x08400840 & 0xFFFF) # ori $t8, $t8, 0x840
/* 0B8208 800B7608 01E1C825 */  or    $t9, $t7, $at
/* 0B820C 800B760C AC990000 */  sw    $t9, ($a0)
/* 0B8210 800B7610 AC980004 */  sw    $t8, 4($a0)
/* 0B8214 800B7614 26100008 */  addiu $s0, $s0, 8
.L800B7618:
/* 0B8218 800B7618 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0B821C 800B761C 02001025 */  move  $v0, $s0
/* 0B8220 800B7620 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0B8224 800B7624 8FB10020 */  lw    $s1, 0x20($sp)
/* 0B8228 800B7628 03E00008 */  jr    $ra
/* 0B822C 800B762C 27BD0058 */   addiu $sp, $sp, 0x58
