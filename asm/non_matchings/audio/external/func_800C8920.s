glabel func_800C8920
/* 0C9520 800C8920 3C0E800F */  lui   $t6, %hi(D_800EA168) # $t6, 0x800f
/* 0C9524 800C8924 91CEA168 */  lbu   $t6, %lo(D_800EA168)($t6)
/* 0C9528 800C8928 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C952C 800C892C AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C9530 800C8930 03A0F025 */  move  $fp, $sp
/* 0C9534 800C8934 11C00026 */  beqz  $t6, .L800C89D0
/* 0C9538 800C8938 AFBF002C */   sw    $ra, 0x2c($sp)
/* 0C953C 800C893C 3C03800F */  lui   $v1, %hi(gPlayers) # $v1, 0x800f
/* 0C9540 800C8940 24636990 */  addiu $v1, %lo(gPlayers) # addiu $v1, $v1, 0x6990
/* 0C9544 800C8944 8C6F00BC */  lw    $t7, 0xbc($v1)
/* 0C9548 800C8948 3C024000 */  lui   $v0, 0x4000
/* 0C954C 800C894C 01E2C024 */  and   $t8, $t7, $v0
/* 0C9550 800C8950 50580020 */  beql  $v0, $t8, .L800C89D4
/* 0C9554 800C8954 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C9558 800C8958 8C790E94 */  lw    $t9, 0xe94($v1)
/* 0C955C 800C895C 03224024 */  and   $t0, $t9, $v0
/* 0C9560 800C8960 5048001C */  beql  $v0, $t0, .L800C89D4
/* 0C9564 800C8964 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C9568 800C8968 8C691C6C */  lw    $t1, 0x1c6c($v1)
/* 0C956C 800C896C 01225024 */  and   $t2, $t1, $v0
/* 0C9570 800C8970 504A0018 */  beql  $v0, $t2, .L800C89D4
/* 0C9574 800C8974 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C9578 800C8978 8C6B2A44 */  lw    $t3, 0x2a44($v1)
/* 0C957C 800C897C 01626024 */  and   $t4, $t3, $v0
/* 0C9580 800C8980 504C0014 */  beql  $v0, $t4, .L800C89D4
/* 0C9584 800C8984 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C9588 800C8988 8C6D381C */  lw    $t5, 0x381c($v1)
/* 0C958C 800C898C 01A27024 */  and   $t6, $t5, $v0
/* 0C9590 800C8990 504E0010 */  beql  $v0, $t6, .L800C89D4
/* 0C9594 800C8994 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C9598 800C8998 8C6F45F4 */  lw    $t7, 0x45f4($v1)
/* 0C959C 800C899C 01E2C024 */  and   $t8, $t7, $v0
/* 0C95A0 800C89A0 5058000C */  beql  $v0, $t8, .L800C89D4
/* 0C95A4 800C89A4 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C95A8 800C89A8 8C7953CC */  lw    $t9, 0x53cc($v1)
/* 0C95AC 800C89AC 03224024 */  and   $t0, $t9, $v0
/* 0C95B0 800C89B0 50480008 */  beql  $v0, $t0, .L800C89D4
/* 0C95B4 800C89B4 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C95B8 800C89B8 8C6961A4 */  lw    $t1, 0x61a4($v1)
/* 0C95BC 800C89BC 01225024 */  and   $t2, $t1, $v0
/* 0C95C0 800C89C0 504A0004 */  beql  $v0, $t2, .L800C89D4
/* 0C95C4 800C89C4 8FDF002C */   lw    $ra, 0x2c($fp)
/* 0C95C8 800C89C8 0C032B02 */  jal   func_800CAC08
/* 0C95CC 800C89CC 00000000 */   nop   
.L800C89D0:
/* 0C95D0 800C89D0 8FDF002C */  lw    $ra, 0x2c($fp)
.L800C89D4:
/* 0C95D4 800C89D4 03C0E825 */  move  $sp, $fp
/* 0C95D8 800C89D8 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C95DC 800C89DC 03E00008 */  jr    $ra
/* 0C95E0 800C89E0 27BD0030 */   addiu $sp, $sp, 0x30
