glabel func_8004A630
/* 04B230 8004A630 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04B234 8004A634 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04B238 8004A638 AFB00018 */  sw    $s0, 0x18($sp)
/* 04B23C 8004A63C 00A08025 */  move  $s0, $a1
/* 04B240 8004A640 AFA40020 */  sw    $a0, 0x20($sp)
/* 04B244 8004A644 0C010649 */  jal   func_80041924
/* 04B248 8004A648 AFA60028 */   sw    $a2, 0x28($sp)
/* 04B24C 8004A64C 10400022 */  beqz  $v0, .L8004A6D8
/* 04B250 8004A650 3C048018 */   lui   $a0, %hi(D_80183E50) # $a0, 0x8018
/* 04B254 8004A654 C6040000 */  lwc1  $f4, ($s0)
/* 04B258 8004A658 24843E50 */  addiu $a0, %lo(D_80183E50) # addiu $a0, $a0, 0x3e50
/* 04B25C 8004A65C 8FAE0020 */  lw    $t6, 0x20($sp)
/* 04B260 8004A660 E4840000 */  swc1  $f4, ($a0)
/* 04B264 8004A664 44807000 */  mtc1  $zero, $f14
/* 04B268 8004A668 8E060008 */  lw    $a2, 8($s0)
/* 04B26C 8004A66C C60C0000 */  lwc1  $f12, ($s0)
/* 04B270 8004A670 0C0AAF8C */  jal   func_802ABE30
/* 04B274 8004A674 95C7000A */   lhu   $a3, 0xa($t6)
/* 04B278 8004A678 3C01800F */  lui   $at, %hi(D_800EE030)
/* 04B27C 8004A67C D428E030 */  ldc1  $f8, %lo(D_800EE030)($at)
/* 04B280 8004A680 460001A1 */  cvt.d.s $f6, $f0
/* 04B284 8004A684 3C048018 */  lui   $a0, %hi(D_80183E50) # $a0, 0x8018
/* 04B288 8004A688 46283280 */  add.d $f10, $f6, $f8
/* 04B28C 8004A68C 24843E50 */  addiu $a0, %lo(D_80183E50) # addiu $a0, $a0, 0x3e50
/* 04B290 8004A690 8FA50020 */  lw    $a1, 0x20($sp)
/* 04B294 8004A694 8FA60028 */  lw    $a2, 0x28($sp)
/* 04B298 8004A698 46205420 */  cvt.s.d $f16, $f10
/* 04B29C 8004A69C 24A50030 */  addiu $a1, $a1, 0x30
/* 04B2A0 8004A6A0 E4900004 */  swc1  $f16, 4($a0)
/* 04B2A4 8004A6A4 C6120008 */  lwc1  $f18, 8($s0)
/* 04B2A8 8004A6A8 0C010C14 */  jal   func_80043050
/* 04B2AC 8004A6AC E4920008 */   swc1  $f18, 8($a0)
/* 04B2B0 8004A6B0 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 04B2B4 8004A6B4 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 04B2B8 8004A6B8 8C830000 */  lw    $v1, ($a0)
/* 04B2BC 8004A6BC 3C190D00 */  lui   $t9, %hi(D_0D007B98) # $t9, 0xd00
/* 04B2C0 8004A6C0 27397B98 */  addiu $t9, %lo(D_0D007B98) # addiu $t9, $t9, 0x7b98
/* 04B2C4 8004A6C4 246F0008 */  addiu $t7, $v1, 8
/* 04B2C8 8004A6C8 AC8F0000 */  sw    $t7, ($a0)
/* 04B2CC 8004A6CC 3C180600 */  lui   $t8, 0x600
/* 04B2D0 8004A6D0 AC780000 */  sw    $t8, ($v1)
/* 04B2D4 8004A6D4 AC790004 */  sw    $t9, 4($v1)
.L8004A6D8:
/* 04B2D8 8004A6D8 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04B2DC 8004A6DC 8FB00018 */  lw    $s0, 0x18($sp)
/* 04B2E0 8004A6E0 27BD0020 */  addiu $sp, $sp, 0x20
/* 04B2E4 8004A6E4 03E00008 */  jr    $ra
/* 04B2E8 8004A6E8 00000000 */   nop   
