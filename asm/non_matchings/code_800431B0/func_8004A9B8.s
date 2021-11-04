glabel func_8004A9B8
/* 04B5B8 8004A9B8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 04B5BC 8004A9BC AFBF0014 */  sw    $ra, 0x14($sp)
/* 04B5C0 8004A9C0 3C048018 */  lui   $a0, %hi(D_80183E50) # $a0, 0x8018
/* 04B5C4 8004A9C4 3C058018 */  lui   $a1, %hi(D_80183E70) # $a1, 0x8018
/* 04B5C8 8004A9C8 44066000 */  mfc1  $a2, $f12
/* 04B5CC 8004A9CC 24A53E70 */  addiu $a1, %lo(D_80183E70) # addiu $a1, $a1, 0x3e70
/* 04B5D0 8004A9D0 0C010C14 */  jal   func_80043050
/* 04B5D4 8004A9D4 24843E50 */   addiu $a0, %lo(D_80183E50) # addiu $a0, $a0, 0x3e50
/* 04B5D8 8004A9D8 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 04B5DC 8004A9DC 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 04B5E0 8004A9E0 8C830000 */  lw    $v1, ($a0)
/* 04B5E4 8004A9E4 3C180D00 */  lui   $t8, %hi(D_0D007C10) # $t8, 0xd00
/* 04B5E8 8004A9E8 27187C10 */  addiu $t8, %lo(D_0D007C10) # addiu $t8, $t8, 0x7c10
/* 04B5EC 8004A9EC 246E0008 */  addiu $t6, $v1, 8
/* 04B5F0 8004A9F0 AC8E0000 */  sw    $t6, ($a0)
/* 04B5F4 8004A9F4 3C0F0600 */  lui   $t7, 0x600
/* 04B5F8 8004A9F8 AC6F0000 */  sw    $t7, ($v1)
/* 04B5FC 8004A9FC AC780004 */  sw    $t8, 4($v1)
/* 04B600 8004AA00 8FBF0014 */  lw    $ra, 0x14($sp)
/* 04B604 8004AA04 27BD0018 */  addiu $sp, $sp, 0x18
/* 04B608 8004AA08 03E00008 */  jr    $ra
/* 04B60C 8004AA0C 00000000 */   nop   

