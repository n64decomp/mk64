glabel func_800703E0
/* 070FE0 800703E0 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 070FE4 800703E4 AFBF0014 */  sw    $ra, 0x14($sp)
/* 070FE8 800703E8 AFA60020 */  sw    $a2, 0x20($sp)
/* 070FEC 800703EC 0C01C8E9 */  jal   func_800723A4
/* 070FF0 800703F0 AFA40018 */   sw    $a0, 0x18($sp)
/* 070FF4 800703F4 8FA40018 */  lw    $a0, 0x18($sp)
/* 070FF8 800703F8 8FA30020 */  lw    $v1, 0x20($sp)
/* 070FFC 800703FC 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 071000 80070400 000470C0 */  sll   $t6, $a0, 3
/* 071004 80070404 01C47023 */  subu  $t6, $t6, $a0
/* 071008 80070408 94780006 */  lhu   $t8, 6($v1)
/* 07100C 8007040C 000E7140 */  sll   $t6, $t6, 5
/* 071010 80070410 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 071014 80070414 01CF1021 */  addu  $v0, $t6, $t7
/* 071018 80070418 24190001 */  li    $t9, 1
/* 07101C 8007041C A45900A4 */  sh    $t9, 0xa4($v0)
/* 071020 80070420 A05800D5 */  sb    $t8, 0xd5($v0)
/* 071024 80070424 94680000 */  lhu   $t0, ($v1)
/* 071028 80070428 44808000 */  mtc1  $zero, $f16
/* 07102C 8007042C 3C014F80 */  li    $at, 0x4F800000 # 4294967296.000000
/* 071030 80070430 A44800C0 */  sh    $t0, 0xc0($v0)
/* 071034 80070434 94690002 */  lhu   $t1, 2($v1)
/* 071038 80070438 A449009E */  sh    $t1, 0x9e($v0)
/* 07103C 8007043C 946A0004 */  lhu   $t2, 4($v1)
/* 071040 80070440 448A2000 */  mtc1  $t2, $f4
/* 071044 80070444 05410004 */  bgez  $t2, .L80070458
/* 071048 80070448 468021A0 */   cvt.s.w $f6, $f4
/* 07104C 8007044C 44814000 */  mtc1  $at, $f8
/* 071050 80070450 00000000 */  nop   
/* 071054 80070454 46083180 */  add.s $f6, $f6, $f8
.L80070458:
/* 071058 80070458 3C014059 */  li    $at, 0x40590000 # 3.390625
/* 07105C 8007045C 44818800 */  mtc1  $at, $f17
/* 071060 80070460 460032A1 */  cvt.d.s $f10, $f6
/* 071064 80070464 3C0B0D03 */  lui   $t3, %hi(D_0D0293D8) # $t3, 0xd03
/* 071068 80070468 46305483 */  div.d $f18, $f10, $f16
/* 07106C 8007046C 256B93D8 */  addiu $t3, %lo(D_0D0293D8) # addiu $t3, $t3, -0x6c28
/* 071070 80070470 3C070D00 */  lui   $a3, %hi(D_0D005770) # $a3, 0xd00
/* 071074 80070474 AC4B0064 */  sw    $t3, 0x64($v0)
/* 071078 80070478 24E75770 */  addiu $a3, %lo(D_0D005770) # addiu $a3, $a3, 0x5770
/* 07107C 8007047C 24050010 */  li    $a1, 16
/* 071080 80070480 24060010 */  li    $a2, 16
/* 071084 80070484 46209120 */  cvt.s.d $f4, $f18
/* 071088 80070488 0C01CD01 */  jal   func_80073404
/* 07108C 8007048C E4440000 */   swc1  $f4, ($v0)
/* 071090 80070490 8FBF0014 */  lw    $ra, 0x14($sp)
/* 071094 80070494 27BD0018 */  addiu $sp, $sp, 0x18
/* 071098 80070498 03E00008 */  jr    $ra
/* 07109C 8007049C 00000000 */   nop   
