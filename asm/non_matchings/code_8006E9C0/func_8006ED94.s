glabel func_8006ED94
/* 06F994 8006ED94 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 06F998 8006ED98 AFA40030 */  sw    $a0, 0x30($sp)
/* 06F99C 8006ED9C AFA50034 */  sw    $a1, 0x34($sp)
/* 06F9A0 8006EDA0 00A72021 */  addu  $a0, $a1, $a3
/* 06F9A4 8006EDA4 24C6000F */  addiu $a2, $a2, 0xf
/* 06F9A8 8006EDA8 2401FFF0 */  li    $at, -16
/* 06F9AC 8006EDAC AFBF0024 */  sw    $ra, 0x24($sp)
/* 06F9B0 8006EDB0 00C12824 */  and   $a1, $a2, $at
/* 06F9B4 8006EDB4 AFA50038 */  sw    $a1, 0x38($sp)
/* 06F9B8 8006EDB8 0C0336E0 */  jal   osInvalDCache
/* 06F9BC 8006EDBC AFA40028 */   sw    $a0, 0x28($sp)
/* 06F9C0 8006EDC0 8FB80030 */  lw    $t8, 0x30($sp)
/* 06F9C4 8006EDC4 3C0100FF */  lui   $at, (0x00FFFFFF >> 16) # lui $at, 0xff
/* 06F9C8 8006EDC8 8FA90028 */  lw    $t1, 0x28($sp)
/* 06F9CC 8006EDCC 8FAA0038 */  lw    $t2, 0x38($sp)
/* 06F9D0 8006EDD0 3421FFFF */  ori   $at, (0x00FFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 06F9D4 8006EDD4 3C080064 */  lui   $t0, %hi(_other_texturesSegmentRomStart) # $t0, 0x64
/* 06F9D8 8006EDD8 3C0B8015 */  lui   $t3, %hi(gDmaMesgQueue) # $t3, 0x8015
/* 06F9DC 8006EDDC 256BEF58 */  addiu $t3, %lo(gDmaMesgQueue) # addiu $t3, $t3, -0x10a8
/* 06F9E0 8006EDE0 25081F70 */  addiu $t0, %lo(_other_texturesSegmentRomStart) # addiu $t0, $t0, 0x1f70
/* 06F9E4 8006EDE4 3C048015 */  lui   $a0, %hi(gDmaIoMesg) # $a0, 0x8015
/* 06F9E8 8006EDE8 0301C824 */  and   $t9, $t8, $at
/* 06F9EC 8006EDEC 03283821 */  addu  $a3, $t9, $t0
/* 06F9F0 8006EDF0 2484F0A0 */  addiu $a0, %lo(gDmaIoMesg) # addiu $a0, $a0, -0xf60
/* 06F9F4 8006EDF4 AFAB0018 */  sw    $t3, 0x18($sp)
/* 06F9F8 8006EDF8 00002825 */  move  $a1, $zero
/* 06F9FC 8006EDFC 00003025 */  move  $a2, $zero
/* 06FA00 8006EE00 AFA90010 */  sw    $t1, 0x10($sp)
/* 06FA04 8006EE04 0C03370C */  jal   osPiStartDma
/* 06FA08 8006EE08 AFAA0014 */   sw    $t2, 0x14($sp)
/* 06FA0C 8006EE0C 3C048015 */  lui   $a0, %hi(gDmaMesgQueue) # $a0, 0x8015
/* 06FA10 8006EE10 3C058015 */  lui   $a1, %hi(gMainReceivedMesg) # $a1, 0x8015
/* 06FA14 8006EE14 24A5F098 */  addiu $a1, %lo(gMainReceivedMesg) # addiu $a1, $a1, -0xf68
/* 06FA18 8006EE18 2484EF58 */  addiu $a0, %lo(gDmaMesgQueue) # addiu $a0, $a0, -0x10a8
/* 06FA1C 8006EE1C 0C0335D4 */  jal   osRecvMesg
/* 06FA20 8006EE20 24060001 */   li    $a2, 1
/* 06FA24 8006EE24 8FA40028 */  lw    $a0, 0x28($sp)
/* 06FA28 8006EE28 0C010034 */  jal   mio0decode
/* 06FA2C 8006EE2C 8FA50034 */   lw    $a1, 0x34($sp)
/* 06FA30 8006EE30 8FBF0024 */  lw    $ra, 0x24($sp)
/* 06FA34 8006EE34 8FA20034 */  lw    $v0, 0x34($sp)
/* 06FA38 8006EE38 27BD0030 */  addiu $sp, $sp, 0x30
/* 06FA3C 8006EE3C 03E00008 */  jr    $ra
/* 06FA40 8006EE40 00000000 */   nop   