/* 04B610 8004AA10 44866000 */  mtc1  $a2, $f12
/* 04B614 8004AA14 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 04B618 8004AA18 AFBF001C */  sw    $ra, 0x1c($sp)
/* 04B61C 8004AA1C 44066000 */  mfc1  $a2, $f12
/* 04B620 8004AA20 0C010B80 */  jal   func_80042E00
/* 04B624 8004AA24 AFA7002C */   sw    $a3, 0x2c($sp)
/* 04B628 8004AA28 3C078015 */  lui   $a3, %hi(gDisplayListHead) # $a3, 0x8015
/* 04B62C 8004AA2C 24E70298 */  addiu $a3, %lo(gDisplayListHead) # addiu $a3, $a3, 0x298
/* 04B630 8004AA30 8CE30000 */  lw    $v1, ($a3)
/* 04B634 8004AA34 3C180D00 */  lui   $t8, %hi(D_0D007AE0) # $t8, 0xd00
/* 04B638 8004AA38 27187AE0 */  addiu $t8, %lo(D_0D007AE0) # addiu $t8, $t8, 0x7ae0
/* 04B63C 8004AA3C 246E0008 */  addiu $t6, $v1, 8
/* 04B640 8004AA40 ACEE0000 */  sw    $t6, ($a3)
/* 04B644 8004AA44 3C0F0600 */  lui   $t7, 0x600
/* 04B648 8004AA48 AC6F0000 */  sw    $t7, ($v1)
/* 04B64C 8004AA4C AC780004 */  sw    $t8, 4($v1)
/* 04B650 8004AA50 3C048016 */  lui   $a0, %hi(D_80165860) # $a0, 0x8016
/* 04B654 8004AA54 3C058016 */  lui   $a1, %hi(D_8016586C) # $a1, 0x8016
/* 04B658 8004AA58 3C068016 */  lui   $a2, %hi(D_80165878) # $a2, 0x8016
/* 04B65C 8004AA5C 8CC65878 */  lw    $a2, %lo(D_80165878)($a2)
/* 04B660 8004AA60 8CA5586C */  lw    $a1, %lo(D_8016586C)($a1)
/* 04B664 8004AA64 0C012DB1 */  jal   func_8004B6C4
/* 04B668 8004AA68 8C845860 */   lw    $a0, %lo(D_80165860)($a0)
/* 04B66C 8004AA6C 8FB9003C */  lw    $t9, 0x3c($sp)
/* 04B670 8004AA70 8FA80040 */  lw    $t0, 0x40($sp)
/* 04B674 8004AA74 8FA4002C */  lw    $a0, 0x2c($sp)
/* 04B678 8004AA78 8FA50030 */  lw    $a1, 0x30($sp)
/* 04B67C 8004AA7C 8FA60034 */  lw    $a2, 0x34($sp)
/* 04B680 8004AA80 8FA70038 */  lw    $a3, 0x38($sp)
/* 04B684 8004AA84 AFB90010 */  sw    $t9, 0x10($sp)
/* 04B688 8004AA88 0C0125F3 */  jal   func_800497CC
/* 04B68C 8004AA8C AFA80014 */   sw    $t0, 0x14($sp)
/* 04B690 8004AA90 8FBF001C */  lw    $ra, 0x1c($sp)
/* 04B694 8004AA94 27BD0020 */  addiu $sp, $sp, 0x20
/* 04B698 8004AA98 03E00008 */  jr    $ra
/* 04B69C 8004AA9C 00000000 */   nop   

/* 04B6A0 8004AAA0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B6A4 8004AAA4 44876000 */  mtc1  $a3, $f12
/* 04B6A8 8004AAA8 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04B6AC 8004AAAC 8FB80044 */  lw    $t8, 0x44($sp)
/* 04B6B0 8004AAB0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B6B4 8004AAB4 AFA60038 */  sw    $a2, 0x38($sp)
/* 04B6B8 8004AAB8 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04B6BC 8004AABC 24190010 */  li    $t9, 16
/* 04B6C0 8004AAC0 24080010 */  li    $t0, 16
/* 04B6C4 8004AAC4 24090010 */  li    $t1, 16
/* 04B6C8 8004AAC8 240A0010 */  li    $t2, 16
/* 04B6CC 8004AACC 44076000 */  mfc1  $a3, $f12
/* 04B6D0 8004AAD0 01C03025 */  move  $a2, $t6
/* 04B6D4 8004AAD4 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04B6D8 8004AAD8 AFA90020 */  sw    $t1, 0x20($sp)
/* 04B6DC 8004AADC AFA8001C */  sw    $t0, 0x1c($sp)
/* 04B6E0 8004AAE0 AFB90018 */  sw    $t9, 0x18($sp)
/* 04B6E4 8004AAE4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04B6E8 8004AAE8 0C0126C8 */  jal   func_80049B20
/* 04B6EC 8004AAEC AFB80014 */   sw    $t8, 0x14($sp)
/* 04B6F0 8004AAF0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B6F4 8004AAF4 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B6F8 8004AAF8 03E00008 */  jr    $ra
/* 04B6FC 8004AAFC 00000000 */   nop   

