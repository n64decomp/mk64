glabel func_800B65F4
/* 0B71F4 800B65F4 27BDFFC0 */  addiu $sp, $sp, -0x40
/* 0B71F8 800B65F8 AFB20024 */  sw    $s2, 0x24($sp)
/* 0B71FC 800B65FC 00809025 */  move  $s2, $a0
/* 0B7200 800B6600 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0B7204 800B6604 AFB30028 */  sw    $s3, 0x28($sp)
/* 0B7208 800B6608 AFB10020 */  sw    $s1, 0x20($sp)
/* 0B720C 800B660C AFB0001C */  sw    $s0, 0x1c($sp)
/* 0B7210 800B6610 10800006 */  beqz  $a0, .L800B662C
/* 0B7214 800B6614 AFA50044 */   sw    $a1, 0x44($sp)
/* 0B7218 800B6618 24010001 */  li    $at, 1
/* 0B721C 800B661C 50810004 */  beql  $a0, $at, .L800B6630
/* 0B7220 800B6620 00123900 */   sll   $a3, $s2, 4
/* 0B7224 800B6624 10000031 */  b     .L800B66EC
/* 0B7228 800B6628 2402FFFF */   li    $v0, -1
.L800B662C:
/* 0B722C 800B662C 00123900 */  sll   $a3, $s2, 4
.L800B6630:
/* 0B7230 800B6630 3C0F800E */  lui   $t7, %hi(D_800DC714) # $t7, 0x800e
/* 0B7234 800B6634 8DEFC714 */  lw    $t7, %lo(D_800DC714)($t7)
/* 0B7238 800B6638 00F23823 */  subu  $a3, $a3, $s2
/* 0B723C 800B663C 00073A80 */  sll   $a3, $a3, 0xa
/* 0B7240 800B6640 3C048019 */  lui   $a0, %hi(gControllerPak2FileHandle) # $a0, 0x8019
/* 0B7244 800B6644 3C058019 */  lui   $a1, %hi(gControllerPak2FileNo) # $a1, 0x8019
/* 0B7248 800B6648 240E3C00 */  li    $t6, 15360
/* 0B724C 800B664C AFAE0010 */  sw    $t6, 0x10($sp)
/* 0B7250 800B6650 8CA5EB88 */  lw    $a1, %lo(gControllerPak2FileNo)($a1)
/* 0B7254 800B6654 2484E8D0 */  addiu $a0, %lo(gControllerPak2FileHandle) # addiu $a0, $a0, -0x1730
/* 0B7258 800B6658 24E70100 */  addiu $a3, $a3, 0x100
/* 0B725C 800B665C 00003025 */  move  $a2, $zero
/* 0B7260 800B6660 0C0340F3 */  jal   osPfsReadWriteFile
/* 0B7264 800B6664 AFAF0014 */   sw    $t7, 0x14($sp)
/* 0B7268 800B6668 1440001F */  bnez  $v0, .L800B66E8
/* 0B726C 800B666C AFA20034 */   sw    $v0, 0x34($sp)
/* 0B7270 800B6670 3C188019 */  lui   $t8, %hi(D_8018D9C0) # $t8, 0x8019
/* 0B7274 800B6674 8F18D9C0 */  lw    $t8, %lo(D_8018D9C0)($t8)
/* 0B7278 800B6678 0012C9C0 */  sll   $t9, $s2, 7
/* 0B727C 800B667C 2412003C */  li    $s2, 60
/* 0B7280 800B6680 03199821 */  addu  $s3, $t8, $t9
/* 0B7284 800B6684 02608825 */  move  $s1, $s3
/* 0B7288 800B6688 00008025 */  move  $s0, $zero
.L800B668C:
/* 0B728C 800B668C 0C02D83A */  jal   func_800B60E8
/* 0B7290 800B6690 02002025 */   move  $a0, $s0
/* 0B7294 800B6694 92280007 */  lbu   $t0, 7($s1)
/* 0B7298 800B6698 26100001 */  addiu $s0, $s0, 1
/* 0B729C 800B669C 11020004 */  beq   $t0, $v0, .L800B66B0
/* 0B72A0 800B66A0 00000000 */   nop   
/* 0B72A4 800B66A4 A2600004 */  sb    $zero, 4($s3)
/* 0B72A8 800B66A8 10000010 */  b     .L800B66EC
/* 0B72AC 800B66AC 2402FFFE */   li    $v0, -2
.L800B66B0:
/* 0B72B0 800B66B0 1612FFF6 */  bne   $s0, $s2, .L800B668C
/* 0B72B4 800B66B4 26310001 */   addiu $s1, $s1, 1
/* 0B72B8 800B66B8 92690006 */  lbu   $t1, 6($s3)
/* 0B72BC 800B66BC 3C018016 */  lui   $at, %hi(D_80162DE0) # $at, 0x8016
/* 0B72C0 800B66C0 8FAC0044 */  lw    $t4, 0x44($sp)
/* 0B72C4 800B66C4 AC292DE0 */  sw    $t1, %lo(D_80162DE0)($at)
/* 0B72C8 800B66C8 8E6A0000 */  lw    $t2, ($s3)
/* 0B72CC 800B66CC 3C018016 */  lui   $at, %hi(D_80162DFC) # $at, 0x8016
/* 0B72D0 800B66D0 000C69C0 */  sll   $t5, $t4, 7
/* 0B72D4 800B66D4 AC2A2DFC */  sw    $t2, %lo(D_80162DFC)($at)
/* 0B72D8 800B66D8 826B0005 */  lb    $t3, 5($s3)
/* 0B72DC 800B66DC 3C018019 */  lui   $at, %hi((D_8018EE10 + 5)) # 0x8019
/* 0B72E0 800B66E0 002D0821 */  addu  $at, $at, $t5
/* 0B72E4 800B66E4 A02BEE15 */  sb    $t3, %lo((D_8018EE10 + 5))($at) # -0x11eb($at)
.L800B66E8:
/* 0B72E8 800B66E8 8FA20034 */  lw    $v0, 0x34($sp)
.L800B66EC:
/* 0B72EC 800B66EC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0B72F0 800B66F0 8FB0001C */  lw    $s0, 0x1c($sp)
/* 0B72F4 800B66F4 8FB10020 */  lw    $s1, 0x20($sp)
/* 0B72F8 800B66F8 8FB20024 */  lw    $s2, 0x24($sp)
/* 0B72FC 800B66FC 8FB30028 */  lw    $s3, 0x28($sp)
/* 0B7300 800B6700 03E00008 */  jr    $ra
/* 0B7304 800B6704 27BD0040 */   addiu $sp, $sp, 0x40
