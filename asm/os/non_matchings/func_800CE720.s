# assembler directives
.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel func_800CE720
/* 0CF320 800CE720 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0CF324 800CE724 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CF328 800CE728 AFA40020 */  sw    $a0, 0x20($sp)
/* 0CF32C 800CE72C AFA50024 */  sw    $a1, 0x24($sp)
/* 0CF330 800CE730 AFA60028 */  sw    $a2, 0x28($sp)
/* 0CF334 800CE734 0C034EE8 */  jal   __osSiGetAccess
/* 0CF338 800CE738 AFA0001C */   sw    $zero, 0x1c($sp)
/* 0CF33C 800CE73C 8FA40020 */  lw    $a0, 0x20($sp)
/* 0CF340 800CE740 0C0339F5 */  jal   func_800CE7D4
/* 0CF344 800CE744 8FA50028 */   lw    $a1, 0x28($sp)
/* 0CF348 800CE748 0C034EF9 */  jal   __osSiRelAccess
/* 0CF34C 800CE74C AFA2001C */   sw    $v0, 0x1c($sp)
/* 0CF350 800CE750 8FAE001C */  lw    $t6, 0x1c($sp)
/* 0CF354 800CE754 11C00003 */  beqz  $t6, .L800CE764
/* 0CF358 800CE758 00000000 */   nop   
/* 0CF35C 800CE75C 10000019 */  b     .L800CE7C4
/* 0CF360 800CE760 01C01025 */   move  $v0, $t6
.L800CE764:
/* 0CF364 800CE764 8FAF0020 */  lw    $t7, 0x20($sp)
/* 0CF368 800CE768 8FB80024 */  lw    $t8, 0x24($sp)
/* 0CF36C 800CE76C AF0F0004 */  sw    $t7, 4($t8)
/* 0CF370 800CE770 8FA80024 */  lw    $t0, 0x24($sp)
/* 0CF374 800CE774 8FB90028 */  lw    $t9, 0x28($sp)
/* 0CF378 800CE778 AD190008 */  sw    $t9, 8($t0)
/* 0CF37C 800CE77C 8FA90024 */  lw    $t1, 0x24($sp)
/* 0CF380 800CE780 AD200000 */  sw    $zero, ($t1)
/* 0CF384 800CE784 0C0352D9 */  jal   __osGetId
/* 0CF388 800CE788 8FA40024 */   lw    $a0, 0x24($sp)
/* 0CF38C 800CE78C AFA2001C */  sw    $v0, 0x1c($sp)
/* 0CF390 800CE790 8FAA001C */  lw    $t2, 0x1c($sp)
/* 0CF394 800CE794 11400003 */  beqz  $t2, .L800CE7A4
/* 0CF398 800CE798 00000000 */   nop   
/* 0CF39C 800CE79C 10000009 */  b     .L800CE7C4
/* 0CF3A0 800CE7A0 01401025 */   move  $v0, $t2
.L800CE7A4:
/* 0CF3A4 800CE7A4 0C035494 */  jal   osPfsChecker
/* 0CF3A8 800CE7A8 8FA40024 */   lw    $a0, 0x24($sp)
/* 0CF3AC 800CE7AC 8FAB0024 */  lw    $t3, 0x24($sp)
/* 0CF3B0 800CE7B0 AFA2001C */  sw    $v0, 0x1c($sp)
/* 0CF3B4 800CE7B4 8D6C0000 */  lw    $t4, ($t3)
/* 0CF3B8 800CE7B8 358D0001 */  ori   $t5, $t4, 1
/* 0CF3BC 800CE7BC AD6D0000 */  sw    $t5, ($t3)
/* 0CF3C0 800CE7C0 8FA2001C */  lw    $v0, 0x1c($sp)
.L800CE7C4:
/* 0CF3C4 800CE7C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CF3C8 800CE7C8 27BD0020 */  addiu $sp, $sp, 0x20
/* 0CF3CC 800CE7CC 03E00008 */  jr    $ra
/* 0CF3D0 800CE7D0 00000000 */   nop   

