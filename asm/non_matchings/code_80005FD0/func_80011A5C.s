glabel func_80011A5C
/* 01265C 80011A5C 27BDFFD8 */  addiu $sp, $sp, -0x28
/* 012660 80011A60 AFB20020 */  sw    $s2, 0x20($sp)
/* 012664 80011A64 AFB1001C */  sw    $s1, 0x1c($sp)
/* 012668 80011A68 AFB00018 */  sw    $s0, 0x18($sp)
/* 01266C 80011A6C 3C108016 */  lui   $s0, %hi(D_80162EB8) # $s0, 0x8016
/* 012670 80011A70 3C11800E */  lui   $s1, %hi(D_800DC720)
/* 012674 80011A74 3C128016 */  lui   $s2, %hi(D_80162F08) # $s2, 0x8016
/* 012678 80011A78 AFBF0024 */  sw    $ra, 0x24($sp)
/* 01267C 80011A7C 26522F08 */  addiu $s2, %lo(D_80162F08) # addiu $s2, $s2, 0x2f08
/* 012680 80011A80 2631C720 */  addiu $s1, %lo(D_800DC720) # addiu $s1, $s1, -0x38e0
/* 012684 80011A84 26102EB8 */  addiu $s0, %lo(D_80162EB8) # addiu $s0, $s0, 0x2eb8
.L80011A88:
/* 012688 80011A88 0C026455 */  jal   segmented_to_virtual_dupe_dupe_2
/* 01268C 80011A8C 8E240000 */   lw    $a0, ($s1)
/* 012690 80011A90 26100004 */  addiu $s0, $s0, 4
/* 012694 80011A94 26310004 */  addiu $s1, $s1, 4
/* 012698 80011A98 1612FFFB */  bne   $s0, $s2, .L80011A88
/* 01269C 80011A9C AE02FFFC */   sw    $v0, -4($s0)
/* 0126A0 80011AA0 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0126A4 80011AA4 8FB00018 */  lw    $s0, 0x18($sp)
/* 0126A8 80011AA8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 0126AC 80011AAC 8FB20020 */  lw    $s2, 0x20($sp)
/* 0126B0 80011AB0 03E00008 */  jr    $ra
/* 0126B4 80011AB4 27BD0028 */   addiu $sp, $sp, 0x28
