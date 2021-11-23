glabel func_800C683C
/* 0C743C 800C683C 27BDFFB0 */  addiu $sp, $sp, -0x50
/* 0C7440 800C6840 3C0E800F */  lui   $t6, %hi(D_800EA108) # $t6, 0x800f
/* 0C7444 800C6844 91CEA108 */  lbu   $t6, %lo(D_800EA108)($t6)
/* 0C7448 800C6848 AFBE0038 */  sw    $fp, 0x38($sp)
/* 0C744C 800C684C 03A0F025 */  move  $fp, $sp
/* 0C7450 800C6850 AFBF003C */  sw    $ra, 0x3c($sp)
/* 0C7454 800C6854 AFB20034 */  sw    $s2, 0x34($sp)
/* 0C7458 800C6858 AFB10030 */  sw    $s1, 0x30($sp)
/* 0C745C 800C685C AFB0002C */  sw    $s0, 0x2c($sp)
/* 0C7460 800C6860 AFA40050 */  sw    $a0, 0x50($sp)
/* 0C7464 800C6864 15C00208 */  bnez  $t6, .L800C7088
/* 0C7468 800C6868 308600FF */   andi  $a2, $a0, 0xff
/* 0C746C 800C686C 3C0F800F */  lui   $t7, %hi(D_800EA0EC)
/* 0C7470 800C6870 01E67821 */  addu  $t7, $t7, $a2
/* 0C7474 800C6874 91EFA0EC */  lbu   $t7, %lo(D_800EA0EC)($t7)
/* 0C7478 800C6878 3C18800F */  lui   $t8, %hi(D_800E9E74) # $t8, 0x800f
/* 0C747C 800C687C 27189E74 */  addiu $t8, %lo(D_800E9E74) # addiu $t8, $t8, -0x618c
/* 0C7480 800C6880 15E00201 */  bnez  $t7, .L800C7088
/* 0C7484 800C6884 00061080 */   sll   $v0, $a2, 2
/* 0C7488 800C6888 3C19800F */  lui   $t9, %hi(D_800E9E84) # $t9, 0x800f
/* 0C748C 800C688C 27399E84 */  addiu $t9, %lo(D_800E9E84) # addiu $t9, $t9, -0x617c
/* 0C7490 800C6890 00594021 */  addu  $t0, $v0, $t9
/* 0C7494 800C6894 AFA80040 */  sw    $t0, 0x40($sp)
/* 0C7498 800C6898 00589021 */  addu  $s2, $v0, $t8
/* 0C749C 800C689C 8E430000 */  lw    $v1, ($s2)
/* 0C74A0 800C68A0 8D0A0000 */  lw    $t2, ($t0)
/* 0C74A4 800C68A4 00065900 */  sll   $t3, $a2, 4
/* 0C74A8 800C68A8 01665823 */  subu  $t3, $t3, $a2
/* 0C74AC 800C68AC 106A01F4 */  beq   $v1, $t2, .L800C7080
/* 0C74B0 800C68B0 000B5880 */   sll   $t3, $t3, 2
/* 0C74B4 800C68B4 3C0C800F */  lui   $t4, %hi(D_800E9F7C) # $t4, 0x800f
/* 0C74B8 800C68B8 3C0D800F */  lui   $t5, %hi(D_800E9E94) # $t5, 0x800f
/* 0C74BC 800C68BC 25AD9E94 */  addiu $t5, %lo(D_800E9E94) # addiu $t5, $t5, -0x616c
/* 0C74C0 800C68C0 258C9F7C */  addiu $t4, %lo(D_800E9F7C) # addiu $t4, $t4, -0x6084
/* 0C74C4 800C68C4 016C8021 */  addu  $s0, $t3, $t4
/* 0C74C8 800C68C8 004D8821 */  addu  $s1, $v0, $t5
/* 0C74CC 800C68CC 8E250000 */  lw    $a1, ($s1)
/* 0C74D0 800C68D0 02002025 */  move  $a0, $s0
/* 0C74D4 800C68D4 AFA2004C */  sw    $v0, 0x4c($sp)
/* 0C74D8 800C68D8 0C03155E */  jal   func_800C5578
/* 0C74DC 800C68DC A3A60053 */   sb    $a2, 0x53($sp)
/* 0C74E0 800C68E0 8E4E0000 */  lw    $t6, ($s2)
/* 0C74E4 800C68E4 8FC2004C */  lw    $v0, 0x4c($fp)
/* 0C74E8 800C68E8 93C60053 */  lbu   $a2, 0x53($fp)
/* 0C74EC 800C68EC 25CFFFFF */  addiu $t7, $t6, -1
/* 0C74F0 800C68F0 2DE1001F */  sltiu $at, $t7, 0x1f
/* 0C74F4 800C68F4 102001DE */  beqz  $at, .L800C7070
/* 0C74F8 800C68F8 000F7880 */   sll   $t7, $t7, 2
/* 0C74FC 800C68FC 3C01800F */  lui   $at, %hi(jpt_800F373C)
/* 0C7500 800C6900 002F0821 */  addu  $at, $at, $t7
/* 0C7504 800C6904 8C2F373C */  lw    $t7, %lo(jpt_800F373C)($at)
/* 0C7508 800C6908 01E00008 */  jr    $t7
/* 0C750C 800C690C 00000000 */   nop   
glabel L800C6910
/* 0C7510 800C6910 3C19800F */  lui   $t9, %hi(D_800E9EF4) # $t9, 0x800f
/* 0C7514 800C6914 27399EF4 */  addiu $t9, %lo(D_800E9EF4) # addiu $t9, $t9, -0x610c
/* 0C7518 800C6918 3C18800F */  lui   $t8, %hi(D_800E9F14) # $t8, 0x800f
/* 0C751C 800C691C 27189F14 */  addiu $t8, %lo(D_800E9F14) # addiu $t8, $t8, -0x60ec
/* 0C7520 800C6920 00594021 */  addu  $t0, $v0, $t9
/* 0C7524 800C6924 3C040100 */  lui   $a0, (0x0100F908 >> 16) # lui $a0, 0x100
/* 0C7528 800C6928 26090014 */  addiu $t1, $s0, 0x14
/* 0C752C 800C692C AFA90014 */  sw    $t1, 0x14($sp)
/* 0C7530 800C6930 3484F908 */  ori   $a0, (0x0100F908 & 0xFFFF) # ori $a0, $a0, 0xf908
/* 0C7534 800C6934 AFA80010 */  sw    $t0, 0x10($sp)
/* 0C7538 800C6938 00583821 */  addu  $a3, $v0, $t8
/* 0C753C 800C693C 0C031052 */  jal   play_sound
/* 0C7540 800C6940 02002825 */   move  $a1, $s0
/* 0C7544 800C6944 3C0A0100 */  lui   $t2, (0x0100F908 >> 16) # lui $t2, 0x100
/* 0C7548 800C6948 354AF908 */  ori   $t2, (0x0100F908 & 0xFFFF) # ori $t2, $t2, 0xf908
/* 0C754C 800C694C AE2A0000 */  sw    $t2, ($s1)
/* 0C7550 800C6950 100001CB */  b     .L800C7080
/* 0C7554 800C6954 8E430000 */   lw    $v1, ($s2)
glabel L800C6958
/* 0C7558 800C6958 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C755C 800C695C 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7560 800C6960 3C040100 */  lui   $a0, (0x0100F81D >> 16) # lui $a0, 0x100
/* 0C7564 800C6964 260B0014 */  addiu $t3, $s0, 0x14
/* 0C7568 800C6968 AFAB0014 */  sw    $t3, 0x14($sp)
/* 0C756C 800C696C 3484F81D */  ori   $a0, (0x0100F81D & 0xFFFF) # ori $a0, $a0, 0xf81d
/* 0C7570 800C6970 AFA70010 */  sw    $a3, 0x10($sp)
/* 0C7574 800C6974 0C031052 */  jal   play_sound
/* 0C7578 800C6978 02002825 */   move  $a1, $s0
/* 0C757C 800C697C 3C0C0100 */  lui   $t4, (0x0100F81D >> 16) # lui $t4, 0x100
/* 0C7580 800C6980 358CF81D */  ori   $t4, (0x0100F81D & 0xFFFF) # ori $t4, $t4, 0xf81d
/* 0C7584 800C6984 AE2C0000 */  sw    $t4, ($s1)
/* 0C7588 800C6988 100001BD */  b     .L800C7080
/* 0C758C 800C698C 8E430000 */   lw    $v1, ($s2)
glabel L800C6990
/* 0C7590 800C6990 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7594 800C6994 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7598 800C6998 3C040100 */  lui   $a0, (0x0100F822 >> 16) # lui $a0, 0x100
/* 0C759C 800C699C 260D0014 */  addiu $t5, $s0, 0x14
/* 0C75A0 800C69A0 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0C75A4 800C69A4 3484F822 */  ori   $a0, (0x0100F822 & 0xFFFF) # ori $a0, $a0, 0xf822
/* 0C75A8 800C69A8 AFA70010 */  sw    $a3, 0x10($sp)
/* 0C75AC 800C69AC 0C031052 */  jal   play_sound
/* 0C75B0 800C69B0 02002825 */   move  $a1, $s0
/* 0C75B4 800C69B4 3C0E0100 */  lui   $t6, (0x0100F822 >> 16) # lui $t6, 0x100
/* 0C75B8 800C69B8 35CEF822 */  ori   $t6, (0x0100F822 & 0xFFFF) # ori $t6, $t6, 0xf822
/* 0C75BC 800C69BC AE2E0000 */  sw    $t6, ($s1)
/* 0C75C0 800C69C0 100001AF */  b     .L800C7080
/* 0C75C4 800C69C4 8E430000 */   lw    $v1, ($s2)
glabel L800C69C8
/* 0C75C8 800C69C8 3C0F800F */  lui   $t7, %hi(D_800E9EF4) # $t7, 0x800f
/* 0C75CC 800C69CC 25EF9EF4 */  addiu $t7, %lo(D_800E9EF4) # addiu $t7, $t7, -0x610c
/* 0C75D0 800C69D0 004FC021 */  addu  $t8, $v0, $t7
/* 0C75D4 800C69D4 3C040100 */  lui   $a0, (0x0100F009 >> 16) # lui $a0, 0x100
/* 0C75D8 800C69D8 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C75DC 800C69DC 26190014 */  addiu $t9, $s0, 0x14
/* 0C75E0 800C69E0 AFB90014 */  sw    $t9, 0x14($sp)
/* 0C75E4 800C69E4 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C75E8 800C69E8 3484F009 */  ori   $a0, (0x0100F009 & 0xFFFF) # ori $a0, $a0, 0xf009
/* 0C75EC 800C69EC AFB80010 */  sw    $t8, 0x10($sp)
/* 0C75F0 800C69F0 0C031052 */  jal   play_sound
/* 0C75F4 800C69F4 02002825 */   move  $a1, $s0
/* 0C75F8 800C69F8 3C080100 */  lui   $t0, (0x0100F009 >> 16) # lui $t0, 0x100
/* 0C75FC 800C69FC 3508F009 */  ori   $t0, (0x0100F009 & 0xFFFF) # ori $t0, $t0, 0xf009
/* 0C7600 800C6A00 AE280000 */  sw    $t0, ($s1)
/* 0C7604 800C6A04 1000019E */  b     .L800C7080
/* 0C7608 800C6A08 8E430000 */   lw    $v1, ($s2)
glabel L800C6A0C
/* 0C760C 800C6A0C 3C09800F */  lui   $t1, %hi(D_800E9F14) # $t1, 0x800f
/* 0C7610 800C6A10 3C0A800F */  lui   $t2, %hi(D_800EA1D4) # $t2, 0x800f
/* 0C7614 800C6A14 254AA1D4 */  addiu $t2, %lo(D_800EA1D4) # addiu $t2, $t2, -0x5e2c
/* 0C7618 800C6A18 25299F14 */  addiu $t1, %lo(D_800E9F14) # addiu $t1, $t1, -0x60ec
/* 0C761C 800C6A1C 3C040100 */  lui   $a0, (0x0100F40A >> 16) # lui $a0, 0x100
/* 0C7620 800C6A20 260B0014 */  addiu $t3, $s0, 0x14
/* 0C7624 800C6A24 AFAB0014 */  sw    $t3, 0x14($sp)
/* 0C7628 800C6A28 3484F40A */  ori   $a0, (0x0100F40A & 0xFFFF) # ori $a0, $a0, 0xf40a
/* 0C762C 800C6A2C 00493821 */  addu  $a3, $v0, $t1
/* 0C7630 800C6A30 AFAA0010 */  sw    $t2, 0x10($sp)
/* 0C7634 800C6A34 0C031052 */  jal   play_sound
/* 0C7638 800C6A38 02002825 */   move  $a1, $s0
/* 0C763C 800C6A3C 3C0C0100 */  lui   $t4, (0x0100F40A >> 16) # lui $t4, 0x100
/* 0C7640 800C6A40 358CF40A */  ori   $t4, (0x0100F40A & 0xFFFF) # ori $t4, $t4, 0xf40a
/* 0C7644 800C6A44 AE2C0000 */  sw    $t4, ($s1)
/* 0C7648 800C6A48 1000018D */  b     .L800C7080
/* 0C764C 800C6A4C 8E430000 */   lw    $v1, ($s2)
glabel L800C6A50
/* 0C7650 800C6A50 3C0E800F */  lui   $t6, %hi(D_800E9EF4) # $t6, 0x800f
/* 0C7654 800C6A54 25CE9EF4 */  addiu $t6, %lo(D_800E9EF4) # addiu $t6, $t6, -0x610c
/* 0C7658 800C6A58 3C0D800F */  lui   $t5, %hi(D_800E9F14) # $t5, 0x800f
/* 0C765C 800C6A5C 25AD9F14 */  addiu $t5, %lo(D_800E9F14) # addiu $t5, $t5, -0x60ec
/* 0C7660 800C6A60 004E7821 */  addu  $t7, $v0, $t6
/* 0C7664 800C6A64 3C040100 */  lui   $a0, (0x0100F01E >> 16) # lui $a0, 0x100
/* 0C7668 800C6A68 26180014 */  addiu $t8, $s0, 0x14
/* 0C766C 800C6A6C AFB80014 */  sw    $t8, 0x14($sp)
/* 0C7670 800C6A70 3484F01E */  ori   $a0, (0x0100F01E & 0xFFFF) # ori $a0, $a0, 0xf01e
/* 0C7674 800C6A74 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0C7678 800C6A78 004D3821 */  addu  $a3, $v0, $t5
/* 0C767C 800C6A7C 0C031052 */  jal   play_sound
/* 0C7680 800C6A80 02002825 */   move  $a1, $s0
/* 0C7684 800C6A84 3C190100 */  lui   $t9, (0x0100F01E >> 16) # lui $t9, 0x100
/* 0C7688 800C6A88 3739F01E */  ori   $t9, (0x0100F01E & 0xFFFF) # ori $t9, $t9, 0xf01e
/* 0C768C 800C6A8C AE390000 */  sw    $t9, ($s1)
/* 0C7690 800C6A90 1000017B */  b     .L800C7080
/* 0C7694 800C6A94 8E430000 */   lw    $v1, ($s2)
glabel L800C6A98
/* 0C7698 800C6A98 3C08800F */  lui   $t0, %hi(D_800E9F14) # $t0, 0x800f
/* 0C769C 800C6A9C 3C09800F */  lui   $t1, %hi(D_800EA1D4) # $t1, 0x800f
/* 0C76A0 800C6AA0 2529A1D4 */  addiu $t1, %lo(D_800EA1D4) # addiu $t1, $t1, -0x5e2c
/* 0C76A4 800C6AA4 25089F14 */  addiu $t0, %lo(D_800E9F14) # addiu $t0, $t0, -0x60ec
/* 0C76A8 800C6AA8 3C040100 */  lui   $a0, (0x0100F01F >> 16) # lui $a0, 0x100
/* 0C76AC 800C6AAC 260A0014 */  addiu $t2, $s0, 0x14
/* 0C76B0 800C6AB0 AFAA0014 */  sw    $t2, 0x14($sp)
/* 0C76B4 800C6AB4 3484F01F */  ori   $a0, (0x0100F01F & 0xFFFF) # ori $a0, $a0, 0xf01f
/* 0C76B8 800C6AB8 00483821 */  addu  $a3, $v0, $t0
/* 0C76BC 800C6ABC AFA90010 */  sw    $t1, 0x10($sp)
/* 0C76C0 800C6AC0 0C031052 */  jal   play_sound
/* 0C76C4 800C6AC4 02002825 */   move  $a1, $s0
/* 0C76C8 800C6AC8 3C0B0100 */  lui   $t3, (0x0100F01F >> 16) # lui $t3, 0x100
/* 0C76CC 800C6ACC 356BF01F */  ori   $t3, (0x0100F01F & 0xFFFF) # ori $t3, $t3, 0xf01f
/* 0C76D0 800C6AD0 AE2B0000 */  sw    $t3, ($s1)
/* 0C76D4 800C6AD4 1000016A */  b     .L800C7080
/* 0C76D8 800C6AD8 8E430000 */   lw    $v1, ($s2)
glabel L800C6ADC
/* 0C76DC 800C6ADC 3C0C800F */  lui   $t4, %hi(D_800E9F14) # $t4, 0x800f
/* 0C76E0 800C6AE0 3C0D800F */  lui   $t5, %hi(D_800EA1D4) # $t5, 0x800f
/* 0C76E4 800C6AE4 25ADA1D4 */  addiu $t5, %lo(D_800EA1D4) # addiu $t5, $t5, -0x5e2c
/* 0C76E8 800C6AE8 258C9F14 */  addiu $t4, %lo(D_800E9F14) # addiu $t4, $t4, -0x60ec
/* 0C76EC 800C6AEC 3C040100 */  lui   $a0, (0x0100F021 >> 16) # lui $a0, 0x100
/* 0C76F0 800C6AF0 260E0014 */  addiu $t6, $s0, 0x14
/* 0C76F4 800C6AF4 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0C76F8 800C6AF8 3484F021 */  ori   $a0, (0x0100F021 & 0xFFFF) # ori $a0, $a0, 0xf021
/* 0C76FC 800C6AFC 004C3821 */  addu  $a3, $v0, $t4
/* 0C7700 800C6B00 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0C7704 800C6B04 0C031052 */  jal   play_sound
/* 0C7708 800C6B08 02002825 */   move  $a1, $s0
/* 0C770C 800C6B0C 3C0F0100 */  lui   $t7, (0x0100F021 >> 16) # lui $t7, 0x100
/* 0C7710 800C6B10 35EFF021 */  ori   $t7, (0x0100F021 & 0xFFFF) # ori $t7, $t7, 0xf021
/* 0C7714 800C6B14 AE2F0000 */  sw    $t7, ($s1)
/* 0C7718 800C6B18 10000159 */  b     .L800C7080
/* 0C771C 800C6B1C 8E430000 */   lw    $v1, ($s2)
glabel L800C6B20
/* 0C7720 800C6B20 3C18800F */  lui   $t8, %hi(D_800E9F14) # $t8, 0x800f
/* 0C7724 800C6B24 3C19800F */  lui   $t9, %hi(D_800EA1D4) # $t9, 0x800f
/* 0C7728 800C6B28 2739A1D4 */  addiu $t9, %lo(D_800EA1D4) # addiu $t9, $t9, -0x5e2c
/* 0C772C 800C6B2C 27189F14 */  addiu $t8, %lo(D_800E9F14) # addiu $t8, $t8, -0x60ec
/* 0C7730 800C6B30 3C040100 */  lui   $a0, (0x0100F027 >> 16) # lui $a0, 0x100
/* 0C7734 800C6B34 26080014 */  addiu $t0, $s0, 0x14
/* 0C7738 800C6B38 AFA80014 */  sw    $t0, 0x14($sp)
/* 0C773C 800C6B3C 3484F027 */  ori   $a0, (0x0100F027 & 0xFFFF) # ori $a0, $a0, 0xf027
/* 0C7740 800C6B40 00583821 */  addu  $a3, $v0, $t8
/* 0C7744 800C6B44 AFB90010 */  sw    $t9, 0x10($sp)
/* 0C7748 800C6B48 0C031052 */  jal   play_sound
/* 0C774C 800C6B4C 02002825 */   move  $a1, $s0
/* 0C7750 800C6B50 3C090100 */  lui   $t1, (0x0100F027 >> 16) # lui $t1, 0x100
/* 0C7754 800C6B54 3529F027 */  ori   $t1, (0x0100F027 & 0xFFFF) # ori $t1, $t1, 0xf027
/* 0C7758 800C6B58 AE290000 */  sw    $t1, ($s1)
/* 0C775C 800C6B5C 10000148 */  b     .L800C7080
/* 0C7760 800C6B60 8E430000 */   lw    $v1, ($s2)
glabel L800C6B64
/* 0C7764 800C6B64 3C0A800F */  lui   $t2, %hi(D_800E9F14) # $t2, 0x800f
/* 0C7768 800C6B68 3C0B800F */  lui   $t3, %hi(D_800EA1D4) # $t3, 0x800f
/* 0C776C 800C6B6C 256BA1D4 */  addiu $t3, %lo(D_800EA1D4) # addiu $t3, $t3, -0x5e2c
/* 0C7770 800C6B70 254A9F14 */  addiu $t2, %lo(D_800E9F14) # addiu $t2, $t2, -0x60ec
/* 0C7774 800C6B74 3C040100 */  lui   $a0, (0x0100F020 >> 16) # lui $a0, 0x100
/* 0C7778 800C6B78 260C0014 */  addiu $t4, $s0, 0x14
/* 0C777C 800C6B7C AFAC0014 */  sw    $t4, 0x14($sp)
/* 0C7780 800C6B80 3484F020 */  ori   $a0, (0x0100F020 & 0xFFFF) # ori $a0, $a0, 0xf020
/* 0C7784 800C6B84 004A3821 */  addu  $a3, $v0, $t2
/* 0C7788 800C6B88 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0C778C 800C6B8C 0C031052 */  jal   play_sound
/* 0C7790 800C6B90 02002825 */   move  $a1, $s0
/* 0C7794 800C6B94 3C0D0100 */  lui   $t5, (0x0100F020 >> 16) # lui $t5, 0x100
/* 0C7798 800C6B98 35ADF020 */  ori   $t5, (0x0100F020 & 0xFFFF) # ori $t5, $t5, 0xf020
/* 0C779C 800C6B9C AE2D0000 */  sw    $t5, ($s1)
/* 0C77A0 800C6BA0 10000137 */  b     .L800C7080
/* 0C77A4 800C6BA4 8E430000 */   lw    $v1, ($s2)
glabel L800C6BA8
/* 0C77A8 800C6BA8 3C0E800F */  lui   $t6, %hi(D_800E9F14) # $t6, 0x800f
/* 0C77AC 800C6BAC 3C0F800F */  lui   $t7, %hi(D_800EA1D4) # $t7, 0x800f
/* 0C77B0 800C6BB0 25EFA1D4 */  addiu $t7, %lo(D_800EA1D4) # addiu $t7, $t7, -0x5e2c
/* 0C77B4 800C6BB4 25CE9F14 */  addiu $t6, %lo(D_800E9F14) # addiu $t6, $t6, -0x60ec
/* 0C77B8 800C6BB8 3C040100 */  lui   $a0, (0x0100F023 >> 16) # lui $a0, 0x100
/* 0C77BC 800C6BBC 26180014 */  addiu $t8, $s0, 0x14
/* 0C77C0 800C6BC0 AFB80014 */  sw    $t8, 0x14($sp)
/* 0C77C4 800C6BC4 3484F023 */  ori   $a0, (0x0100F023 & 0xFFFF) # ori $a0, $a0, 0xf023
/* 0C77C8 800C6BC8 004E3821 */  addu  $a3, $v0, $t6
/* 0C77CC 800C6BCC AFAF0010 */  sw    $t7, 0x10($sp)
/* 0C77D0 800C6BD0 0C031052 */  jal   play_sound
/* 0C77D4 800C6BD4 02002825 */   move  $a1, $s0
/* 0C77D8 800C6BD8 3C190100 */  lui   $t9, (0x0100F023 >> 16) # lui $t9, 0x100
/* 0C77DC 800C6BDC 3739F023 */  ori   $t9, (0x0100F023 & 0xFFFF) # ori $t9, $t9, 0xf023
/* 0C77E0 800C6BE0 AE390000 */  sw    $t9, ($s1)
/* 0C77E4 800C6BE4 10000126 */  b     .L800C7080
/* 0C77E8 800C6BE8 8E430000 */   lw    $v1, ($s2)
glabel L800C6BEC
/* 0C77EC 800C6BEC 3C08800F */  lui   $t0, %hi(D_800E9F14) # $t0, 0x800f
/* 0C77F0 800C6BF0 3C09800F */  lui   $t1, %hi(D_800EA1D4) # $t1, 0x800f
/* 0C77F4 800C6BF4 2529A1D4 */  addiu $t1, %lo(D_800EA1D4) # addiu $t1, $t1, -0x5e2c
/* 0C77F8 800C6BF8 25089F14 */  addiu $t0, %lo(D_800E9F14) # addiu $t0, $t0, -0x60ec
/* 0C77FC 800C6BFC 3C040100 */  lui   $a0, (0x01008046 >> 16) # lui $a0, 0x100
/* 0C7800 800C6C00 260A0014 */  addiu $t2, $s0, 0x14
/* 0C7804 800C6C04 AFAA0014 */  sw    $t2, 0x14($sp)
/* 0C7808 800C6C08 34848046 */  ori   $a0, (0x01008046 & 0xFFFF) # ori $a0, $a0, 0x8046
/* 0C780C 800C6C0C 00483821 */  addu  $a3, $v0, $t0
/* 0C7810 800C6C10 AFA90010 */  sw    $t1, 0x10($sp)
/* 0C7814 800C6C14 0C031052 */  jal   play_sound
/* 0C7818 800C6C18 02002825 */   move  $a1, $s0
/* 0C781C 800C6C1C 3C0B0100 */  lui   $t3, (0x01008046 >> 16) # lui $t3, 0x100
/* 0C7820 800C6C20 356B8046 */  ori   $t3, (0x01008046 & 0xFFFF) # ori $t3, $t3, 0x8046
/* 0C7824 800C6C24 AE2B0000 */  sw    $t3, ($s1)
/* 0C7828 800C6C28 10000115 */  b     .L800C7080
/* 0C782C 800C6C2C 8E430000 */   lw    $v1, ($s2)
glabel L800C6C30
/* 0C7830 800C6C30 3C0C800F */  lui   $t4, %hi(D_800E9F14) # $t4, 0x800f
/* 0C7834 800C6C34 3C0D800F */  lui   $t5, %hi(D_800EA1D4) # $t5, 0x800f
/* 0C7838 800C6C38 25ADA1D4 */  addiu $t5, %lo(D_800EA1D4) # addiu $t5, $t5, -0x5e2c
/* 0C783C 800C6C3C 258C9F14 */  addiu $t4, %lo(D_800E9F14) # addiu $t4, $t4, -0x60ec
/* 0C7840 800C6C40 3C040100 */  lui   $a0, (0x0100F025 >> 16) # lui $a0, 0x100
/* 0C7844 800C6C44 260E0014 */  addiu $t6, $s0, 0x14
/* 0C7848 800C6C48 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0C784C 800C6C4C 3484F025 */  ori   $a0, (0x0100F025 & 0xFFFF) # ori $a0, $a0, 0xf025
/* 0C7850 800C6C50 004C3821 */  addu  $a3, $v0, $t4
/* 0C7854 800C6C54 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0C7858 800C6C58 0C031052 */  jal   play_sound
/* 0C785C 800C6C5C 02002825 */   move  $a1, $s0
/* 0C7860 800C6C60 3C0F0100 */  lui   $t7, (0x0100F025 >> 16) # lui $t7, 0x100
/* 0C7864 800C6C64 35EFF025 */  ori   $t7, (0x0100F025 & 0xFFFF) # ori $t7, $t7, 0xf025
/* 0C7868 800C6C68 AE2F0000 */  sw    $t7, ($s1)
/* 0C786C 800C6C6C 10000104 */  b     .L800C7080
/* 0C7870 800C6C70 8E430000 */   lw    $v1, ($s2)
glabel L800C6C74
/* 0C7874 800C6C74 3C18800F */  lui   $t8, %hi(D_800E9EF4) # $t8, 0x800f
/* 0C7878 800C6C78 27189EF4 */  addiu $t8, %lo(D_800E9EF4) # addiu $t8, $t8, -0x610c
/* 0C787C 800C6C7C 0058C821 */  addu  $t9, $v0, $t8
/* 0C7880 800C6C80 3C040100 */  lui   $a0, (0x0100F00B >> 16) # lui $a0, 0x100
/* 0C7884 800C6C84 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7888 800C6C88 26080014 */  addiu $t0, $s0, 0x14
/* 0C788C 800C6C8C AFA80014 */  sw    $t0, 0x14($sp)
/* 0C7890 800C6C90 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7894 800C6C94 3484F00B */  ori   $a0, (0x0100F00B & 0xFFFF) # ori $a0, $a0, 0xf00b
/* 0C7898 800C6C98 AFB90010 */  sw    $t9, 0x10($sp)
/* 0C789C 800C6C9C 0C031052 */  jal   play_sound
/* 0C78A0 800C6CA0 02002825 */   move  $a1, $s0
/* 0C78A4 800C6CA4 3C090100 */  lui   $t1, (0x0100F00B >> 16) # lui $t1, 0x100
/* 0C78A8 800C6CA8 3529F00B */  ori   $t1, (0x0100F00B & 0xFFFF) # ori $t1, $t1, 0xf00b
/* 0C78AC 800C6CAC AE290000 */  sw    $t1, ($s1)
/* 0C78B0 800C6CB0 100000F3 */  b     .L800C7080
/* 0C78B4 800C6CB4 8E430000 */   lw    $v1, ($s2)
glabel L800C6CB8
/* 0C78B8 800C6CB8 3C0A800F */  lui   $t2, %hi(D_800E9EF4) # $t2, 0x800f
/* 0C78BC 800C6CBC 254A9EF4 */  addiu $t2, %lo(D_800E9EF4) # addiu $t2, $t2, -0x610c
/* 0C78C0 800C6CC0 004A5821 */  addu  $t3, $v0, $t2
/* 0C78C4 800C6CC4 3C040100 */  lui   $a0, (0x0100F00C >> 16) # lui $a0, 0x100
/* 0C78C8 800C6CC8 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C78CC 800C6CCC 260C0014 */  addiu $t4, $s0, 0x14
/* 0C78D0 800C6CD0 AFAC0014 */  sw    $t4, 0x14($sp)
/* 0C78D4 800C6CD4 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C78D8 800C6CD8 3484F00C */  ori   $a0, (0x0100F00C & 0xFFFF) # ori $a0, $a0, 0xf00c
/* 0C78DC 800C6CDC AFAB0010 */  sw    $t3, 0x10($sp)
/* 0C78E0 800C6CE0 0C031052 */  jal   play_sound
/* 0C78E4 800C6CE4 02002825 */   move  $a1, $s0
/* 0C78E8 800C6CE8 3C0D0100 */  lui   $t5, (0x0100F00C >> 16) # lui $t5, 0x100
/* 0C78EC 800C6CEC 35ADF00C */  ori   $t5, (0x0100F00C & 0xFFFF) # ori $t5, $t5, 0xf00c
/* 0C78F0 800C6CF0 AE2D0000 */  sw    $t5, ($s1)
/* 0C78F4 800C6CF4 100000E2 */  b     .L800C7080
/* 0C78F8 800C6CF8 8E430000 */   lw    $v1, ($s2)
glabel L800C6CFC
/* 0C78FC 800C6CFC 3C0E800F */  lui   $t6, %hi(D_800E9EF4) # $t6, 0x800f
/* 0C7900 800C6D00 25CE9EF4 */  addiu $t6, %lo(D_800E9EF4) # addiu $t6, $t6, -0x610c
/* 0C7904 800C6D04 004E7821 */  addu  $t7, $v0, $t6
/* 0C7908 800C6D08 3C040100 */  lui   $a0, (0x0100F00D >> 16) # lui $a0, 0x100
/* 0C790C 800C6D0C 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7910 800C6D10 26180014 */  addiu $t8, $s0, 0x14
/* 0C7914 800C6D14 AFB80014 */  sw    $t8, 0x14($sp)
/* 0C7918 800C6D18 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C791C 800C6D1C 3484F00D */  ori   $a0, (0x0100F00D & 0xFFFF) # ori $a0, $a0, 0xf00d
/* 0C7920 800C6D20 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0C7924 800C6D24 0C031052 */  jal   play_sound
/* 0C7928 800C6D28 02002825 */   move  $a1, $s0
/* 0C792C 800C6D2C 3C190100 */  lui   $t9, (0x0100F00D >> 16) # lui $t9, 0x100
/* 0C7930 800C6D30 3739F00D */  ori   $t9, (0x0100F00D & 0xFFFF) # ori $t9, $t9, 0xf00d
/* 0C7934 800C6D34 AE390000 */  sw    $t9, ($s1)
/* 0C7938 800C6D38 100000D1 */  b     .L800C7080
/* 0C793C 800C6D3C 8E430000 */   lw    $v1, ($s2)
glabel L800C6D40
/* 0C7940 800C6D40 3C08800F */  lui   $t0, %hi(D_800E9EF4) # $t0, 0x800f
/* 0C7944 800C6D44 25089EF4 */  addiu $t0, %lo(D_800E9EF4) # addiu $t0, $t0, -0x610c
/* 0C7948 800C6D48 00484821 */  addu  $t1, $v0, $t0
/* 0C794C 800C6D4C 3C040100 */  lui   $a0, (0x0100F00E >> 16) # lui $a0, 0x100
/* 0C7950 800C6D50 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7954 800C6D54 260A0014 */  addiu $t2, $s0, 0x14
/* 0C7958 800C6D58 AFAA0014 */  sw    $t2, 0x14($sp)
/* 0C795C 800C6D5C 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7960 800C6D60 3484F00E */  ori   $a0, (0x0100F00E & 0xFFFF) # ori $a0, $a0, 0xf00e
/* 0C7964 800C6D64 AFA90010 */  sw    $t1, 0x10($sp)
/* 0C7968 800C6D68 0C031052 */  jal   play_sound
/* 0C796C 800C6D6C 02002825 */   move  $a1, $s0
/* 0C7970 800C6D70 3C0B0100 */  lui   $t3, (0x0100F00E >> 16) # lui $t3, 0x100
/* 0C7974 800C6D74 356BF00E */  ori   $t3, (0x0100F00E & 0xFFFF) # ori $t3, $t3, 0xf00e
/* 0C7978 800C6D78 AE2B0000 */  sw    $t3, ($s1)
/* 0C797C 800C6D7C 100000C0 */  b     .L800C7080
/* 0C7980 800C6D80 8E430000 */   lw    $v1, ($s2)
glabel L800C6D84
/* 0C7984 800C6D84 3C0C800F */  lui   $t4, %hi(D_800E9EF4) # $t4, 0x800f
/* 0C7988 800C6D88 258C9EF4 */  addiu $t4, %lo(D_800E9EF4) # addiu $t4, $t4, -0x610c
/* 0C798C 800C6D8C 004C6821 */  addu  $t5, $v0, $t4
/* 0C7990 800C6D90 3C040100 */  lui   $a0, (0x0100F00F >> 16) # lui $a0, 0x100
/* 0C7994 800C6D94 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7998 800C6D98 260E0014 */  addiu $t6, $s0, 0x14
/* 0C799C 800C6D9C AFAE0014 */  sw    $t6, 0x14($sp)
/* 0C79A0 800C6DA0 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C79A4 800C6DA4 3484F00F */  ori   $a0, (0x0100F00F & 0xFFFF) # ori $a0, $a0, 0xf00f
/* 0C79A8 800C6DA8 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0C79AC 800C6DAC 0C031052 */  jal   play_sound
/* 0C79B0 800C6DB0 02002825 */   move  $a1, $s0
/* 0C79B4 800C6DB4 3C0F0100 */  lui   $t7, (0x0100F00F >> 16) # lui $t7, 0x100
/* 0C79B8 800C6DB8 35EFF00F */  ori   $t7, (0x0100F00F & 0xFFFF) # ori $t7, $t7, 0xf00f
/* 0C79BC 800C6DBC AE2F0000 */  sw    $t7, ($s1)
/* 0C79C0 800C6DC0 100000AF */  b     .L800C7080
/* 0C79C4 800C6DC4 8E430000 */   lw    $v1, ($s2)
glabel L800C6DC8
/* 0C79C8 800C6DC8 3C18800F */  lui   $t8, %hi(D_800E9EF4) # $t8, 0x800f
/* 0C79CC 800C6DCC 27189EF4 */  addiu $t8, %lo(D_800E9EF4) # addiu $t8, $t8, -0x610c
/* 0C79D0 800C6DD0 0058C821 */  addu  $t9, $v0, $t8
/* 0C79D4 800C6DD4 3C040100 */  lui   $a0, (0x0100F010 >> 16) # lui $a0, 0x100
/* 0C79D8 800C6DD8 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C79DC 800C6DDC 26080014 */  addiu $t0, $s0, 0x14
/* 0C79E0 800C6DE0 AFA80014 */  sw    $t0, 0x14($sp)
/* 0C79E4 800C6DE4 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C79E8 800C6DE8 3484F010 */  ori   $a0, (0x0100F010 & 0xFFFF) # ori $a0, $a0, 0xf010
/* 0C79EC 800C6DEC AFB90010 */  sw    $t9, 0x10($sp)
/* 0C79F0 800C6DF0 0C031052 */  jal   play_sound
/* 0C79F4 800C6DF4 02002825 */   move  $a1, $s0
/* 0C79F8 800C6DF8 3C090100 */  lui   $t1, (0x0100F010 >> 16) # lui $t1, 0x100
/* 0C79FC 800C6DFC 3529F010 */  ori   $t1, (0x0100F010 & 0xFFFF) # ori $t1, $t1, 0xf010
/* 0C7A00 800C6E00 AE290000 */  sw    $t1, ($s1)
/* 0C7A04 800C6E04 1000009E */  b     .L800C7080
/* 0C7A08 800C6E08 8E430000 */   lw    $v1, ($s2)
glabel L800C6E0C
/* 0C7A0C 800C6E0C 3C0A800F */  lui   $t2, %hi(D_800E9EF4) # $t2, 0x800f
/* 0C7A10 800C6E10 254A9EF4 */  addiu $t2, %lo(D_800E9EF4) # addiu $t2, $t2, -0x610c
/* 0C7A14 800C6E14 004A5821 */  addu  $t3, $v0, $t2
/* 0C7A18 800C6E18 3C040100 */  lui   $a0, (0x0100F011 >> 16) # lui $a0, 0x100
/* 0C7A1C 800C6E1C 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7A20 800C6E20 260C0014 */  addiu $t4, $s0, 0x14
/* 0C7A24 800C6E24 AFAC0014 */  sw    $t4, 0x14($sp)
/* 0C7A28 800C6E28 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7A2C 800C6E2C 3484F011 */  ori   $a0, (0x0100F011 & 0xFFFF) # ori $a0, $a0, 0xf011
/* 0C7A30 800C6E30 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0C7A34 800C6E34 0C031052 */  jal   play_sound
/* 0C7A38 800C6E38 02002825 */   move  $a1, $s0
/* 0C7A3C 800C6E3C 3C0D0100 */  lui   $t5, (0x0100F011 >> 16) # lui $t5, 0x100
/* 0C7A40 800C6E40 35ADF011 */  ori   $t5, (0x0100F011 & 0xFFFF) # ori $t5, $t5, 0xf011
/* 0C7A44 800C6E44 AE2D0000 */  sw    $t5, ($s1)
/* 0C7A48 800C6E48 1000008D */  b     .L800C7080
/* 0C7A4C 800C6E4C 8E430000 */   lw    $v1, ($s2)
glabel L800C6E50
/* 0C7A50 800C6E50 3C0E800F */  lui   $t6, %hi(D_800E9EF4) # $t6, 0x800f
/* 0C7A54 800C6E54 25CE9EF4 */  addiu $t6, %lo(D_800E9EF4) # addiu $t6, $t6, -0x610c
/* 0C7A58 800C6E58 004E7821 */  addu  $t7, $v0, $t6
/* 0C7A5C 800C6E5C 3C040100 */  lui   $a0, (0x0100F012 >> 16) # lui $a0, 0x100
/* 0C7A60 800C6E60 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7A64 800C6E64 26180014 */  addiu $t8, $s0, 0x14
/* 0C7A68 800C6E68 AFB80014 */  sw    $t8, 0x14($sp)
/* 0C7A6C 800C6E6C 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7A70 800C6E70 3484F012 */  ori   $a0, (0x0100F012 & 0xFFFF) # ori $a0, $a0, 0xf012
/* 0C7A74 800C6E74 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0C7A78 800C6E78 0C031052 */  jal   play_sound
/* 0C7A7C 800C6E7C 02002825 */   move  $a1, $s0
/* 0C7A80 800C6E80 3C190100 */  lui   $t9, (0x0100F012 >> 16) # lui $t9, 0x100
/* 0C7A84 800C6E84 3739F012 */  ori   $t9, (0x0100F012 & 0xFFFF) # ori $t9, $t9, 0xf012
/* 0C7A88 800C6E88 AE390000 */  sw    $t9, ($s1)
/* 0C7A8C 800C6E8C 1000007C */  b     .L800C7080
/* 0C7A90 800C6E90 8E430000 */   lw    $v1, ($s2)
glabel L800C6E94
/* 0C7A94 800C6E94 3C08800F */  lui   $t0, %hi(D_800E9EF4) # $t0, 0x800f
/* 0C7A98 800C6E98 25089EF4 */  addiu $t0, %lo(D_800E9EF4) # addiu $t0, $t0, -0x610c
/* 0C7A9C 800C6E9C 00484821 */  addu  $t1, $v0, $t0
/* 0C7AA0 800C6EA0 3C040100 */  lui   $a0, (0x0100F013 >> 16) # lui $a0, 0x100
/* 0C7AA4 800C6EA4 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7AA8 800C6EA8 260A0014 */  addiu $t2, $s0, 0x14
/* 0C7AAC 800C6EAC AFAA0014 */  sw    $t2, 0x14($sp)
/* 0C7AB0 800C6EB0 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7AB4 800C6EB4 3484F013 */  ori   $a0, (0x0100F013 & 0xFFFF) # ori $a0, $a0, 0xf013
/* 0C7AB8 800C6EB8 AFA90010 */  sw    $t1, 0x10($sp)
/* 0C7ABC 800C6EBC 0C031052 */  jal   play_sound
/* 0C7AC0 800C6EC0 02002825 */   move  $a1, $s0
/* 0C7AC4 800C6EC4 3C0B0100 */  lui   $t3, (0x0100F013 >> 16) # lui $t3, 0x100
/* 0C7AC8 800C6EC8 356BF013 */  ori   $t3, (0x0100F013 & 0xFFFF) # ori $t3, $t3, 0xf013
/* 0C7ACC 800C6ECC AE2B0000 */  sw    $t3, ($s1)
/* 0C7AD0 800C6ED0 1000006B */  b     .L800C7080
/* 0C7AD4 800C6ED4 8E430000 */   lw    $v1, ($s2)
glabel L800C6ED8
/* 0C7AD8 800C6ED8 3C0C800F */  lui   $t4, %hi(D_800E9EF4) # $t4, 0x800f
/* 0C7ADC 800C6EDC 258C9EF4 */  addiu $t4, %lo(D_800E9EF4) # addiu $t4, $t4, -0x610c
/* 0C7AE0 800C6EE0 004C6821 */  addu  $t5, $v0, $t4
/* 0C7AE4 800C6EE4 3C040100 */  lui   $a0, (0x0100F048 >> 16) # lui $a0, 0x100
/* 0C7AE8 800C6EE8 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7AEC 800C6EEC 260E0014 */  addiu $t6, $s0, 0x14
/* 0C7AF0 800C6EF0 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0C7AF4 800C6EF4 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7AF8 800C6EF8 3484F048 */  ori   $a0, (0x0100F048 & 0xFFFF) # ori $a0, $a0, 0xf048
/* 0C7AFC 800C6EFC AFAD0010 */  sw    $t5, 0x10($sp)
/* 0C7B00 800C6F00 0C031052 */  jal   play_sound
/* 0C7B04 800C6F04 02002825 */   move  $a1, $s0
/* 0C7B08 800C6F08 3C0F0100 */  lui   $t7, (0x0100F048 >> 16) # lui $t7, 0x100
/* 0C7B0C 800C6F0C 35EFF048 */  ori   $t7, (0x0100F048 & 0xFFFF) # ori $t7, $t7, 0xf048
/* 0C7B10 800C6F10 AE2F0000 */  sw    $t7, ($s1)
/* 0C7B14 800C6F14 1000005A */  b     .L800C7080
/* 0C7B18 800C6F18 8E430000 */   lw    $v1, ($s2)
glabel L800C6F1C
/* 0C7B1C 800C6F1C 3C18800F */  lui   $t8, %hi(D_800E9EF4) # $t8, 0x800f
/* 0C7B20 800C6F20 27189EF4 */  addiu $t8, %lo(D_800E9EF4) # addiu $t8, $t8, -0x610c
/* 0C7B24 800C6F24 0058C821 */  addu  $t9, $v0, $t8
/* 0C7B28 800C6F28 3C040100 */  lui   $a0, (0x0100F049 >> 16) # lui $a0, 0x100
/* 0C7B2C 800C6F2C 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7B30 800C6F30 26080014 */  addiu $t0, $s0, 0x14
/* 0C7B34 800C6F34 AFA80014 */  sw    $t0, 0x14($sp)
/* 0C7B38 800C6F38 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7B3C 800C6F3C 3484F049 */  ori   $a0, (0x0100F049 & 0xFFFF) # ori $a0, $a0, 0xf049
/* 0C7B40 800C6F40 AFB90010 */  sw    $t9, 0x10($sp)
/* 0C7B44 800C6F44 0C031052 */  jal   play_sound
/* 0C7B48 800C6F48 02002825 */   move  $a1, $s0
/* 0C7B4C 800C6F4C 3C090100 */  lui   $t1, (0x0100F049 >> 16) # lui $t1, 0x100
/* 0C7B50 800C6F50 3529F049 */  ori   $t1, (0x0100F049 & 0xFFFF) # ori $t1, $t1, 0xf049
/* 0C7B54 800C6F54 AE290000 */  sw    $t1, ($s1)
/* 0C7B58 800C6F58 10000049 */  b     .L800C7080
/* 0C7B5C 800C6F5C 8E430000 */   lw    $v1, ($s2)
glabel L800C6F60
/* 0C7B60 800C6F60 3C0A800F */  lui   $t2, %hi(D_800E9EF4) # $t2, 0x800f
/* 0C7B64 800C6F64 254A9EF4 */  addiu $t2, %lo(D_800E9EF4) # addiu $t2, $t2, -0x610c
/* 0C7B68 800C6F68 004A5821 */  addu  $t3, $v0, $t2
/* 0C7B6C 800C6F6C 3C040100 */  lui   $a0, (0x0100F04A >> 16) # lui $a0, 0x100
/* 0C7B70 800C6F70 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7B74 800C6F74 260C0014 */  addiu $t4, $s0, 0x14
/* 0C7B78 800C6F78 AFAC0014 */  sw    $t4, 0x14($sp)
/* 0C7B7C 800C6F7C 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7B80 800C6F80 3484F04A */  ori   $a0, (0x0100F04A & 0xFFFF) # ori $a0, $a0, 0xf04a
/* 0C7B84 800C6F84 AFAB0010 */  sw    $t3, 0x10($sp)
/* 0C7B88 800C6F88 0C031052 */  jal   play_sound
/* 0C7B8C 800C6F8C 02002825 */   move  $a1, $s0
/* 0C7B90 800C6F90 3C0D0100 */  lui   $t5, (0x0100F04A >> 16) # lui $t5, 0x100
/* 0C7B94 800C6F94 35ADF04A */  ori   $t5, (0x0100F04A & 0xFFFF) # ori $t5, $t5, 0xf04a
/* 0C7B98 800C6F98 AE2D0000 */  sw    $t5, ($s1)
/* 0C7B9C 800C6F9C 10000038 */  b     .L800C7080
/* 0C7BA0 800C6FA0 8E430000 */   lw    $v1, ($s2)
glabel L800C6FA4
/* 0C7BA4 800C6FA4 3C0E800F */  lui   $t6, %hi(D_800E9EF4) # $t6, 0x800f
/* 0C7BA8 800C6FA8 25CE9EF4 */  addiu $t6, %lo(D_800E9EF4) # addiu $t6, $t6, -0x610c
/* 0C7BAC 800C6FAC 004E7821 */  addu  $t7, $v0, $t6
/* 0C7BB0 800C6FB0 3C040100 */  lui   $a0, (0x0100F029 >> 16) # lui $a0, 0x100
/* 0C7BB4 800C6FB4 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7BB8 800C6FB8 26180014 */  addiu $t8, $s0, 0x14
/* 0C7BBC 800C6FBC AFB80014 */  sw    $t8, 0x14($sp)
/* 0C7BC0 800C6FC0 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7BC4 800C6FC4 3484F029 */  ori   $a0, (0x0100F029 & 0xFFFF) # ori $a0, $a0, 0xf029
/* 0C7BC8 800C6FC8 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0C7BCC 800C6FCC 0C031052 */  jal   play_sound
/* 0C7BD0 800C6FD0 02002825 */   move  $a1, $s0
/* 0C7BD4 800C6FD4 3C190100 */  lui   $t9, (0x0100F029 >> 16) # lui $t9, 0x100
/* 0C7BD8 800C6FD8 3739F029 */  ori   $t9, (0x0100F029 & 0xFFFF) # ori $t9, $t9, 0xf029
/* 0C7BDC 800C6FDC AE390000 */  sw    $t9, ($s1)
/* 0C7BE0 800C6FE0 10000027 */  b     .L800C7080
/* 0C7BE4 800C6FE4 8E430000 */   lw    $v1, ($s2)
glabel L800C6FE8
/* 0C7BE8 800C6FE8 3C08800F */  lui   $t0, %hi(D_800E9EF4) # $t0, 0x800f
/* 0C7BEC 800C6FEC 25089EF4 */  addiu $t0, %lo(D_800E9EF4) # addiu $t0, $t0, -0x610c
/* 0C7BF0 800C6FF0 00484821 */  addu  $t1, $v0, $t0
/* 0C7BF4 800C6FF4 3C040100 */  lui   $a0, (0x0100F02A >> 16) # lui $a0, 0x100
/* 0C7BF8 800C6FF8 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7BFC 800C6FFC 260A0014 */  addiu $t2, $s0, 0x14
/* 0C7C00 800C7000 AFAA0014 */  sw    $t2, 0x14($sp)
/* 0C7C04 800C7004 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7C08 800C7008 3484F02A */  ori   $a0, (0x0100F02A & 0xFFFF) # ori $a0, $a0, 0xf02a
/* 0C7C0C 800C700C AFA90010 */  sw    $t1, 0x10($sp)
/* 0C7C10 800C7010 0C031052 */  jal   play_sound
/* 0C7C14 800C7014 02002825 */   move  $a1, $s0
/* 0C7C18 800C7018 3C0B0100 */  lui   $t3, (0x0100F02A >> 16) # lui $t3, 0x100
/* 0C7C1C 800C701C 356BF02A */  ori   $t3, (0x0100F02A & 0xFFFF) # ori $t3, $t3, 0xf02a
/* 0C7C20 800C7020 AE2B0000 */  sw    $t3, ($s1)
/* 0C7C24 800C7024 10000016 */  b     .L800C7080
/* 0C7C28 800C7028 8E430000 */   lw    $v1, ($s2)
glabel L800C702C
/* 0C7C2C 800C702C 3C0C800F */  lui   $t4, %hi(D_800E9EF4) # $t4, 0x800f
/* 0C7C30 800C7030 258C9EF4 */  addiu $t4, %lo(D_800E9EF4) # addiu $t4, $t4, -0x610c
/* 0C7C34 800C7034 004C6821 */  addu  $t5, $v0, $t4
/* 0C7C38 800C7038 3C040100 */  lui   $a0, (0x0100F02B >> 16) # lui $a0, 0x100
/* 0C7C3C 800C703C 3C07800F */  lui   $a3, %hi(D_800EA1D4) # $a3, 0x800f
/* 0C7C40 800C7040 260E0014 */  addiu $t6, $s0, 0x14
/* 0C7C44 800C7044 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0C7C48 800C7048 24E7A1D4 */  addiu $a3, %lo(D_800EA1D4) # addiu $a3, $a3, -0x5e2c
/* 0C7C4C 800C704C 3484F02B */  ori   $a0, (0x0100F02B & 0xFFFF) # ori $a0, $a0, 0xf02b
/* 0C7C50 800C7050 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0C7C54 800C7054 0C031052 */  jal   play_sound
/* 0C7C58 800C7058 02002825 */   move  $a1, $s0
/* 0C7C5C 800C705C 3C0F0100 */  lui   $t7, (0x0100F02B >> 16) # lui $t7, 0x100
/* 0C7C60 800C7060 35EFF02B */  ori   $t7, (0x0100F02B & 0xFFFF) # ori $t7, $t7, 0xf02b
/* 0C7C64 800C7064 AE2F0000 */  sw    $t7, ($s1)
/* 0C7C68 800C7068 10000005 */  b     .L800C7080
/* 0C7C6C 800C706C 8E430000 */   lw    $v1, ($s2)
.L800C7070:
glabel L800C7070
/* 0C7C70 800C7070 02002025 */  move  $a0, $s0
/* 0C7C74 800C7074 0C03155E */  jal   func_800C5578
/* 0C7C78 800C7078 8E250000 */   lw    $a1, ($s1)
/* 0C7C7C 800C707C 8E430000 */  lw    $v1, ($s2)
.L800C7080:
/* 0C7C80 800C7080 8FD80040 */  lw    $t8, 0x40($fp)
/* 0C7C84 800C7084 AF030000 */  sw    $v1, ($t8)
.L800C7088:
/* 0C7C88 800C7088 8FDF003C */  lw    $ra, 0x3c($fp)
/* 0C7C8C 800C708C 03C0E825 */  move  $sp, $fp
/* 0C7C90 800C7090 8FD0002C */  lw    $s0, 0x2c($fp)
/* 0C7C94 800C7094 8FD10030 */  lw    $s1, 0x30($fp)
/* 0C7C98 800C7098 8FD20034 */  lw    $s2, 0x34($fp)
/* 0C7C9C 800C709C 8FDE0038 */  lw    $fp, 0x38($fp)
/* 0C7CA0 800C70A0 03E00008 */  jr    $ra
/* 0C7CA4 800C70A4 27BD0050 */   addiu $sp, $sp, 0x50