glabel func_800CE7D4
/* 0CF3D4 800CE7D4 27BDFFC8 */  addiu $sp, $sp, -0x38
/* 0CF3D8 800CE7D8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0CF3DC 800CE7DC AFA40038 */  sw    $a0, 0x38($sp)
/* 0CF3E0 800CE7E0 AFA5003C */  sw    $a1, 0x3c($sp)
/* 0CF3E4 800CE7E4 AFA00034 */  sw    $zero, 0x34($sp)
/* 0CF3E8 800CE7E8 0C033954 */  jal   __osPfsRequestData
/* 0CF3EC 800CE7EC 00002025 */   move  $a0, $zero
/* 0CF3F0 800CE7F0 3C058019 */  lui   $a1, %hi(__osPfsPifRam) # $a1, 0x8019
/* 0CF3F4 800CE7F4 24A56590 */  addiu $a1, %lo(__osPfsPifRam) # addiu $a1, $a1, 0x6590
/* 0CF3F8 800CE7F8 0C034EA8 */  jal   __osSiRawStartDma
/* 0CF3FC 800CE7FC 24040001 */   li    $a0, 1
/* 0CF400 800CE800 AFA20034 */  sw    $v0, 0x34($sp)
/* 0CF404 800CE804 8FA40038 */  lw    $a0, 0x38($sp)
/* 0CF408 800CE808 27A50030 */  addiu $a1, $sp, 0x30
/* 0CF40C 800CE80C 0C0335D4 */  jal   osRecvMesg
/* 0CF410 800CE810 24060001 */   li    $a2, 1
/* 0CF414 800CE814 3C058019 */  lui   $a1, %hi(__osPfsPifRam) # $a1, 0x8019
/* 0CF418 800CE818 24A56590 */  addiu $a1, %lo(__osPfsPifRam) # addiu $a1, $a1, 0x6590
/* 0CF41C 800CE81C 0C034EA8 */  jal   __osSiRawStartDma
/* 0CF420 800CE820 00002025 */   move  $a0, $zero
/* 0CF424 800CE824 AFA20034 */  sw    $v0, 0x34($sp)
/* 0CF428 800CE828 8FA40038 */  lw    $a0, 0x38($sp)
/* 0CF42C 800CE82C 27A50030 */  addiu $a1, $sp, 0x30
/* 0CF430 800CE830 0C0335D4 */  jal   osRecvMesg
/* 0CF434 800CE834 24060001 */   li    $a2, 1
/* 0CF438 800CE838 27A4002F */  addiu $a0, $sp, 0x2f
/* 0CF43C 800CE83C 0C033993 */  jal   __osPfsGetInitData
/* 0CF440 800CE840 27A5001C */   addiu $a1, $sp, 0x1c
/* 0CF444 800CE844 8FAE003C */  lw    $t6, 0x3c($sp)
/* 0CF448 800CE848 000E7880 */  sll   $t7, $t6, 2
/* 0CF44C 800CE84C 03AFC021 */  addu  $t8, $sp, $t7
/* 0CF450 800CE850 9318001E */  lbu   $t8, 0x1e($t8)
/* 0CF454 800CE854 33190001 */  andi  $t9, $t8, 1
/* 0CF458 800CE858 13200006 */  beqz  $t9, .L800CE874
/* 0CF45C 800CE85C 00000000 */   nop   
/* 0CF460 800CE860 33080002 */  andi  $t0, $t8, 2
/* 0CF464 800CE864 11000003 */  beqz  $t0, .L800CE874
/* 0CF468 800CE868 00000000 */   nop   
/* 0CF46C 800CE86C 10000018 */  b     .L800CE8D0
/* 0CF470 800CE870 24020002 */   li    $v0, 2
.L800CE874:
/* 0CF474 800CE874 8FA9003C */  lw    $t1, 0x3c($sp)
/* 0CF478 800CE878 27AB001C */  addiu $t3, $sp, 0x1c
/* 0CF47C 800CE87C 00095080 */  sll   $t2, $t1, 2
/* 0CF480 800CE880 014B6021 */  addu  $t4, $t2, $t3
/* 0CF484 800CE884 918D0003 */  lbu   $t5, 3($t4)
/* 0CF488 800CE888 15A00005 */  bnez  $t5, .L800CE8A0
/* 0CF48C 800CE88C 00000000 */   nop   
/* 0CF490 800CE890 918E0002 */  lbu   $t6, 2($t4)
/* 0CF494 800CE894 31CF0001 */  andi  $t7, $t6, 1
/* 0CF498 800CE898 15E00003 */  bnez  $t7, .L800CE8A8
/* 0CF49C 800CE89C 00000000 */   nop   
.L800CE8A0:
/* 0CF4A0 800CE8A0 1000000B */  b     .L800CE8D0
/* 0CF4A4 800CE8A4 24020001 */   li    $v0, 1
.L800CE8A8:
/* 0CF4A8 800CE8A8 8FB9003C */  lw    $t9, 0x3c($sp)
/* 0CF4AC 800CE8AC 0019C080 */  sll   $t8, $t9, 2
/* 0CF4B0 800CE8B0 03B84021 */  addu  $t0, $sp, $t8
/* 0CF4B4 800CE8B4 9108001E */  lbu   $t0, 0x1e($t0)
/* 0CF4B8 800CE8B8 31090004 */  andi  $t1, $t0, 4
/* 0CF4BC 800CE8BC 11200003 */  beqz  $t1, .L800CE8CC
/* 0CF4C0 800CE8C0 00000000 */   nop   
/* 0CF4C4 800CE8C4 10000002 */  b     .L800CE8D0
/* 0CF4C8 800CE8C8 24020004 */   li    $v0, 4
.L800CE8CC:
/* 0CF4CC 800CE8CC 8FA20034 */  lw    $v0, 0x34($sp)
.L800CE8D0:
/* 0CF4D0 800CE8D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0CF4D4 800CE8D4 27BD0038 */  addiu $sp, $sp, 0x38
/* 0CF4D8 800CE8D8 03E00008 */  jr    $ra
/* 0CF4DC 800CE8DC 00000000 */   nop   