/* 04B700 8004AB00 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B704 8004AB04 44876000 */  mtc1  $a3, $f12
/* 04B708 8004AB08 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04B70C 8004AB0C 8FB80044 */  lw    $t8, 0x44($sp)
/* 04B710 8004AB10 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B714 8004AB14 AFA60038 */  sw    $a2, 0x38($sp)
/* 04B718 8004AB18 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04B71C 8004AB1C 24190010 */  li    $t9, 16
/* 04B720 8004AB20 24080010 */  li    $t0, 16
/* 04B724 8004AB24 24090010 */  li    $t1, 16
/* 04B728 8004AB28 240A0010 */  li    $t2, 16
/* 04B72C 8004AB2C 44076000 */  mfc1  $a3, $f12
/* 04B730 8004AB30 01C03025 */  move  $a2, $t6
/* 04B734 8004AB34 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04B738 8004AB38 AFA90020 */  sw    $t1, 0x20($sp)
/* 04B73C 8004AB3C AFA8001C */  sw    $t0, 0x1c($sp)
/* 04B740 8004AB40 AFB90018 */  sw    $t9, 0x18($sp)
/* 04B744 8004AB44 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04B748 8004AB48 0C012706 */  jal   func_80049C18
/* 04B74C 8004AB4C AFB80014 */   sw    $t8, 0x14($sp)
/* 04B750 8004AB50 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B754 8004AB54 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B758 8004AB58 03E00008 */  jr    $ra
/* 04B75C 8004AB5C 00000000 */   nop   

/* 04B760 8004AB60 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B764 8004AB64 44876000 */  mtc1  $a3, $f12
/* 04B768 8004AB68 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04B76C 8004AB6C 8FB80044 */  lw    $t8, 0x44($sp)
/* 04B770 8004AB70 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B774 8004AB74 AFA60038 */  sw    $a2, 0x38($sp)
/* 04B778 8004AB78 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04B77C 8004AB7C 24190010 */  li    $t9, 16
/* 04B780 8004AB80 24080010 */  li    $t0, 16
/* 04B784 8004AB84 24090010 */  li    $t1, 16
/* 04B788 8004AB88 240A0010 */  li    $t2, 16
/* 04B78C 8004AB8C 44076000 */  mfc1  $a3, $f12
/* 04B790 8004AB90 01C03025 */  move  $a2, $t6
/* 04B794 8004AB94 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04B798 8004AB98 AFA90020 */  sw    $t1, 0x20($sp)
/* 04B79C 8004AB9C AFA8001C */  sw    $t0, 0x1c($sp)
/* 04B7A0 8004ABA0 AFB90018 */  sw    $t9, 0x18($sp)
/* 04B7A4 8004ABA4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04B7A8 8004ABA8 0C01282C */  jal   func_8004A0B0
/* 04B7AC 8004ABAC AFB80014 */   sw    $t8, 0x14($sp)
/* 04B7B0 8004ABB0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B7B4 8004ABB4 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B7B8 8004ABB8 03E00008 */  jr    $ra
/* 04B7BC 8004ABBC 00000000 */   nop   

/* 04B7C0 8004ABC0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B7C4 8004ABC4 44876000 */  mtc1  $a3, $f12
/* 04B7C8 8004ABC8 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04B7CC 8004ABCC 8FB80044 */  lw    $t8, 0x44($sp)
/* 04B7D0 8004ABD0 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B7D4 8004ABD4 AFA60038 */  sw    $a2, 0x38($sp)
/* 04B7D8 8004ABD8 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04B7DC 8004ABDC 24190020 */  li    $t9, 32
/* 04B7E0 8004ABE0 24080020 */  li    $t0, 32
/* 04B7E4 8004ABE4 24090020 */  li    $t1, 32
/* 04B7E8 8004ABE8 240A0020 */  li    $t2, 32
/* 04B7EC 8004ABEC 44076000 */  mfc1  $a3, $f12
/* 04B7F0 8004ABF0 01C03025 */  move  $a2, $t6
/* 04B7F4 8004ABF4 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04B7F8 8004ABF8 AFA90020 */  sw    $t1, 0x20($sp)
/* 04B7FC 8004ABFC AFA8001C */  sw    $t0, 0x1c($sp)
/* 04B800 8004AC00 AFB90018 */  sw    $t9, 0x18($sp)
/* 04B804 8004AC04 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04B808 8004AC08 0C0126C8 */  jal   func_80049B20
/* 04B80C 8004AC0C AFB80014 */   sw    $t8, 0x14($sp)
/* 04B810 8004AC10 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B814 8004AC14 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B818 8004AC18 03E00008 */  jr    $ra
/* 04B81C 8004AC1C 00000000 */   nop   

