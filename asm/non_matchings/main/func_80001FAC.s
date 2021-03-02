glabel func_80001FAC
/* 002BAC 80001FAC 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 002BB0 80001FB0 AFB40028 */  sw    $s4, 0x28($sp)
/* 002BB4 80001FB4 3C148015 */  lui   $s4, %hi(D_8014EFD0) # $s4, 0x8015
/* 002BB8 80001FB8 AFB5002C */  sw    $s5, 0x2c($sp)
/* 002BBC 80001FBC 27B50040 */  addiu $s5, $sp, 0x40
/* 002BC0 80001FC0 2694EFD0 */  addiu $s4, %lo(D_8014EFD0) # addiu $s4, $s4, -0x1030
/* 002BC4 80001FC4 AFBF0034 */  sw    $ra, 0x34($sp)
/* 002BC8 80001FC8 AFB60030 */  sw    $s6, 0x30($sp)
/* 002BCC 80001FCC AFB30024 */  sw    $s3, 0x24($sp)
/* 002BD0 80001FD0 AFB20020 */  sw    $s2, 0x20($sp)
/* 002BD4 80001FD4 AFB1001C */  sw    $s1, 0x1c($sp)
/* 002BD8 80001FD8 AFB00018 */  sw    $s0, 0x18($sp)
/* 002BDC 80001FDC 02802025 */  move  $a0, $s4
/* 002BE0 80001FE0 02A02825 */  move  $a1, $s5
/* 002BE4 80001FE4 0C0335D4 */  jal   osRecvMesg
/* 002BE8 80001FE8 00003025 */   move  $a2, $zero
/* 002BEC 80001FEC 2410FFFF */  li    $s0, -1
/* 002BF0 80001FF0 10500018 */  beq   $v0, $s0, .L80002054
/* 002BF4 80001FF4 3C16800E */   lui   $s6, %hi(sNextDisplaySPTask) # $s6, 0x800e
/* 002BF8 80001FF8 3C13800E */  lui   $s3, %hi(D_800DC4B4) # $s3, 0x800e
/* 002BFC 80001FFC 2673C4B4 */  addiu $s3, %lo(D_800DC4B4) # addiu $s3, $s3, -0x3b4c
/* 002C00 80002000 26D6C4B8 */  addiu $s6, %lo(sNextDisplaySPTask) # addiu $s6, $s6, -0x3b48
/* 002C04 80002004 24120002 */  li    $s2, 2
/* 002C08 80002008 24110001 */  li    $s1, 1
/* 002C0C 8000200C 8FAE0040 */  lw    $t6, 0x40($sp)
.L80002010:
/* 002C10 80002010 02802025 */  move  $a0, $s4
/* 002C14 80002014 02A02825 */  move  $a1, $s5
/* 002C18 80002018 ADC00048 */  sw    $zero, 0x48($t6)
/* 002C1C 8000201C 8FAF0040 */  lw    $t7, 0x40($sp)
/* 002C20 80002020 8FB90040 */  lw    $t9, 0x40($sp)
/* 002C24 80002024 8DE20000 */  lw    $v0, ($t7)
/* 002C28 80002028 50510006 */  beql  $v0, $s1, .L80002044
/* 002C2C 8000202C AED90000 */   sw    $t9, ($s6)
/* 002C30 80002030 14520004 */  bne   $v0, $s2, .L80002044
/* 002C34 80002034 8FB80040 */   lw    $t8, 0x40($sp)
/* 002C38 80002038 10000002 */  b     .L80002044
/* 002C3C 8000203C AE780000 */   sw    $t8, ($s3)
/* 002C40 80002040 AED90000 */  sw    $t9, ($s6)
.L80002044:
/* 002C44 80002044 0C0335D4 */  jal   osRecvMesg
/* 002C48 80002048 00003025 */   move  $a2, $zero
/* 002C4C 8000204C 5450FFF0 */  bnel  $v0, $s0, .L80002010
/* 002C50 80002050 8FAE0040 */   lw    $t6, 0x40($sp)
.L80002054:
/* 002C54 80002054 3C03800E */  lui   $v1, %hi(sCurrentAudioSPTask) # $v1, 0x800e
/* 002C58 80002058 2463C4AC */  addiu $v1, %lo(sCurrentAudioSPTask) # addiu $v1, $v1, -0x3b54
/* 002C5C 8000205C 8C680000 */  lw    $t0, ($v1)
/* 002C60 80002060 3C13800E */  lui   $s3, %hi(D_800DC4B4) # $s3, 0x800e
/* 002C64 80002064 3C16800E */  lui   $s6, %hi(sNextDisplaySPTask) # $s6, 0x800e
/* 002C68 80002068 26D6C4B8 */  addiu $s6, %lo(sNextDisplaySPTask) # addiu $s6, $s6, -0x3b48
/* 002C6C 8000206C 15000006 */  bnez  $t0, .L80002088
/* 002C70 80002070 2673C4B4 */   addiu $s3, %lo(D_800DC4B4) # addiu $s3, $s3, -0x3b4c
/* 002C74 80002074 8E620000 */  lw    $v0, ($s3)
/* 002C78 80002078 10400003 */  beqz  $v0, .L80002088
/* 002C7C 8000207C 00000000 */   nop   
/* 002C80 80002080 AC620000 */  sw    $v0, ($v1)
/* 002C84 80002084 AE600000 */  sw    $zero, ($s3)
.L80002088:
/* 002C88 80002088 3C03800E */  lui   $v1, %hi(sCurrentDisplaySPTask) # $v1, 0x800e
/* 002C8C 8000208C 2463C4B0 */  addiu $v1, %lo(sCurrentDisplaySPTask) # addiu $v1, $v1, -0x3b50
/* 002C90 80002090 8C690000 */  lw    $t1, ($v1)
/* 002C94 80002094 55200007 */  bnel  $t1, $zero, .L800020B4
/* 002C98 80002098 8FBF0034 */   lw    $ra, 0x34($sp)
/* 002C9C 8000209C 8EC20000 */  lw    $v0, ($s6)
/* 002CA0 800020A0 50400004 */  beql  $v0, $zero, .L800020B4
/* 002CA4 800020A4 8FBF0034 */   lw    $ra, 0x34($sp)
/* 002CA8 800020A8 AC620000 */  sw    $v0, ($v1)
/* 002CAC 800020AC AEC00000 */  sw    $zero, ($s6)
/* 002CB0 800020B0 8FBF0034 */  lw    $ra, 0x34($sp)
.L800020B4:
/* 002CB4 800020B4 8FB00018 */  lw    $s0, 0x18($sp)
/* 002CB8 800020B8 8FB1001C */  lw    $s1, 0x1c($sp)
/* 002CBC 800020BC 8FB20020 */  lw    $s2, 0x20($sp)
/* 002CC0 800020C0 8FB30024 */  lw    $s3, 0x24($sp)
/* 002CC4 800020C4 8FB40028 */  lw    $s4, 0x28($sp)
/* 002CC8 800020C8 8FB5002C */  lw    $s5, 0x2c($sp)
/* 002CCC 800020CC 8FB60030 */  lw    $s6, 0x30($sp)
/* 002CD0 800020D0 03E00008 */  jr    $ra
/* 002CD4 800020D4 27BD0048 */   addiu $sp, $sp, 0x48
