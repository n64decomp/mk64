glabel func_8008F3F4
/* 08FFF4 8008F3F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 08FFF8 8008F3F8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 08FFFC 8008F3FC AFA5001C */  sw    $a1, 0x1c($sp)
/* 090000 8008F400 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 090004 8008F404 44814000 */  mtc1  $at, $f8
/* 090008 8008F408 C486008C */  lwc1  $f6, 0x8c($a0)
/* 09000C 8008F40C 848E00A8 */  lh    $t6, 0xa8($a0)
/* 090010 8008F410 84980042 */  lh    $t8, 0x42($a0)
/* 090014 8008F414 46083283 */  div.s $f10, $f6, $f8
/* 090018 8008F418 25CF0080 */  addiu $t7, $t6, 0x80
/* 09001C 8008F41C A48F00A8 */  sh    $t7, 0xa8($a0)
/* 090020 8008F420 848800A8 */  lh    $t0, 0xa8($a0)
/* 090024 8008F424 44802000 */  mtc1  $zero, $f4
/* 090028 8008F428 2719071C */  addiu $t9, $t8, 0x71c
/* 09002C 8008F42C 29012000 */  slti  $at, $t0, 0x2000
/* 090030 8008F430 A4990042 */  sh    $t9, 0x42($a0)
/* 090034 8008F434 AC80007C */  sw    $zero, 0x7c($a0)
/* 090038 8008F438 E484009C */  swc1  $f4, 0x9c($a0)
/* 09003C 8008F43C 14200011 */  bnez  $at, .L8008F484
/* 090040 8008F440 E48A008C */   swc1  $f10, 0x8c($a0)
/* 090044 8008F444 84890236 */  lh    $t1, 0x236($a0)
/* 090048 8008F448 A48000A8 */  sh    $zero, 0xa8($a0)
/* 09004C 8008F44C 252AFFFF */  addiu $t2, $t1, -1
/* 090050 8008F450 A48A0236 */  sh    $t2, 0x236($a0)
/* 090054 8008F454 848B0236 */  lh    $t3, 0x236($a0)
/* 090058 8008F458 5560000B */  bnel  $t3, $zero, .L8008F488
/* 09005C 8008F45C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 090060 8008F460 8C8C00BC */  lw    $t4, 0xbc($a0)
/* 090064 8008F464 3C01FFFE */  lui   $at, (0xFFFEFFFF >> 16) # lui $at, 0xfffe
/* 090068 8008F468 3421FFFF */  ori   $at, (0xFFFEFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 09006C 8008F46C 01816824 */  and   $t5, $t4, $at
/* 090070 8008F470 AC8D00BC */  sw    $t5, 0xbc($a0)
/* 090074 8008F474 0C0241DE */  jal   func_80090778
/* 090078 8008F478 AFA40018 */   sw    $a0, 0x18($sp)
/* 09007C 8008F47C 0C02421A */  jal   func_80090868
/* 090080 8008F480 8FA40018 */   lw    $a0, 0x18($sp)
.L8008F484:
/* 090084 8008F484 8FBF0014 */  lw    $ra, 0x14($sp)
.L8008F488:
/* 090088 8008F488 27BD0018 */  addiu $sp, $sp, 0x18
/* 09008C 8008F48C 03E00008 */  jr    $ra
/* 090090 8008F490 00000000 */   nop   
