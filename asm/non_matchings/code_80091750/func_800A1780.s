glabel func_800A1780
/* 0A2380 800A1780 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A2384 800A1784 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A2388 800A1788 AFA40018 */  sw    $a0, 0x18($sp)
/* 0A238C 800A178C 8C870020 */  lw    $a3, 0x20($a0)
/* 0A2390 800A1790 24010003 */  li    $at, 3
/* 0A2394 800A1794 3C1F800E */  lui   $ra, %hi(D_800E74D0) # $ra, 0x800e
/* 0A2398 800A1798 24F80001 */  addiu $t8, $a3, 1
/* 0A239C 800A179C 0301001A */  div   $zero, $t8, $at
/* 0A23A0 800A17A0 27FF74D0 */  addiu $ra, %lo(D_800E74D0) # addiu $ra, $ra, 0x74d0
/* 0A23A4 800A17A4 000778C0 */  sll   $t7, $a3, 3
/* 0A23A8 800A17A8 0000C810 */  mfhi  $t9
/* 0A23AC 800A17AC 03EF1821 */  addu  $v1, $ra, $t7
/* 0A23B0 800A17B0 8C82001C */  lw    $v0, 0x1c($a0)
/* 0A23B4 800A17B4 001978C0 */  sll   $t7, $t9, 3
/* 0A23B8 800A17B8 94790000 */  lhu   $t9, ($v1)
/* 0A23BC 800A17BC 24180100 */  li    $t8, 256
/* 0A23C0 800A17C0 03023023 */  subu  $a2, $t8, $v0
/* 0A23C4 800A17C4 03260019 */  multu $t9, $a2
/* 0A23C8 800A17C8 03EF2821 */  addu  $a1, $ra, $t7
/* 0A23CC 800A17CC 94AE0000 */  lhu   $t6, ($a1)
/* 0A23D0 800A17D0 3C088015 */  lui   $t0, %hi(gDisplayListHead) # $t0, 0x8015
/* 0A23D4 800A17D4 8D080298 */  lw    $t0, %lo(gDisplayListHead)($t0)
/* 0A23D8 800A17D8 3C040200 */  lui   $a0, %hi(D_02001FA4) # $a0, 0x200
/* 0A23DC 800A17DC 24841FA4 */  addiu $a0, %lo(D_02001FA4) # addiu $a0, $a0, 0x1fa4
/* 0A23E0 800A17E0 00007812 */  mflo  $t7
/* 0A23E4 800A17E4 00000000 */  nop   
/* 0A23E8 800A17E8 00000000 */  nop   
/* 0A23EC 800A17EC 01C20019 */  multu $t6, $v0
/* 0A23F0 800A17F0 946E0002 */  lhu   $t6, 2($v1)
/* 0A23F4 800A17F4 0000C012 */  mflo  $t8
/* 0A23F8 800A17F8 01F85021 */  addu  $t2, $t7, $t8
/* 0A23FC 800A17FC 94B80002 */  lhu   $t8, 2($a1)
/* 0A2400 800A1800 01C60019 */  multu $t6, $a2
/* 0A2404 800A1804 05410003 */  bgez  $t2, .L800A1814
/* 0A2408 800A1808 000ACA03 */   sra   $t9, $t2, 8
/* 0A240C 800A180C 254100FF */  addiu $at, $t2, 0xff
/* 0A2410 800A1810 0001CA03 */  sra   $t9, $at, 8
.L800A1814:
/* 0A2414 800A1814 03205025 */  move  $t2, $t9
/* 0A2418 800A1818 00007812 */  mflo  $t7
/* 0A241C 800A181C 00000000 */  nop   
/* 0A2420 800A1820 00000000 */  nop   
/* 0A2424 800A1824 03020019 */  multu $t8, $v0
/* 0A2428 800A1828 94780004 */  lhu   $t8, 4($v1)
/* 0A242C 800A182C 0000C812 */  mflo  $t9
/* 0A2430 800A1830 01F95821 */  addu  $t3, $t7, $t9
/* 0A2434 800A1834 94B90004 */  lhu   $t9, 4($a1)
/* 0A2438 800A1838 03060019 */  multu $t8, $a2
/* 0A243C 800A183C 05610003 */  bgez  $t3, .L800A184C
/* 0A2440 800A1840 000B7203 */   sra   $t6, $t3, 8
/* 0A2444 800A1844 256100FF */  addiu $at, $t3, 0xff
/* 0A2448 800A1848 00017203 */  sra   $t6, $at, 8
.L800A184C:
/* 0A244C 800A184C 01C05825 */  move  $t3, $t6
/* 0A2450 800A1850 00007812 */  mflo  $t7
/* 0A2454 800A1854 00000000 */  nop   
/* 0A2458 800A1858 00000000 */  nop   
/* 0A245C 800A185C 03220019 */  multu $t9, $v0
/* 0A2460 800A1860 94790006 */  lhu   $t9, 6($v1)
/* 0A2464 800A1864 00007012 */  mflo  $t6
/* 0A2468 800A1868 01EE6021 */  addu  $t4, $t7, $t6
/* 0A246C 800A186C 94AE0006 */  lhu   $t6, 6($a1)
/* 0A2470 800A1870 03260019 */  multu $t9, $a2
/* 0A2474 800A1874 05810003 */  bgez  $t4, .L800A1884
/* 0A2478 800A1878 000CC203 */   sra   $t8, $t4, 8
/* 0A247C 800A187C 258100FF */  addiu $at, $t4, 0xff
/* 0A2480 800A1880 0001C203 */  sra   $t8, $at, 8
.L800A1884:
/* 0A2484 800A1884 03006025 */  move  $t4, $t8
/* 0A2488 800A1888 00007812 */  mflo  $t7
/* 0A248C 800A188C 00000000 */  nop   
/* 0A2490 800A1890 00000000 */  nop   
/* 0A2494 800A1894 01C20019 */  multu $t6, $v0
/* 0A2498 800A1898 250E0008 */  addiu $t6, $t0, 8
/* 0A249C 800A189C 0000C012 */  mflo  $t8
/* 0A24A0 800A18A0 01F86821 */  addu  $t5, $t7, $t8
/* 0A24A4 800A18A4 05A10003 */  bgez  $t5, .L800A18B4
/* 0A24A8 800A18A8 000DCA03 */   sra   $t9, $t5, 8
/* 0A24AC 800A18AC 25A100FF */  addiu $at, $t5, 0xff
/* 0A24B0 800A18B0 0001CA03 */  sra   $t9, $at, 8
.L800A18B4:
/* 0A24B4 800A18B4 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A24B8 800A18B8 AC2E0298 */  sw    $t6, %lo(gDisplayListHead)($at)
/* 0A24BC 800A18BC 3C0FFA00 */  lui   $t7, 0xfa00
/* 0A24C0 800A18C0 316E00FF */  andi  $t6, $t3, 0xff
/* 0A24C4 800A18C4 AD0F0000 */  sw    $t7, ($t0)
/* 0A24C8 800A18C8 03206825 */  move  $t5, $t9
/* 0A24CC 800A18CC 000E7C00 */  sll   $t7, $t6, 0x10
/* 0A24D0 800A18D0 000ACE00 */  sll   $t9, $t2, 0x18
/* 0A24D4 800A18D4 032FC025 */  or    $t8, $t9, $t7
/* 0A24D8 800A18D8 318E00FF */  andi  $t6, $t4, 0xff
/* 0A24DC 800A18DC 000ECA00 */  sll   $t9, $t6, 8
/* 0A24E0 800A18E0 03197825 */  or    $t7, $t8, $t9
/* 0A24E4 800A18E4 31AE00FF */  andi  $t6, $t5, 0xff
/* 0A24E8 800A18E8 01EEC025 */  or    $t8, $t7, $t6
/* 0A24EC 800A18EC 0C026449 */  jal   segmented_to_virtual
/* 0A24F0 800A18F0 AD180004 */   sw    $t8, 4($t0)
/* 0A24F4 800A18F4 8FA30018 */  lw    $v1, 0x18($sp)
/* 0A24F8 800A18F8 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0A24FC 800A18FC 8C840298 */  lw    $a0, %lo(gDisplayListHead)($a0)
/* 0A2500 800A1900 00402825 */  move  $a1, $v0
/* 0A2504 800A1904 8C66000C */  lw    $a2, 0xc($v1)
/* 0A2508 800A1908 0C026E9D */  jal   func_8009BA74
/* 0A250C 800A190C 8C670010 */   lw    $a3, 0x10($v1)
/* 0A2510 800A1910 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0A2514 800A1914 3C018015 */  lui   $at, %hi(gDisplayListHead) # $at, 0x8015
/* 0A2518 800A1918 AC220298 */  sw    $v0, %lo(gDisplayListHead)($at)
/* 0A251C 800A191C 03E00008 */  jr    $ra
/* 0A2520 800A1920 27BD0018 */   addiu $sp, $sp, 0x18
