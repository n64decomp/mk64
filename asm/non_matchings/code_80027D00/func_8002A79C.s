glabel func_8002A79C
/* 02B39C 8002A79C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 02B3A0 8002A7A0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 02B3A4 8002A7A4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 02B3A8 8002A7A8 8C8200BC */  lw    $v0, 0xbc($a0)
/* 02B3AC 8002A7AC 00057600 */  sll   $t6, $a1, 0x18
/* 02B3B0 8002A7B0 000E7E03 */  sra   $t7, $t6, 0x18
/* 02B3B4 8002A7B4 24060100 */  li    $a2, 256
/* 02B3B8 8002A7B8 30430100 */  andi  $v1, $v0, 0x100
/* 02B3BC 8002A7BC 10C30025 */  beq   $a2, $v1, .L8002A854
/* 02B3C0 8002A7C0 01E02825 */   move  $a1, $t7
/* 02B3C4 8002A7C4 30580010 */  andi  $t8, $v0, 0x10
/* 02B3C8 8002A7C8 24010010 */  li    $at, 16
/* 02B3CC 8002A7CC 13010021 */  beq   $t8, $at, .L8002A854
/* 02B3D0 8002A7D0 00000000 */   nop   
/* 02B3D4 8002A7D4 8499022A */  lh    $t9, 0x22a($a0)
/* 02B3D8 8002A7D8 34480100 */  ori   $t0, $v0, 0x100
/* 02B3DC 8002A7DC 3C098016 */  lui   $t1, %hi(D_8015F890) # $t1, 0x8016
/* 02B3E0 8002A7E0 2B210002 */  slti  $at, $t9, 2
/* 02B3E4 8002A7E4 1420001B */  bnez  $at, .L8002A854
/* 02B3E8 8002A7E8 00000000 */   nop   
/* 02B3EC 8002A7EC AC8800BC */  sw    $t0, 0xbc($a0)
/* 02B3F0 8002A7F0 A480023A */  sh    $zero, 0x23a($a0)
/* 02B3F4 8002A7F4 A480022A */  sh    $zero, 0x22a($a0)
/* 02B3F8 8002A7F8 A4800228 */  sh    $zero, 0x228($a0)
/* 02B3FC 8002A7FC 9529F890 */  lhu   $t1, %lo(D_8015F890)($t1)
/* 02B400 8002A800 24010001 */  li    $at, 1
/* 02B404 8002A804 3C0C800E */  lui   $t4, %hi(D_800DC4DC) # $t4, 0x800e
/* 02B408 8002A808 1121000B */  beq   $t1, $at, .L8002A838
/* 02B40C 8002A80C 00000000 */   nop   
/* 02B410 8002A810 94820000 */  lhu   $v0, ($a0)
/* 02B414 8002A814 304A4000 */  andi  $t2, $v0, 0x4000
/* 02B418 8002A818 1140001E */  beqz  $t2, .L8002A894
/* 02B41C 8002A81C 304B0100 */   andi  $t3, $v0, 0x100
/* 02B420 8002A820 5560001D */  bnel  $t3, $zero, .L8002A898
/* 02B424 8002A824 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B428 8002A828 0C032494 */  jal   func_800C9250
/* 02B42C 8002A82C 31E400FF */   andi  $a0, $t7, 0xff
/* 02B430 8002A830 10000019 */  b     .L8002A898
/* 02B434 8002A834 8FBF0014 */   lw    $ra, 0x14($sp)
.L8002A838:
/* 02B438 8002A838 8D8CC4DC */  lw    $t4, %lo(D_800DC4DC)($t4)
/* 02B43C 8002A83C 548C0016 */  bnel  $a0, $t4, .L8002A898
/* 02B440 8002A840 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B444 8002A844 0C032494 */  jal   func_800C9250
/* 02B448 8002A848 30A400FF */   andi  $a0, $a1, 0xff
/* 02B44C 8002A84C 10000012 */  b     .L8002A898
/* 02B450 8002A850 8FBF0014 */   lw    $ra, 0x14($sp)
.L8002A854:
/* 02B454 8002A854 54C30010 */  bnel  $a2, $v1, .L8002A898
/* 02B458 8002A858 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B45C 8002A85C 848D023A */  lh    $t5, 0x23a($a0)
/* 02B460 8002A860 25AE0001 */  addiu $t6, $t5, 1
/* 02B464 8002A864 A48E023A */  sh    $t6, 0x23a($a0)
/* 02B468 8002A868 848F023A */  lh    $t7, 0x23a($a0)
/* 02B46C 8002A86C 29E1001F */  slti  $at, $t7, 0x1f
/* 02B470 8002A870 54200009 */  bnel  $at, $zero, .L8002A898
/* 02B474 8002A874 8FBF0014 */   lw    $ra, 0x14($sp)
/* 02B478 8002A878 8C9800BC */  lw    $t8, 0xbc($a0)
/* 02B47C 8002A87C 2401FEFF */  li    $at, -257
/* 02B480 8002A880 A480023A */  sh    $zero, 0x23a($a0)
/* 02B484 8002A884 0301C824 */  and   $t9, $t8, $at
/* 02B488 8002A888 AC9900BC */  sw    $t9, 0xbc($a0)
/* 02B48C 8002A88C A480022A */  sh    $zero, 0x22a($a0)
/* 02B490 8002A890 A4800228 */  sh    $zero, 0x228($a0)
.L8002A894:
/* 02B494 8002A894 8FBF0014 */  lw    $ra, 0x14($sp)
.L8002A898:
/* 02B498 8002A898 27BD0018 */  addiu $sp, $sp, 0x18
/* 02B49C 8002A89C 03E00008 */  jr    $ra
/* 02B4A0 8002A8A0 00000000 */   nop   