/* 04B820 8004AC20 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B824 8004AC24 44876000 */  mtc1  $a3, $f12
/* 04B828 8004AC28 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04B82C 8004AC2C 8FB80044 */  lw    $t8, 0x44($sp)
/* 04B830 8004AC30 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B834 8004AC34 AFA60038 */  sw    $a2, 0x38($sp)
/* 04B838 8004AC38 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04B83C 8004AC3C 24190020 */  li    $t9, 32
/* 04B840 8004AC40 24080020 */  li    $t0, 32
/* 04B844 8004AC44 24090020 */  li    $t1, 32
/* 04B848 8004AC48 240A0020 */  li    $t2, 32
/* 04B84C 8004AC4C 44076000 */  mfc1  $a3, $f12
/* 04B850 8004AC50 01C03025 */  move  $a2, $t6
/* 04B854 8004AC54 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04B858 8004AC58 AFA90020 */  sw    $t1, 0x20($sp)
/* 04B85C 8004AC5C AFA8001C */  sw    $t0, 0x1c($sp)
/* 04B860 8004AC60 AFB90018 */  sw    $t9, 0x18($sp)
/* 04B864 8004AC64 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04B868 8004AC68 0C012706 */  jal   func_80049C18
/* 04B86C 8004AC6C AFB80014 */   sw    $t8, 0x14($sp)
/* 04B870 8004AC70 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B874 8004AC74 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B878 8004AC78 03E00008 */  jr    $ra
/* 04B87C 8004AC7C 00000000 */   nop   

/* 04B880 8004AC80 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B884 8004AC84 44876000 */  mtc1  $a3, $f12
/* 04B888 8004AC88 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04B88C 8004AC8C 8FB80044 */  lw    $t8, 0x44($sp)
/* 04B890 8004AC90 AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B894 8004AC94 AFA60038 */  sw    $a2, 0x38($sp)
/* 04B898 8004AC98 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04B89C 8004AC9C 24190020 */  li    $t9, 32
/* 04B8A0 8004ACA0 24080020 */  li    $t0, 32
/* 04B8A4 8004ACA4 24090020 */  li    $t1, 32
/* 04B8A8 8004ACA8 240A0020 */  li    $t2, 32
/* 04B8AC 8004ACAC 44076000 */  mfc1  $a3, $f12
/* 04B8B0 8004ACB0 01C03025 */  move  $a2, $t6
/* 04B8B4 8004ACB4 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04B8B8 8004ACB8 AFA90020 */  sw    $t1, 0x20($sp)
/* 04B8BC 8004ACBC AFA8001C */  sw    $t0, 0x1c($sp)
/* 04B8C0 8004ACC0 AFB90018 */  sw    $t9, 0x18($sp)
/* 04B8C4 8004ACC4 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04B8C8 8004ACC8 0C01282C */  jal   func_8004A0B0
/* 04B8CC 8004ACCC AFB80014 */   sw    $t8, 0x14($sp)
/* 04B8D0 8004ACD0 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B8D4 8004ACD4 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B8D8 8004ACD8 03E00008 */  jr    $ra
/* 04B8DC 8004ACDC 00000000 */   nop   

