glabel func_8009952C
/* 09A12C 8009952C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 09A130 80099530 AFBF002C */  sw    $ra, 0x2c($sp)
/* 09A134 80099534 AFB50028 */  sw    $s5, 0x28($sp)
/* 09A138 80099538 AFB40024 */  sw    $s4, 0x24($sp)
/* 09A13C 8009953C AFB30020 */  sw    $s3, 0x20($sp)
/* 09A140 80099540 AFB2001C */  sw    $s2, 0x1c($sp)
/* 09A144 80099544 AFB10018 */  sw    $s1, 0x18($sp)
/* 09A148 80099548 0C026449 */  jal   segmented_to_virtual_dupe
/* 09A14C 8009954C AFB00014 */   sw    $s0, 0x14($sp)
/* 09A150 80099550 8C4E0004 */  lw    $t6, 4($v0)
/* 09A154 80099554 3C158019 */  lui   $s5, %hi(D_8018D9B0) # $s5, 0x8019
/* 09A158 80099558 00408825 */  move  $s1, $v0
/* 09A15C 8009955C 11C00046 */  beqz  $t6, .L80099678
/* 09A160 80099560 26B5D9B0 */   addiu $s5, %lo(D_8018D9B0) # addiu $s5, $s5, -0x2650
/* 09A164 80099564 3C148019 */  lui   $s4, %hi(D_8018D9B4) # $s4, 0x8019
/* 09A168 80099568 3C138019 */  lui   $s3, %hi(gNumD_8018E118Entries) # $s3, 0x8019
/* 09A16C 8009956C 3C128019 */  lui   $s2, %hi(gMenuTextureBufferIndex) # $s2, 0x8019
/* 09A170 80099570 3C108019 */  lui   $s0, %hi(D_8018E118) # $s0, 0x8019
/* 09A174 80099574 2610E118 */  addiu $s0, %lo(D_8018E118) # addiu $s0, $s0, -0x1ee8
/* 09A178 80099578 2652E110 */  addiu $s2, %lo(gMenuTextureBufferIndex) # addiu $s2, $s2, -0x1ef0
/* 09A17C 8009957C 2673E758 */  addiu $s3, %lo(gNumD_8018E118Entries) # addiu $s3, $s3, -0x18a8
/* 09A180 80099580 2694D9B4 */  addiu $s4, %lo(D_8018D9B4) # addiu $s4, $s4, -0x264c
/* 09A184 80099584 8E630000 */  lw    $v1, ($s3)
.L80099588:
/* 09A188 80099588 00002825 */  move  $a1, $zero
/* 09A18C 8009958C 00001025 */  move  $v0, $zero
/* 09A190 80099590 1860000D */  blez  $v1, .L800995C8
/* 09A194 80099594 00000000 */   nop   
/* 09A198 80099598 8E240004 */  lw    $a0, 4($s1)
/* 09A19C 8009959C 000278C0 */  sll   $t7, $v0, 3
.L800995A0:
/* 09A1A0 800995A0 020FC021 */  addu  $t8, $s0, $t7
/* 09A1A4 800995A4 8F190000 */  lw    $t9, ($t8)
/* 09A1A8 800995A8 24420001 */  addiu $v0, $v0, 1
/* 09A1AC 800995AC 0043082A */  slt   $at, $v0, $v1
/* 09A1B0 800995B0 17240003 */  bne   $t9, $a0, .L800995C0
/* 09A1B4 800995B4 00000000 */   nop   
/* 09A1B8 800995B8 10000003 */  b     .L800995C8
/* 09A1BC 800995BC 24050001 */   li    $a1, 1
.L800995C0:
/* 09A1C0 800995C0 5420FFF7 */  bnel  $at, $zero, .L800995A0
/* 09A1C4 800995C4 000278C0 */   sll   $t7, $v0, 3
.L800995C8:
/* 09A1C8 800995C8 54A00028 */  bnel  $a1, $zero, .L8009966C
/* 09A1CC 800995CC 8E2A0018 */   lw    $t2, 0x18($s1)
/* 09A1D0 800995D0 8E240004 */  lw    $a0, 4($s1)
/* 09A1D4 800995D4 34058000 */  li    $a1, 32768
/* 09A1D8 800995D8 0C026400 */  jal   dma_copy_base_729a30
/* 09A1DC 800995DC 8E860000 */   lw    $a2, ($s4)
/* 09A1E0 800995E0 8E480000 */  lw    $t0, ($s2)
/* 09A1E4 800995E4 8EAA0000 */  lw    $t2, ($s5)
/* 09A1E8 800995E8 8E840000 */  lw    $a0, ($s4)
/* 09A1EC 800995EC 00084840 */  sll   $t1, $t0, 1
/* 09A1F0 800995F0 0C010034 */  jal   mio0decode
/* 09A1F4 800995F4 012A2821 */   addu  $a1, $t1, $t2
/* 09A1F8 800995F8 8E6C0000 */  lw    $t4, ($s3)
/* 09A1FC 800995FC 8E2B0004 */  lw    $t3, 4($s1)
/* 09A200 80099600 000C68C0 */  sll   $t5, $t4, 3
/* 09A204 80099604 020D7021 */  addu  $t6, $s0, $t5
/* 09A208 80099608 ADCB0000 */  sw    $t3, ($t6)
/* 09A20C 8009960C 8E780000 */  lw    $t8, ($s3)
/* 09A210 80099610 8E4F0000 */  lw    $t7, ($s2)
/* 09A214 80099614 0018C8C0 */  sll   $t9, $t8, 3
/* 09A218 80099618 02194021 */  addu  $t0, $s0, $t9
/* 09A21C 8009961C AD0F0004 */  sw    $t7, 4($t0)
/* 09A220 80099620 962A0008 */  lhu   $t2, 8($s1)
/* 09A224 80099624 9629000A */  lhu   $t1, 0xa($s1)
/* 09A228 80099628 8E4D0000 */  lw    $t5, ($s2)
/* 09A22C 8009962C 8E680000 */  lw    $t0, ($s3)
/* 09A230 80099630 012A0019 */  multu $t1, $t2
/* 09A234 80099634 25090001 */  addiu $t1, $t0, 1
/* 09A238 80099638 AE690000 */  sw    $t1, ($s3)
/* 09A23C 8009963C 00006012 */  mflo  $t4
/* 09A240 80099640 01AC5821 */  addu  $t3, $t5, $t4
/* 09A244 80099644 01607025 */  move  $t6, $t3
/* 09A248 80099648 AE4B0000 */  sw    $t3, ($s2)
/* 09A24C 8009964C 05C10003 */  bgez  $t6, .L8009965C
/* 09A250 80099650 000EC0C3 */   sra   $t8, $t6, 3
/* 09A254 80099654 25C10007 */  addiu $at, $t6, 7
/* 09A258 80099658 0001C0C3 */  sra   $t8, $at, 3
.L8009965C:
/* 09A25C 8009965C 0018C8C0 */  sll   $t9, $t8, 3
/* 09A260 80099660 272F0008 */  addiu $t7, $t9, 8
/* 09A264 80099664 AE4F0000 */  sw    $t7, ($s2)
/* 09A268 80099668 8E2A0018 */  lw    $t2, 0x18($s1)
.L8009966C:
/* 09A26C 8009966C 26310014 */  addiu $s1, $s1, 0x14
/* 09A270 80099670 5540FFC5 */  bnel  $t2, $zero, .L80099588
/* 09A274 80099674 8E630000 */   lw    $v1, ($s3)
.L80099678:
/* 09A278 80099678 8FBF002C */  lw    $ra, 0x2c($sp)
/* 09A27C 8009967C 8FB00014 */  lw    $s0, 0x14($sp)
/* 09A280 80099680 8FB10018 */  lw    $s1, 0x18($sp)
/* 09A284 80099684 8FB2001C */  lw    $s2, 0x1c($sp)
/* 09A288 80099688 8FB30020 */  lw    $s3, 0x20($sp)
/* 09A28C 8009968C 8FB40024 */  lw    $s4, 0x24($sp)
/* 09A290 80099690 8FB50028 */  lw    $s5, 0x28($sp)
/* 09A294 80099694 03E00008 */  jr    $ra
/* 09A298 80099698 27BD0030 */   addiu $sp, $sp, 0x30
