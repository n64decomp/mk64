glabel func_8004B7DC
/* 04C3DC 8004B7DC 8FAE0018 */  lw    $t6, 0x18($sp)
/* 04C3E0 8004B7E0 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 04C3E4 8004B7E4 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 04C3E8 8004B7E8 15C0002F */  bnez  $t6, .L8004B8A8
/* 04C3EC 8004B7EC 3C01E400 */   lui   $at, 0xe400
/* 04C3F0 8004B7F0 3C0A8015 */  lui   $t2, %hi(gDisplayListHead) # $t2, 0x8015
/* 04C3F4 8004B7F4 254A0298 */  addiu $t2, %lo(gDisplayListHead) # addiu $t2, $t2, 0x298
/* 04C3F8 8004B7F8 8D430000 */  lw    $v1, ($t2)
/* 04C3FC 8004B7FC 0086C021 */  addu  $t8, $a0, $a2
/* 04C400 8004B800 2719FFFF */  addiu $t9, $t8, -1
/* 04C404 8004B804 246F0008 */  addiu $t7, $v1, 8
/* 04C408 8004B808 AD4F0000 */  sw    $t7, ($t2)
/* 04C40C 8004B80C 00A77821 */  addu  $t7, $a1, $a3
/* 04C410 8004B810 00195880 */  sll   $t3, $t9, 2
/* 04C414 8004B814 316C0FFF */  andi  $t4, $t3, 0xfff
/* 04C418 8004B818 25F8FFFF */  addiu $t8, $t7, -1
/* 04C41C 8004B81C 0018C880 */  sll   $t9, $t8, 2
/* 04C420 8004B820 000C6B00 */  sll   $t5, $t4, 0xc
/* 04C424 8004B824 3C01E400 */  lui   $at, 0xe400
/* 04C428 8004B828 01A17025 */  or    $t6, $t5, $at
/* 04C42C 8004B82C 332B0FFF */  andi  $t3, $t9, 0xfff
/* 04C430 8004B830 00046880 */  sll   $t5, $a0, 2
/* 04C434 8004B834 31AF0FFF */  andi  $t7, $t5, 0xfff
/* 04C438 8004B838 01CB6025 */  or    $t4, $t6, $t3
/* 04C43C 8004B83C 0005C880 */  sll   $t9, $a1, 2
/* 04C440 8004B840 332E0FFF */  andi  $t6, $t9, 0xfff
/* 04C444 8004B844 000FC300 */  sll   $t8, $t7, 0xc
/* 04C448 8004B848 030E5825 */  or    $t3, $t8, $t6
/* 04C44C 8004B84C AC6B0004 */  sw    $t3, 4($v1)
/* 04C450 8004B850 AC6C0000 */  sw    $t4, ($v1)
/* 04C454 8004B854 8D430000 */  lw    $v1, ($t2)
/* 04C458 8004B858 3C0DB300 */  lui   $t5, 0xb300
/* 04C45C 8004B85C 246C0008 */  addiu $t4, $v1, 8
/* 04C460 8004B860 AD4C0000 */  sw    $t4, ($t2)
/* 04C464 8004B864 AC6D0000 */  sw    $t5, ($v1)
/* 04C468 8004B868 8FAB0014 */  lw    $t3, 0x14($sp)
/* 04C46C 8004B86C 8FB80010 */  lw    $t8, 0x10($sp)
/* 04C470 8004B870 000B6140 */  sll   $t4, $t3, 5
/* 04C474 8004B874 318DFFFF */  andi  $t5, $t4, 0xffff
/* 04C478 8004B878 00187540 */  sll   $t6, $t8, 0x15
/* 04C47C 8004B87C 01CD7825 */  or    $t7, $t6, $t5
/* 04C480 8004B880 AC6F0004 */  sw    $t7, 4($v1)
/* 04C484 8004B884 8D430000 */  lw    $v1, ($t2)
/* 04C488 8004B888 3C0B1000 */  lui   $t3, (0x10000400 >> 16) # lui $t3, 0x1000
/* 04C48C 8004B88C 356B0400 */  ori   $t3, (0x10000400 & 0xFFFF) # ori $t3, $t3, 0x400
/* 04C490 8004B890 24790008 */  addiu $t9, $v1, 8
/* 04C494 8004B894 AD590000 */  sw    $t9, ($t2)
/* 04C498 8004B898 3C18B200 */  lui   $t8, 0xb200
/* 04C49C 8004B89C AC780000 */  sw    $t8, ($v1)
/* 04C4A0 8004B8A0 03E00008 */  jr    $ra
/* 04C4A4 8004B8A4 AC6B0004 */   sw    $t3, 4($v1)