/* 04B8E0 8004ACE0 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B8E4 8004ACE4 44866000 */  mtc1  $a2, $f12
/* 04B8E8 8004ACE8 8FAE0040 */  lw    $t6, 0x40($sp)
/* 04B8EC 8004ACEC AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B8F0 8004ACF0 240F0020 */  li    $t7, 32
/* 04B8F4 8004ACF4 24180020 */  li    $t8, 32
/* 04B8F8 8004ACF8 24190020 */  li    $t9, 32
/* 04B8FC 8004ACFC 24080020 */  li    $t0, 32
/* 04B900 8004AD00 44066000 */  mfc1  $a2, $f12
/* 04B904 8004AD04 AFA80020 */  sw    $t0, 0x20($sp)
/* 04B908 8004AD08 AFB9001C */  sw    $t9, 0x1c($sp)
/* 04B90C 8004AD0C AFB80018 */  sw    $t8, 0x18($sp)
/* 04B910 8004AD10 AFAF0014 */  sw    $t7, 0x14($sp)
/* 04B914 8004AD14 0C012905 */  jal   func_8004A414
/* 04B918 8004AD18 AFAE0010 */   sw    $t6, 0x10($sp)
/* 04B91C 8004AD1C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B920 8004AD20 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B924 8004AD24 03E00008 */  jr    $ra
/* 04B928 8004AD28 00000000 */   nop   

/* 04B92C 8004AD2C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B930 8004AD30 44876000 */  mtc1  $a3, $f12
/* 04B934 8004AD34 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04B938 8004AD38 8FB80044 */  lw    $t8, 0x44($sp)
/* 04B93C 8004AD3C AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B940 8004AD40 AFA60038 */  sw    $a2, 0x38($sp)
/* 04B944 8004AD44 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04B948 8004AD48 24190040 */  li    $t9, 64
/* 04B94C 8004AD4C 24080020 */  li    $t0, 32
/* 04B950 8004AD50 24090040 */  li    $t1, 64
/* 04B954 8004AD54 240A0020 */  li    $t2, 32
/* 04B958 8004AD58 44076000 */  mfc1  $a3, $f12
/* 04B95C 8004AD5C 01C03025 */  move  $a2, $t6
/* 04B960 8004AD60 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04B964 8004AD64 AFA90020 */  sw    $t1, 0x20($sp)
/* 04B968 8004AD68 AFA8001C */  sw    $t0, 0x1c($sp)
/* 04B96C 8004AD6C AFB90018 */  sw    $t9, 0x18($sp)
/* 04B970 8004AD70 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04B974 8004AD74 0C0126C8 */  jal   func_80049B20
/* 04B978 8004AD78 AFB80014 */   sw    $t8, 0x14($sp)
/* 04B97C 8004AD7C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B980 8004AD80 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B984 8004AD84 03E00008 */  jr    $ra
/* 04B988 8004AD88 00000000 */   nop   

/* 04B98C 8004AD8C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B990 8004AD90 44876000 */  mtc1  $a3, $f12
/* 04B994 8004AD94 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04B998 8004AD98 8FB80044 */  lw    $t8, 0x44($sp)
/* 04B99C 8004AD9C AFBF002C */  sw    $ra, 0x2c($sp)
/* 04B9A0 8004ADA0 AFA60038 */  sw    $a2, 0x38($sp)
/* 04B9A4 8004ADA4 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04B9A8 8004ADA8 24190040 */  li    $t9, 64
/* 04B9AC 8004ADAC 24080020 */  li    $t0, 32
/* 04B9B0 8004ADB0 24090040 */  li    $t1, 64
/* 04B9B4 8004ADB4 240A0020 */  li    $t2, 32
/* 04B9B8 8004ADB8 44076000 */  mfc1  $a3, $f12
/* 04B9BC 8004ADBC 01C03025 */  move  $a2, $t6
/* 04B9C0 8004ADC0 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04B9C4 8004ADC4 AFA90020 */  sw    $t1, 0x20($sp)
/* 04B9C8 8004ADC8 AFA8001C */  sw    $t0, 0x1c($sp)
/* 04B9CC 8004ADCC AFB90018 */  sw    $t9, 0x18($sp)
/* 04B9D0 8004ADD0 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04B9D4 8004ADD4 0C012706 */  jal   func_80049C18
/* 04B9D8 8004ADD8 AFB80014 */   sw    $t8, 0x14($sp)
/* 04B9DC 8004ADDC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04B9E0 8004ADE0 27BD0030 */  addiu $sp, $sp, 0x30
/* 04B9E4 8004ADE4 03E00008 */  jr    $ra
/* 04B9E8 8004ADE8 00000000 */   nop   

