# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel osSyncPrintf
/* 0D0360 800CF760 AFA40000 */  sw    $a0, ($sp)
/* 0D0364 800CF764 AFA50004 */  sw    $a1, 4($sp)
/* 0D0368 800CF768 AFA60008 */  sw    $a2, 8($sp)
/* 0D036C 800CF76C 03E00008 */  jr    $ra
/* 0D0370 800CF770 24020001 */   li    $v0, 1

glabel func_800CF774
/* 0D0374 800CF774 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0D0378 800CF778 AFA40020 */  sw    $a0, 0x20($sp)
/* 0D037C 800CF77C AFBF0014 */  sw    $ra, 0x14($sp)
/* 0D0380 800CF780 AFA50024 */  sw    $a1, 0x24($sp)
/* 0D0384 800CF784 AFA60028 */  sw    $a2, 0x28($sp)
/* 0D0388 800CF788 AFA7002C */  sw    $a3, 0x2c($sp)
/* 0D038C 800CF78C 3C04800D */  lui   $a0, %hi(osSyncPrintf) # $a0, 0x800d
/* 0D0390 800CF790 2484F760 */  addiu $a0, %lo(osSyncPrintf) # addiu $a0, $a0, -0x8a0
/* 0D0394 800CF794 27A70024 */  addiu $a3, $sp, 0x24
/* 0D0398 800CF798 8FA60020 */  lw    $a2, 0x20($sp)
/* 0D039C 800CF79C 0C035AA4 */  jal   _Printf
/* 0D03A0 800CF7A0 00002825 */   move  $a1, $zero
/* 0D03A4 800CF7A4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0D03A8 800CF7A8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0D03AC 800CF7AC 03E00008 */  jr    $ra
/* 0D03B0 800CF7B0 00000000 */   nop   

/* 0D03B4 800CF7B4 00000000 */  nop   
/* 0D03B8 800CF7B8 00000000 */  nop   
/* 0D03BC 800CF7BC 00000000 */  nop   