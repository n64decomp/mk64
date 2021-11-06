glabel func_800CBC24
/* 0CC824 800CBC24 3C02800F */  lui   $v0, %hi(D_800EA3A0) # $v0, 0x800f
/* 0CC828 800CBC28 3C03800F */  lui   $v1, %hi(D_800EA3A4) # $v1, 0x800f
/* 0CC82C 800CBC2C 9063A3A4 */  lbu   $v1, %lo(D_800EA3A4)($v1)
/* 0CC830 800CBC30 9042A3A0 */  lbu   $v0, %lo(D_800EA3A0)($v0)
/* 0CC834 800CBC34 3C0F800F */  lui   $t7, %hi(D_800EA4A4) # $t7, 0x800f
/* 0CC838 800CBC38 8DEFA4A4 */  lw    $t7, %lo(D_800EA4A4)($t7)
/* 0CC83C 800CBC3C 00432023 */  subu  $a0, $v0, $v1
/* 0CC840 800CBC40 24840100 */  addiu $a0, $a0, 0x100
/* 0CC844 800CBC44 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0CC848 800CBC48 308E00FF */  andi  $t6, $a0, 0xff
/* 0CC84C 800CBC4C AFBE0028 */  sw    $fp, 0x28($sp)
/* 0CC850 800CBC50 01EE082A */  slt   $at, $t7, $t6
/* 0CC854 800CBC54 03A0F025 */  move  $fp, $sp
/* 0CC858 800CBC58 10200003 */  beqz  $at, .L800CBC68
/* 0CC85C 800CBC5C AFBF002C */   sw    $ra, 0x2c($sp)
/* 0CC860 800CBC60 3C01800F */  lui   $at, %hi(D_800EA4A4) # $at, 0x800f
/* 0CC864 800CBC64 AC2EA4A4 */  sw    $t6, %lo(D_800EA4A4)($at)
.L800CBC68:
/* 0CC868 800CBC68 307800FF */  andi  $t8, $v1, 0xff
/* 0CC86C 800CBC6C 0018CA00 */  sll   $t9, $t8, 8
/* 0CC870 800CBC70 304800FF */  andi  $t0, $v0, 0xff
/* 0CC874 800CBC74 3C04800F */  lui   $a0, %hi(D_800EA3AC) # $a0, 0x800f
/* 0CC878 800CBC78 03282825 */  or    $a1, $t9, $t0
/* 0CC87C 800CBC7C 8C84A3AC */  lw    $a0, %lo(D_800EA3AC)($a0)
/* 0CC880 800CBC80 0C033630 */  jal   osSendMesg
/* 0CC884 800CBC84 00003025 */   move  $a2, $zero
/* 0CC888 800CBC88 3C09800F */  lui   $t1, %hi(D_800EA3A0) # $t1, 0x800f
/* 0CC88C 800CBC8C 9129A3A0 */  lbu   $t1, %lo(D_800EA3A0)($t1)
/* 0CC890 800CBC90 3C01800F */  lui   $at, %hi(D_800EA3A4) # $at, 0x800f
/* 0CC894 800CBC94 03C0E825 */  move  $sp, $fp
/* 0CC898 800CBC98 A029A3A4 */  sb    $t1, %lo(D_800EA3A4)($at)
/* 0CC89C 800CBC9C 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0CC8A0 800CBCA0 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0CC8A4 800CBCA4 27BD0030 */  addiu $sp, $sp, 0x30
/* 0CC8A8 800CBCA8 03E00008 */  jr    $ra
/* 0CC8AC 800CBCAC 00000000 */   nop   