/* 04B9EC 8004ADEC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04B9F0 8004ADF0 44876000 */  mtc1  $a3, $f12
/* 04B9F4 8004ADF4 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04B9F8 8004ADF8 8FB80044 */  lw    $t8, 0x44($sp)
/* 04B9FC 8004ADFC AFBF002C */  sw    $ra, 0x2c($sp)
/* 04BA00 8004AE00 AFA60038 */  sw    $a2, 0x38($sp)
/* 04BA04 8004AE04 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04BA08 8004AE08 24190040 */  li    $t9, 64
/* 04BA0C 8004AE0C 24080020 */  li    $t0, 32
/* 04BA10 8004AE10 24090040 */  li    $t1, 64
/* 04BA14 8004AE14 240A0020 */  li    $t2, 32
/* 04BA18 8004AE18 44076000 */  mfc1  $a3, $f12
/* 04BA1C 8004AE1C 01C03025 */  move  $a2, $t6
/* 04BA20 8004AE20 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04BA24 8004AE24 AFA90020 */  sw    $t1, 0x20($sp)
/* 04BA28 8004AE28 AFA8001C */  sw    $t0, 0x1c($sp)
/* 04BA2C 8004AE2C AFB90018 */  sw    $t9, 0x18($sp)
/* 04BA30 8004AE30 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04BA34 8004AE34 0C012725 */  jal   func_80049C94
/* 04BA38 8004AE38 AFB80014 */   sw    $t8, 0x14($sp)
/* 04BA3C 8004AE3C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04BA40 8004AE40 27BD0030 */  addiu $sp, $sp, 0x30
/* 04BA44 8004AE44 03E00008 */  jr    $ra
/* 04BA48 8004AE48 00000000 */   nop   

/* 04BA4C 8004AE4C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04BA50 8004AE50 44876000 */  mtc1  $a3, $f12
/* 04BA54 8004AE54 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04BA58 8004AE58 8FB80044 */  lw    $t8, 0x44($sp)
/* 04BA5C 8004AE5C AFBF002C */  sw    $ra, 0x2c($sp)
/* 04BA60 8004AE60 AFA60038 */  sw    $a2, 0x38($sp)
/* 04BA64 8004AE64 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04BA68 8004AE68 24190040 */  li    $t9, 64
/* 04BA6C 8004AE6C 24080020 */  li    $t0, 32
/* 04BA70 8004AE70 24090040 */  li    $t1, 64
/* 04BA74 8004AE74 240A0020 */  li    $t2, 32
/* 04BA78 8004AE78 44076000 */  mfc1  $a3, $f12
/* 04BA7C 8004AE7C 01C03025 */  move  $a2, $t6
/* 04BA80 8004AE80 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04BA84 8004AE84 AFA90020 */  sw    $t1, 0x20($sp)
/* 04BA88 8004AE88 AFA8001C */  sw    $t0, 0x1c($sp)
/* 04BA8C 8004AE8C AFB90018 */  sw    $t9, 0x18($sp)
/* 04BA90 8004AE90 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04BA94 8004AE94 0C012744 */  jal   func_80049D10
/* 04BA98 8004AE98 AFB80014 */   sw    $t8, 0x14($sp)
/* 04BA9C 8004AE9C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04BAA0 8004AEA0 27BD0030 */  addiu $sp, $sp, 0x30
/* 04BAA4 8004AEA4 03E00008 */  jr    $ra
/* 04BAA8 8004AEA8 00000000 */   nop   

