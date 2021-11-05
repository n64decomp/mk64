glabel func_802B2EBC
/* 11C4CC 802B2EBC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 11C4D0 802B2EC0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 11C4D4 802B2EC4 0C02796F */  jal   func_8009E5BC
/* 11C4D8 802B2EC8 AFA40018 */   sw    $a0, 0x18($sp)
/* 11C4DC 802B2ECC 8FA60018 */  lw    $a2, 0x18($sp)
/* 11C4E0 802B2ED0 3C18800E */  lui   $t8, %hi(D_800DC4DC) # $t8, 0x800e
/* 11C4E4 802B2ED4 94CE0000 */  lhu   $t6, ($a2)
/* 11C4E8 802B2ED8 31CF4000 */  andi  $t7, $t6, 0x4000
/* 11C4EC 802B2EDC 11E0000B */  beqz  $t7, .L802B2F0C
/* 11C4F0 802B2EE0 00000000 */   nop   
/* 11C4F4 802B2EE4 8F18C4DC */  lw    $t8, %lo(D_800DC4DC)($t8)
/* 11C4F8 802B2EE8 24010DD8 */  li    $at, 3544
/* 11C4FC 802B2EEC AFA60018 */  sw    $a2, 0x18($sp)
/* 11C500 802B2EF0 00D82023 */  subu  $a0, $a2, $t8
/* 11C504 802B2EF4 0081001A */  div   $zero, $a0, $at
/* 11C508 802B2EF8 0000C812 */  mflo  $t9
/* 11C50C 802B2EFC 332400FF */  andi  $a0, $t9, 0xff
/* 11C510 802B2F00 0C032AD3 */  jal   func_800CAB4C
/* 11C514 802B2F04 00000000 */   nop   
/* 11C518 802B2F08 8FA60018 */  lw    $a2, 0x18($sp)
.L802B2F0C:
/* 11C51C 802B2F0C 3C03800F */  lui   $v1, %hi(gPlayers) # $v1, 0x800f
/* 11C520 802B2F10 3C04800F */  lui   $a0, %hi(gPlayers+0xDD8) # $a0, 0x800f
/* 11C524 802B2F14 3C058010 */  lui   $a1, %hi(gPlayers+0x1BB0) # $a1, 0x8010
/* 11C528 802B2F18 3C028010 */  lui   $v0, %hi(gPlayers+0x2988) # $v0, 0x8010
/* 11C52C 802B2F1C 3C078010 */  lui   $a3, %hi(gGfxPools+0x2978) # $a3, 0x8010
/* 11C530 802B2F20 24E701D8 */  addiu $a3, %lo(gGfxPools+0x2978) # addiu $a3, $a3, 0x1d8
/* 11C534 802B2F24 24429318 */  addiu $v0, %lo(gPlayers+0x2988) # addiu $v0, $v0, -0x6ce8
/* 11C538 802B2F28 24A58540 */  addiu $a1, %lo(gPlayers+0x1BB0) # addiu $a1, $a1, -0x7ac0
/* 11C53C 802B2F2C 24847768 */  addiu $a0, %lo(gPlayers+0xDD8) # addiu $a0, $a0, 0x7768
/* 11C540 802B2F30 24636990 */  addiu $v1, %lo(gPlayers) # addiu $v1, $v1, 0x6990
.L802B2F34:
/* 11C544 802B2F34 10C30004 */  beq   $a2, $v1, .L802B2F48
/* 11C548 802B2F38 00000000 */   nop   
/* 11C54C 802B2F3C 8C69000C */  lw    $t1, 0xc($v1)
/* 11C550 802B2F40 352A4000 */  ori   $t2, $t1, 0x4000
/* 11C554 802B2F44 AC6A000C */  sw    $t2, 0xc($v1)
.L802B2F48:
/* 11C558 802B2F48 10C40004 */  beq   $a2, $a0, .L802B2F5C
/* 11C55C 802B2F4C 24633760 */   addiu $v1, $v1, 0x3760
/* 11C560 802B2F50 8C8B000C */  lw    $t3, 0xc($a0)
/* 11C564 802B2F54 356C4000 */  ori   $t4, $t3, 0x4000
/* 11C568 802B2F58 AC8C000C */  sw    $t4, 0xc($a0)
.L802B2F5C:
/* 11C56C 802B2F5C 10C50004 */  beq   $a2, $a1, .L802B2F70
/* 11C570 802B2F60 24843760 */   addiu $a0, $a0, 0x3760
/* 11C574 802B2F64 8CAD000C */  lw    $t5, 0xc($a1)
/* 11C578 802B2F68 35AE4000 */  ori   $t6, $t5, 0x4000
/* 11C57C 802B2F6C ACAE000C */  sw    $t6, 0xc($a1)
.L802B2F70:
/* 11C580 802B2F70 50C20005 */  beql  $a2, $v0, .L802B2F88
/* 11C584 802B2F74 24423760 */   addiu $v0, $v0, 0x3760
/* 11C588 802B2F78 8C4F000C */  lw    $t7, 0xc($v0)
/* 11C58C 802B2F7C 35F84000 */  ori   $t8, $t7, 0x4000
/* 11C590 802B2F80 AC58000C */  sw    $t8, 0xc($v0)
/* 11C594 802B2F84 24423760 */  addiu $v0, $v0, 0x3760
.L802B2F88:
/* 11C598 802B2F88 1447FFEA */  bne   $v0, $a3, .L802B2F34
/* 11C59C 802B2F8C 24A53760 */   addiu $a1, $a1, 0x3760
/* 11C5A0 802B2F90 8FBF0014 */  lw    $ra, 0x14($sp)
/* 11C5A4 802B2F94 27BD0018 */  addiu $sp, $sp, 0x18
/* 11C5A8 802B2F98 03E00008 */  jr    $ra
/* 11C5AC 802B2F9C 00000000 */   nop   
