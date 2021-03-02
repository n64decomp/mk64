glabel init_controllers
/* 0014A4 800008A4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0014A8 800008A8 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0014AC 800008AC 3C048015 */  lui   $a0, %hi(gSIEventMesgQueue) # $a0, 0x8015
/* 0014B0 800008B0 3C058015 */  lui   $a1, %hi(gSIEventMesgBuf) # $a1, 0x8015
/* 0014B4 800008B4 24A5F0D0 */  addiu $a1, %lo(gSIEventMesgBuf) # addiu $a1, $a1, -0xf30
/* 0014B8 800008B8 2484F0B8 */  addiu $a0, %lo(gSIEventMesgQueue) # addiu $a0, $a0, -0xf48
/* 0014BC 800008BC 0C033358 */  jal   osCreateMesgQueue
/* 0014C0 800008C0 24060003 */   li    $a2, 3
/* 0014C4 800008C4 3C058015 */  lui   $a1, %hi(gSIEventMesgQueue) # $a1, 0x8015
/* 0014C8 800008C8 3C063333 */  lui   $a2, (0x33333333 >> 16) # lui $a2, 0x3333
/* 0014CC 800008CC 34C63333 */  ori   $a2, (0x33333333 & 0xFFFF) # ori $a2, $a2, 0x3333
/* 0014D0 800008D0 24A5F0B8 */  addiu $a1, %lo(gSIEventMesgQueue) # addiu $a1, $a1, -0xf48
/* 0014D4 800008D4 0C033380 */  jal   osSetEventMesg
/* 0014D8 800008D8 24040005 */   li    $a0, 5
/* 0014DC 800008DC 3C048015 */  lui   $a0, %hi(gSIEventMesgQueue) # $a0, 0x8015
/* 0014E0 800008E0 3C058015 */  lui   $a1, %hi(gControllerBits) # $a1, 0x8015
/* 0014E4 800008E4 3C068015 */  lui   $a2, %hi(gControllerStatuses) # $a2, 0x8015
/* 0014E8 800008E8 24C6F0E0 */  addiu $a2, %lo(gControllerStatuses) # addiu $a2, $a2, -0xf20
/* 0014EC 800008EC 24A5F108 */  addiu $a1, %lo(gControllerBits) # addiu $a1, $a1, -0xef8
/* 0014F0 800008F0 0C03344C */  jal   osContInit
/* 0014F4 800008F4 2484F0B8 */   addiu $a0, %lo(gSIEventMesgQueue) # addiu $a0, $a0, -0xf48
/* 0014F8 800008F8 3C0E8015 */  lui   $t6, %hi(gControllerBits) # $t6, 0x8015
/* 0014FC 800008FC 91CEF108 */  lbu   $t6, %lo(gControllerBits)($t6)
/* 001500 80000900 24180001 */  li    $t8, 1
/* 001504 80000904 3C018016 */  lui   $at, %hi(D_801625EA) # 0x8016
/* 001508 80000908 31CF0001 */  andi  $t7, $t6, 1
/* 00150C 8000090C 15E00004 */  bnez  $t7, .L80000920
/* 001510 80000910 00000000 */   nop   
/* 001514 80000914 3C018016 */  lui   $at, %hi(D_801625EA) # $at, 0x8016
/* 001518 80000918 10000002 */  b     .L80000924
/* 00151C 8000091C A43825EA */   sh    $t8, %lo(D_801625EA)($at)
.L80000920:
/* 001520 80000920 A42025EA */  sh    $zero, %lo(D_801625EA)($at)
.L80000924:
/* 001524 80000924 8FBF0014 */  lw    $ra, 0x14($sp)
/* 001528 80000928 27BD0018 */  addiu $sp, $sp, 0x18
/* 00152C 8000092C 03E00008 */  jr    $ra
/* 001530 80000930 00000000 */   nop   