/* 04BAAC 8004AEAC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04BAB0 8004AEB0 44876000 */  mtc1  $a3, $f12
/* 04BAB4 8004AEB4 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04BAB8 8004AEB8 8FB80044 */  lw    $t8, 0x44($sp)
/* 04BABC 8004AEBC AFBF002C */  sw    $ra, 0x2c($sp)
/* 04BAC0 8004AEC0 AFA60038 */  sw    $a2, 0x38($sp)
/* 04BAC4 8004AEC4 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04BAC8 8004AEC8 24190040 */  li    $t9, 64
/* 04BACC 8004AECC 24080020 */  li    $t0, 32
/* 04BAD0 8004AED0 24090040 */  li    $t1, 64
/* 04BAD4 8004AED4 240A0020 */  li    $t2, 32
/* 04BAD8 8004AED8 44076000 */  mfc1  $a3, $f12
/* 04BADC 8004AEDC 01C03025 */  move  $a2, $t6
/* 04BAE0 8004AEE0 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04BAE4 8004AEE4 AFA90020 */  sw    $t1, 0x20($sp)
/* 04BAE8 8004AEE8 AFA8001C */  sw    $t0, 0x1c($sp)
/* 04BAEC 8004AEEC AFB90018 */  sw    $t9, 0x18($sp)
/* 04BAF0 8004AEF0 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04BAF4 8004AEF4 0C012763 */  jal   func_80049D8C
/* 04BAF8 8004AEF8 AFB80014 */   sw    $t8, 0x14($sp)
/* 04BAFC 8004AEFC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04BB00 8004AF00 27BD0030 */  addiu $sp, $sp, 0x30
/* 04BB04 8004AF04 03E00008 */  jr    $ra
/* 04BB08 8004AF08 00000000 */   nop   

/* 04BB0C 8004AF0C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04BB10 8004AF10 44876000 */  mtc1  $a3, $f12
/* 04BB14 8004AF14 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04BB18 8004AF18 8FB80044 */  lw    $t8, 0x44($sp)
/* 04BB1C 8004AF1C AFBF002C */  sw    $ra, 0x2c($sp)
/* 04BB20 8004AF20 AFA60038 */  sw    $a2, 0x38($sp)
/* 04BB24 8004AF24 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04BB28 8004AF28 24190040 */  li    $t9, 64
/* 04BB2C 8004AF2C 24080040 */  li    $t0, 64
/* 04BB30 8004AF30 24090040 */  li    $t1, 64
/* 04BB34 8004AF34 240A0040 */  li    $t2, 64
/* 04BB38 8004AF38 44076000 */  mfc1  $a3, $f12
/* 04BB3C 8004AF3C 01C03025 */  move  $a2, $t6
/* 04BB40 8004AF40 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04BB44 8004AF44 AFA90020 */  sw    $t1, 0x20($sp)
/* 04BB48 8004AF48 AFA8001C */  sw    $t0, 0x1c($sp)
/* 04BB4C 8004AF4C AFB90018 */  sw    $t9, 0x18($sp)
/* 04BB50 8004AF50 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04BB54 8004AF54 0C012706 */  jal   func_80049C18
/* 04BB58 8004AF58 AFB80014 */   sw    $t8, 0x14($sp)
/* 04BB5C 8004AF5C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04BB60 8004AF60 27BD0030 */  addiu $sp, $sp, 0x30
/* 04BB64 8004AF64 03E00008 */  jr    $ra
/* 04BB68 8004AF68 00000000 */   nop   

/* 04BB6C 8004AF6C 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04BB70 8004AF70 44876000 */  mtc1  $a3, $f12
/* 04BB74 8004AF74 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04BB78 8004AF78 8FB80044 */  lw    $t8, 0x44($sp)
/* 04BB7C 8004AF7C AFBF002C */  sw    $ra, 0x2c($sp)
/* 04BB80 8004AF80 AFA60038 */  sw    $a2, 0x38($sp)
/* 04BB84 8004AF84 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04BB88 8004AF88 24190040 */  li    $t9, 64
/* 04BB8C 8004AF8C 24080040 */  li    $t0, 64
/* 04BB90 8004AF90 24090040 */  li    $t1, 64
/* 04BB94 8004AF94 240A0020 */  li    $t2, 32
/* 04BB98 8004AF98 44076000 */  mfc1  $a3, $f12
/* 04BB9C 8004AF9C 01C03025 */  move  $a2, $t6
/* 04BBA0 8004AFA0 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04BBA4 8004AFA4 AFA90020 */  sw    $t1, 0x20($sp)
/* 04BBA8 8004AFA8 AFA8001C */  sw    $t0, 0x1c($sp)
/* 04BBAC 8004AFAC AFB90018 */  sw    $t9, 0x18($sp)
/* 04BBB0 8004AFB0 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04BBB4 8004AFB4 0C0126C8 */  jal   func_80049B20
/* 04BBB8 8004AFB8 AFB80014 */   sw    $t8, 0x14($sp)
/* 04BBBC 8004AFBC 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04BBC0 8004AFC0 27BD0030 */  addiu $sp, $sp, 0x30
/* 04BBC4 8004AFC4 03E00008 */  jr    $ra
/* 04BBC8 8004AFC8 00000000 */   nop   