.L8004B8A8:
/* 04C4A8 8004B8A8 8D430000 */  lw    $v1, ($t2)
/* 04C4AC 8004B8AC 00867021 */  addu  $t6, $a0, $a2
/* 04C4B0 8004B8B0 000E6880 */  sll   $t5, $t6, 2
/* 04C4B4 8004B8B4 246C0008 */  addiu $t4, $v1, 8
/* 04C4B8 8004B8B8 AD4C0000 */  sw    $t4, ($t2)
/* 04C4BC 8004B8BC 31AF0FFF */  andi  $t7, $t5, 0xfff
/* 04C4C0 8004B8C0 00A75821 */  addu  $t3, $a1, $a3
/* 04C4C4 8004B8C4 000B6080 */  sll   $t4, $t3, 2
/* 04C4C8 8004B8C8 000FCB00 */  sll   $t9, $t7, 0xc
/* 04C4CC 8004B8CC 0321C025 */  or    $t8, $t9, $at
/* 04C4D0 8004B8D0 318E0FFF */  andi  $t6, $t4, 0xfff
/* 04C4D4 8004B8D4 00047880 */  sll   $t7, $a0, 2
/* 04C4D8 8004B8D8 31F90FFF */  andi  $t9, $t7, 0xfff
/* 04C4DC 8004B8DC 030E6825 */  or    $t5, $t8, $t6
/* 04C4E0 8004B8E0 00056080 */  sll   $t4, $a1, 2
/* 04C4E4 8004B8E4 31980FFF */  andi  $t8, $t4, 0xfff
/* 04C4E8 8004B8E8 00195B00 */  sll   $t3, $t9, 0xc
/* 04C4EC 8004B8EC 01787025 */  or    $t6, $t3, $t8
/* 04C4F0 8004B8F0 AC6E0004 */  sw    $t6, 4($v1)
/* 04C4F4 8004B8F4 AC6D0000 */  sw    $t5, ($v1)
/* 04C4F8 8004B8F8 8D430000 */  lw    $v1, ($t2)
/* 04C4FC 8004B8FC 3C0FB300 */  lui   $t7, 0xb300
/* 04C500 8004B900 246D0008 */  addiu $t5, $v1, 8
/* 04C504 8004B904 AD4D0000 */  sw    $t5, ($t2)
/* 04C508 8004B908 AC6F0000 */  sw    $t7, ($v1)
/* 04C50C 8004B90C 8FAE0014 */  lw    $t6, 0x14($sp)
/* 04C510 8004B910 8FAB0010 */  lw    $t3, 0x10($sp)
/* 04C514 8004B914 000E6940 */  sll   $t5, $t6, 5
/* 04C518 8004B918 31AFFFFF */  andi  $t7, $t5, 0xffff
/* 04C51C 8004B91C 000BC540 */  sll   $t8, $t3, 0x15
/* 04C520 8004B920 030FC825 */  or    $t9, $t8, $t7
/* 04C524 8004B924 AC790004 */  sw    $t9, 4($v1)
/* 04C528 8004B928 8D430000 */  lw    $v1, ($t2)
/* 04C52C 8004B92C 3C0E0400 */  lui   $t6, (0x04000400 >> 16) # lui $t6, 0x400
/* 04C530 8004B930 35CE0400 */  ori   $t6, (0x04000400 & 0xFFFF) # ori $t6, $t6, 0x400
/* 04C534 8004B934 246C0008 */  addiu $t4, $v1, 8
/* 04C538 8004B938 AD4C0000 */  sw    $t4, ($t2)
/* 04C53C 8004B93C 3C0BB200 */  lui   $t3, 0xb200
/* 04C540 8004B940 AC6B0000 */  sw    $t3, ($v1)
/* 04C544 8004B944 AC6E0004 */  sw    $t6, 4($v1)
/* 04C548 8004B948 03E00008 */  jr    $ra
/* 04C54C 8004B94C 00000000 */   nop   