/* 04BBCC 8004AFCC 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 04BBD0 8004AFD0 44876000 */  mtc1  $a3, $f12
/* 04BBD4 8004AFD4 8FAF0040 */  lw    $t7, 0x40($sp)
/* 04BBD8 8004AFD8 8FB80044 */  lw    $t8, 0x44($sp)
/* 04BBDC 8004AFDC AFBF002C */  sw    $ra, 0x2c($sp)
/* 04BBE0 8004AFE0 AFA60038 */  sw    $a2, 0x38($sp)
/* 04BBE4 8004AFE4 30CEFFFF */  andi  $t6, $a2, 0xffff
/* 04BBE8 8004AFE8 24190040 */  li    $t9, 64
/* 04BBEC 8004AFEC 24080060 */  li    $t0, 96
/* 04BBF0 8004AFF0 24090040 */  li    $t1, 64
/* 04BBF4 8004AFF4 240A0030 */  li    $t2, 48
/* 04BBF8 8004AFF8 44076000 */  mfc1  $a3, $f12
/* 04BBFC 8004AFFC 01C03025 */  move  $a2, $t6
/* 04BC00 8004B000 AFAA0024 */  sw    $t2, 0x24($sp)
/* 04BC04 8004B004 AFA90020 */  sw    $t1, 0x20($sp)
/* 04BC08 8004B008 AFA8001C */  sw    $t0, 0x1c($sp)
/* 04BC0C 8004B00C AFB90018 */  sw    $t9, 0x18($sp)
/* 04BC10 8004B010 AFAF0010 */  sw    $t7, 0x10($sp)
/* 04BC14 8004B014 0C012706 */  jal   func_80049C18
/* 04BC18 8004B018 AFB80014 */   sw    $t8, 0x14($sp)
/* 04BC1C 8004B01C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 04BC20 8004B020 27BD0030 */  addiu $sp, $sp, 0x30
/* 04BC24 8004B024 03E00008 */  jr    $ra
/* 04BC28 8004B028 00000000 */   nop   

/* 04BC2C 8004B02C 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 04BC30 8004B030 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 04BC34 8004B034 8C830000 */  lw    $v1, ($a0)
/* 04BC38 8004B038 3C0FB900 */  lui   $t7, (0xB900031D >> 16) # lui $t7, 0xb900
/* 04BC3C 8004B03C 3C180050 */  lui   $t8, (0x00505978 >> 16) # lui $t8, 0x50
/* 04BC40 8004B040 246E0008 */  addiu $t6, $v1, 8
/* 04BC44 8004B044 AC8E0000 */  sw    $t6, ($a0)
/* 04BC48 8004B048 37185978 */  ori   $t8, (0x00505978 & 0xFFFF) # ori $t8, $t8, 0x5978
/* 04BC4C 8004B04C 35EF031D */  ori   $t7, (0xB900031D & 0xFFFF) # ori $t7, $t7, 0x31d
/* 04BC50 8004B050 AC6F0000 */  sw    $t7, ($v1)
/* 04BC54 8004B054 03E00008 */  jr    $ra
/* 04BC58 8004B058 AC780004 */   sw    $t8, 4($v1)
