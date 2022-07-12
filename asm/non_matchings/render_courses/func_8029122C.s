glabel func_8029122C
/* 0FA83C 8029122C 27BDFD90 */  addiu $sp, $sp, -0x270
/* 0FA840 80291230 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FA844 80291234 AFA40270 */  sw    $a0, 0x270($sp)
/* 0FA848 80291238 8C8F0008 */  lw    $t7, 8($a0)
/* 0FA84C 8029123C AFA50274 */  sw    $a1, 0x274($sp)
/* 0FA850 80291240 0C0A8F8F */  jal   init_rdp
/* 0FA854 80291244 AFAF0268 */   sw    $t7, 0x268($sp)
/* 0FA858 80291248 8FA80270 */  lw    $t0, 0x270($sp)
/* 0FA85C 8029124C 8FA50274 */  lw    $a1, 0x274($sp)
/* 0FA860 80291250 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FA864 80291254 85180038 */  lh    $t8, 0x38($t0)
/* 0FA868 80291258 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FA86C 8029125C 24010001 */  li    $at, 1
/* 0FA870 80291260 A7B8021A */  sh    $t8, 0x21a($sp)
/* 0FA874 80291264 8D190004 */  lw    $t9, 4($t0)
/* 0FA878 80291268 3C180103 */  lui   $t8, (0x01030040 >> 16) # lui $t8, 0x103
/* 0FA87C 8029126C 37180040 */  ori   $t8, (0x01030040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 0FA880 80291270 872E0026 */  lh    $t6, 0x26($t9)
/* 0FA884 80291274 27A40228 */  addiu $a0, $sp, 0x228
/* 0FA888 80291278 A7AE0218 */  sh    $t6, 0x218($sp)
/* 0FA88C 8029127C 10A0000B */  beqz  $a1, .L802912AC
/* 0FA890 80291280 850B0036 */   lh    $t3, 0x36($t0)
/* 0FA894 80291284 10A10020 */  beq   $a1, $at, .L80291308
/* 0FA898 80291288 3C068015 */   lui   $a2, %hi(gDisplayListHead) # 0x8015
/* 0FA89C 8029128C 24010002 */  li    $at, 2
/* 0FA8A0 80291290 10A10037 */  beq   $a1, $at, .L80291370
/* 0FA8A4 80291294 3C068015 */   lui   $a2, %hi(gDisplayListHead) # 0x8015
/* 0FA8A8 80291298 24010003 */  li    $at, 3
/* 0FA8AC 8029129C 10A1004E */  beq   $a1, $at, .L802913D8
/* 0FA8B0 802912A0 3C068015 */   lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FA8B4 802912A4 10000065 */  b     .L8029143C
/* 0FA8B8 802912A8 00000000 */   nop
.L802912AC:
/* 0FA8BC 802912AC 8CC30000 */  lw    $v1, ($a2)
/* 0FA8C0 802912B0 3C058015 */  lui   $a1, %hi(gGfxPool) # $a1, 0x8015
/* 0FA8C4 802912B4 24A5EF40 */  addiu $a1, %lo(gGfxPool) # addiu $a1, $a1, -0x10c0
/* 0FA8C8 802912B8 246F0008 */  addiu $t7, $v1, 8
/* 0FA8CC 802912BC ACCF0000 */  sw    $t7, ($a2)
/* 0FA8D0 802912C0 AC780000 */  sw    $t8, ($v1)
/* 0FA8D4 802912C4 8CB90000 */  lw    $t9, ($a1)
/* 0FA8D8 802912C8 3C071FFF */  lui   $a3, (0x1FFFFFFF >> 16) # lui $a3, 0x1fff
/* 0FA8DC 802912CC 34E7FFFF */  ori   $a3, (0x1FFFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* 0FA8E0 802912D0 272E0040 */  addiu $t6, $t9, 0x40
/* 0FA8E4 802912D4 01C77824 */  and   $t7, $t6, $a3
/* 0FA8E8 802912D8 AC6F0004 */  sw    $t7, 4($v1)
/* 0FA8EC 802912DC 8CC30000 */  lw    $v1, ($a2)
/* 0FA8F0 802912E0 3C190101 */  lui   $t9, (0x01010040 >> 16) # lui $t9, 0x101
/* 0FA8F4 802912E4 37390040 */  ori   $t9, (0x01010040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 0FA8F8 802912E8 24780008 */  addiu $t8, $v1, 8
/* 0FA8FC 802912EC ACD80000 */  sw    $t8, ($a2)
/* 0FA900 802912F0 AC790000 */  sw    $t9, ($v1)
/* 0FA904 802912F4 8CAE0000 */  lw    $t6, ($a1)
/* 0FA908 802912F8 25CF01C0 */  addiu $t7, $t6, 0x1c0
/* 0FA90C 802912FC 01E7C024 */  and   $t8, $t7, $a3
/* 0FA910 80291300 1000004E */  b     .L8029143C
/* 0FA914 80291304 AC780004 */   sw    $t8, 4($v1)
.L80291308:
/* 0FA918 80291308 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FA91C 8029130C 8CC30000 */  lw    $v1, ($a2)
/* 0FA920 80291310 3C0E0103 */  lui   $t6, (0x01030040 >> 16) # lui $t6, 0x103
/* 0FA924 80291314 3C058015 */  lui   $a1, %hi(gGfxPool) # $a1, 0x8015
/* 0FA928 80291318 24790008 */  addiu $t9, $v1, 8
/* 0FA92C 8029131C ACD90000 */  sw    $t9, ($a2)
/* 0FA930 80291320 35CE0040 */  ori   $t6, (0x01030040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 0FA934 80291324 24A5EF40 */  addiu $a1, %lo(gGfxPool) # addiu $a1, $a1, -0x10c0
/* 0FA938 80291328 AC6E0000 */  sw    $t6, ($v1)
/* 0FA93C 8029132C 8CAF0000 */  lw    $t7, ($a1)
/* 0FA940 80291330 3C071FFF */  lui   $a3, (0x1FFFFFFF >> 16) # lui $a3, 0x1fff
/* 0FA944 80291334 34E7FFFF */  ori   $a3, (0x1FFFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* 0FA948 80291338 25F80080 */  addiu $t8, $t7, 0x80
/* 0FA94C 8029133C 0307C824 */  and   $t9, $t8, $a3
/* 0FA950 80291340 AC790004 */  sw    $t9, 4($v1)
/* 0FA954 80291344 8CC30000 */  lw    $v1, ($a2)
/* 0FA958 80291348 3C0F0101 */  lui   $t7, (0x01010040 >> 16) # lui $t7, 0x101
/* 0FA95C 8029134C 35EF0040 */  ori   $t7, (0x01010040 & 0xFFFF) # ori $t7, $t7, 0x40
/* 0FA960 80291350 246E0008 */  addiu $t6, $v1, 8
/* 0FA964 80291354 ACCE0000 */  sw    $t6, ($a2)
/* 0FA968 80291358 AC6F0000 */  sw    $t7, ($v1)
/* 0FA96C 8029135C 8CB80000 */  lw    $t8, ($a1)
/* 0FA970 80291360 27190200 */  addiu $t9, $t8, 0x200
/* 0FA974 80291364 03277024 */  and   $t6, $t9, $a3
/* 0FA978 80291368 10000034 */  b     .L8029143C
/* 0FA97C 8029136C AC6E0004 */   sw    $t6, 4($v1)
.L80291370:
/* 0FA980 80291370 24C60298 */  addiu $a2, $a2, %lo(gDisplayListHead) # 0x298
/* 0FA984 80291374 8CC30000 */  lw    $v1, ($a2)
/* 0FA988 80291378 3C180103 */  lui   $t8, (0x01030040 >> 16) # lui $t8, 0x103
/* 0FA98C 8029137C 3C058015 */  lui   $a1, %hi(gGfxPool) # $a1, 0x8015
/* 0FA990 80291380 246F0008 */  addiu $t7, $v1, 8
/* 0FA994 80291384 ACCF0000 */  sw    $t7, ($a2)
/* 0FA998 80291388 37180040 */  ori   $t8, (0x01030040 & 0xFFFF) # ori $t8, $t8, 0x40
/* 0FA99C 8029138C 24A5EF40 */  addiu $a1, %lo(gGfxPool) # addiu $a1, $a1, -0x10c0
/* 0FA9A0 80291390 AC780000 */  sw    $t8, ($v1)
/* 0FA9A4 80291394 8CB90000 */  lw    $t9, ($a1)
/* 0FA9A8 80291398 3C071FFF */  lui   $a3, (0x1FFFFFFF >> 16) # lui $a3, 0x1fff
/* 0FA9AC 8029139C 34E7FFFF */  ori   $a3, (0x1FFFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* 0FA9B0 802913A0 272E00C0 */  addiu $t6, $t9, 0xc0
/* 0FA9B4 802913A4 01C77824 */  and   $t7, $t6, $a3
/* 0FA9B8 802913A8 AC6F0004 */  sw    $t7, 4($v1)
/* 0FA9BC 802913AC 8CC30000 */  lw    $v1, ($a2)
/* 0FA9C0 802913B0 3C190101 */  lui   $t9, (0x01010040 >> 16) # lui $t9, 0x101
/* 0FA9C4 802913B4 37390040 */  ori   $t9, (0x01010040 & 0xFFFF) # ori $t9, $t9, 0x40
/* 0FA9C8 802913B8 24780008 */  addiu $t8, $v1, 8
/* 0FA9CC 802913BC ACD80000 */  sw    $t8, ($a2)
/* 0FA9D0 802913C0 AC790000 */  sw    $t9, ($v1)
/* 0FA9D4 802913C4 8CAE0000 */  lw    $t6, ($a1)
/* 0FA9D8 802913C8 25CF0240 */  addiu $t7, $t6, 0x240
/* 0FA9DC 802913CC 01E7C024 */  and   $t8, $t7, $a3
/* 0FA9E0 802913D0 1000001A */  b     .L8029143C
/* 0FA9E4 802913D4 AC780004 */   sw    $t8, 4($v1)
.L802913D8:
/* 0FA9E8 802913D8 24C60298 */  addiu $a2, $a2, %lo(gDisplayListHead) # 0x298
/* 0FA9EC 802913DC 8CC30000 */  lw    $v1, ($a2)
/* 0FA9F0 802913E0 3C0E0103 */  lui   $t6, (0x01030040 >> 16) # lui $t6, 0x103
/* 0FA9F4 802913E4 3C058015 */  lui   $a1, %hi(gGfxPool) # $a1, 0x8015
/* 0FA9F8 802913E8 24790008 */  addiu $t9, $v1, 8
/* 0FA9FC 802913EC ACD90000 */  sw    $t9, ($a2)
/* 0FAA00 802913F0 35CE0040 */  ori   $t6, (0x01030040 & 0xFFFF) # ori $t6, $t6, 0x40
/* 0FAA04 802913F4 24A5EF40 */  addiu $a1, %lo(gGfxPool) # addiu $a1, $a1, -0x10c0
/* 0FAA08 802913F8 AC6E0000 */  sw    $t6, ($v1)
/* 0FAA0C 802913FC 8CAF0000 */  lw    $t7, ($a1)
/* 0FAA10 80291400 3C071FFF */  lui   $a3, (0x1FFFFFFF >> 16) # lui $a3, 0x1fff
/* 0FAA14 80291404 34E7FFFF */  ori   $a3, (0x1FFFFFFF & 0xFFFF) # ori $a3, $a3, 0xffff
/* 0FAA18 80291408 25F80100 */  addiu $t8, $t7, 0x100
/* 0FAA1C 8029140C 0307C824 */  and   $t9, $t8, $a3
/* 0FAA20 80291410 AC790004 */  sw    $t9, 4($v1)
/* 0FAA24 80291414 8CC30000 */  lw    $v1, ($a2)
/* 0FAA28 80291418 3C0F0101 */  lui   $t7, (0x01010040 >> 16) # lui $t7, 0x101
/* 0FAA2C 8029141C 35EF0040 */  ori   $t7, (0x01010040 & 0xFFFF) # ori $t7, $t7, 0x40
/* 0FAA30 80291420 246E0008 */  addiu $t6, $v1, 8
/* 0FAA34 80291424 ACCE0000 */  sw    $t6, ($a2)
/* 0FAA38 80291428 AC6F0000 */  sw    $t7, ($v1)
/* 0FAA3C 8029142C 8CB80000 */  lw    $t8, ($a1)
/* 0FAA40 80291430 27190280 */  addiu $t9, $t8, 0x280
/* 0FAA44 80291434 03277024 */  and   $t6, $t9, $a3
/* 0FAA48 80291438 AC6E0004 */  sw    $t6, 4($v1)
.L8029143C:
/* 0FAA4C 8029143C 0C0AD4F2 */  jal   mtxf_identity
/* 0FAA50 80291440 A7AB0216 */   sh    $t3, 0x216($sp)
/* 0FAA54 80291444 27A40228 */  addiu $a0, $sp, 0x228
/* 0FAA58 80291448 0C0AD3FE */  jal   func_802B4FF8
/* 0FAA5C 8029144C 00002825 */   move  $a1, $zero
/* 0FAA60 80291450 3C0F800E */  lui   $t7, %hi(gCurrentCourseId) # $t7, 0x800e
/* 0FAA64 80291454 85EFC5A0 */  lh    $t7, %lo(gCurrentCourseId)($t7)
/* 0FAA68 80291458 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FAA6C 8029145C 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FAA70 80291460 25F8FFFE */  addiu $t8, $t7, -2
/* 0FAA74 80291464 2F010011 */  sltiu $at, $t8, 0x11
/* 0FAA78 80291468 102003FA */  beqz  $at, .L80292454
/* 0FAA7C 8029146C 87AB0216 */   lh    $t3, 0x216($sp)
/* 0FAA80 80291470 0018C080 */  sll   $t8, $t8, 2
/* 0FAA84 80291474 3C01802C */  lui   $at, %hi(jpt_802B92C0)
/* 0FAA88 80291478 00380821 */  addu  $at, $at, $t8
/* 0FAA8C 8029147C 8C3892C0 */  lw    $t8, %lo(jpt_802B92C0)($at)
/* 0FAA90 80291480 03000008 */  jr    $t8
/* 0FAA94 80291484 00000000 */   nop
glabel L80291488
/* 0FAA98 80291488 3C19800E */  lui   $t9, %hi(gActiveScreenMode) # $t9, 0x800e
/* 0FAA9C 8029148C 8F39C52C */  lw    $t9, %lo(gActiveScreenMode)($t9)
/* 0FAAA0 80291490 97A7021A */  lhu   $a3, 0x21a($sp)
/* 0FAAA4 80291494 172003EF */  bnez  $t9, .L80292454
/* 0FAAA8 80291498 28E10006 */   slti  $at, $a3, 6
/* 0FAAAC 8029149C 142003ED */  bnez  $at, .L80292454
/* 0FAAB0 802914A0 28E1000A */   slti  $at, $a3, 0xa
/* 0FAAB4 802914A4 102003EB */  beqz  $at, .L80292454
/* 0FAAB8 802914A8 24010009 */   li    $at, 9
/* 0FAABC 802914AC 14E10008 */  bne   $a3, $at, .L802914D0
/* 0FAAC0 802914B0 97A20218 */   lhu   $v0, 0x218($sp)
/* 0FAAC4 802914B4 3401A000 */  li    $at, 40960
/* 0FAAC8 802914B8 0041082A */  slt   $at, $v0, $at
/* 0FAACC 802914BC 142003E5 */  bnez  $at, .L80292454
/* 0FAAD0 802914C0 3401E001 */   li    $at, 57345
/* 0FAAD4 802914C4 0041082A */  slt   $at, $v0, $at
/* 0FAAD8 802914C8 502003E3 */  beql  $at, $zero, .L80292458
/* 0FAADC 802914CC 8FBF0014 */   lw    $ra, 0x14($sp)
.L802914D0:
/* 0FAAE0 802914D0 8CC30000 */  lw    $v1, ($a2)
/* 0FAAE4 802914D4 3C0F0601 */  lui   $t7, %hi(D_06009228) # $t7, 0x601
/* 0FAAE8 802914D8 3C1F0600 */  lui   $ra, 0x600
/* 0FAAEC 802914DC 246E0008 */  addiu $t6, $v1, 8
/* 0FAAF0 802914E0 ACCE0000 */  sw    $t6, ($a2)
/* 0FAAF4 802914E4 25EF9228 */  addiu $t7, %lo(D_06009228) # addiu $t7, $t7, -0x6dd8
/* 0FAAF8 802914E8 AC6F0004 */  sw    $t7, 4($v1)
/* 0FAAFC 802914EC 100003D9 */  b     .L80292454
/* 0FAB00 802914F0 AC7F0000 */   sw    $ra, ($v1)
glabel L802914F4
/* 0FAB04 802914F4 8CC30000 */  lw    $v1, ($a2)
/* 0FAB08 802914F8 3C19E700 */  lui   $t9, 0xe700
/* 0FAB0C 802914FC 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 0FAB10 80291500 24780008 */  addiu $t8, $v1, 8
/* 0FAB14 80291504 ACD80000 */  sw    $t8, ($a2)
/* 0FAB18 80291508 AC600004 */  sw    $zero, 4($v1)
/* 0FAB1C 8029150C AC790000 */  sw    $t9, ($v1)
/* 0FAB20 80291510 8CC30000 */  lw    $v1, ($a2)
/* 0FAB24 80291514 2418FFFF */  li    $t8, -1
/* 0FAB28 80291518 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 0FAB2C 8029151C 246E0008 */  addiu $t6, $v1, 8
/* 0FAB30 80291520 ACCE0000 */  sw    $t6, ($a2)
/* 0FAB34 80291524 AC780004 */  sw    $t8, 4($v1)
/* 0FAB38 80291528 AC6F0000 */  sw    $t7, ($v1)
/* 0FAB3C 8029152C 8CC30000 */  lw    $v1, ($a2)
/* 0FAB40 80291530 3C0F0002 */  lui   $t7, 2
/* 0FAB44 80291534 3C0EB600 */  lui   $t6, 0xb600
/* 0FAB48 80291538 24790008 */  addiu $t9, $v1, 8
/* 0FAB4C 8029153C ACD90000 */  sw    $t9, ($a2)
/* 0FAB50 80291540 AC6F0004 */  sw    $t7, 4($v1)
/* 0FAB54 80291544 AC6E0000 */  sw    $t6, ($v1)
/* 0FAB58 80291548 8CC30000 */  lw    $v1, ($a2)
/* 0FAB5C 8029154C 3C0E0040 */  lui   $t6, (0x004045D8 >> 16) # lui $t6, 0x40
/* 0FAB60 80291550 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FAB64 80291554 24780008 */  addiu $t8, $v1, 8
/* 0FAB68 80291558 ACD80000 */  sw    $t8, ($a2)
/* 0FAB6C 8029155C 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FAB70 80291560 35CE45D8 */  ori   $t6, (0x004045D8 & 0xFFFF) # ori $t6, $t6, 0x45d8
/* 0FAB74 80291564 AC6E0004 */  sw    $t6, 4($v1)
/* 0FAB78 80291568 AC790000 */  sw    $t9, ($v1)
/* 0FAB7C 8029156C 8CC30000 */  lw    $v1, ($a2)
/* 0FAB80 80291570 3C18C000 */  lui   $t8, 0xc000
/* 0FAB84 80291574 3C0DFC12 */  lui   $t5, (0xFC121824 >> 16) # lui $t5, 0xfc12
/* 0FAB88 80291578 246F0008 */  addiu $t7, $v1, 8
/* 0FAB8C 8029157C ACCF0000 */  sw    $t7, ($a2)
/* 0FAB90 80291580 AC600004 */  sw    $zero, 4($v1)
/* 0FAB94 80291584 AC780000 */  sw    $t8, ($v1)
/* 0FAB98 80291588 8CC30000 */  lw    $v1, ($a2)
/* 0FAB9C 8029158C 3C0EFF33 */  lui   $t6, (0xFF33FFFF >> 16) # lui $t6, 0xff33
/* 0FABA0 80291590 35AD1824 */  ori   $t5, (0xFC121824 & 0xFFFF) # ori $t5, $t5, 0x1824
/* 0FABA4 80291594 24790008 */  addiu $t9, $v1, 8
/* 0FABA8 80291598 ACD90000 */  sw    $t9, ($a2)
/* 0FABAC 8029159C 35CEFFFF */  ori   $t6, (0xFF33FFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 0FABB0 802915A0 AC6E0004 */  sw    $t6, 4($v1)
/* 0FABB4 802915A4 AC6D0000 */  sw    $t5, ($v1)
/* 0FABB8 802915A8 8CC30000 */  lw    $v1, ($a2)
/* 0FABBC 802915AC 3C180700 */  lui   $t8, (0x07000878 >> 16) # lui $t8, 0x700
/* 0FABC0 802915B0 3C1F0600 */  lui   $ra, 0x600
/* 0FABC4 802915B4 246F0008 */  addiu $t7, $v1, 8
/* 0FABC8 802915B8 ACCF0000 */  sw    $t7, ($a2)
/* 0FABCC 802915BC 37180878 */  ori   $t8, (0x07000878 & 0xFFFF) # ori $t8, $t8, 0x878
/* 0FABD0 802915C0 AC780004 */  sw    $t8, 4($v1)
/* 0FABD4 802915C4 AC7F0000 */  sw    $ra, ($v1)
/* 0FABD8 802915C8 8CC30000 */  lw    $v1, ($a2)
/* 0FABDC 802915CC 3C0EB900 */  lui   $t6, (0xB9000002 >> 16) # lui $t6, 0xb900
/* 0FABE0 802915D0 35CE0002 */  ori   $t6, (0xB9000002 & 0xFFFF) # ori $t6, $t6, 2
/* 0FABE4 802915D4 24790008 */  addiu $t9, $v1, 8
/* 0FABE8 802915D8 ACD90000 */  sw    $t9, ($a2)
/* 0FABEC 802915DC AC600004 */  sw    $zero, 4($v1)
/* 0FABF0 802915E0 AC6E0000 */  sw    $t6, ($v1)
/* 0FABF4 802915E4 8CC30000 */  lw    $v1, ($a2)
/* 0FABF8 802915E8 3C18E700 */  lui   $t8, 0xe700
/* 0FABFC 802915EC 246F0008 */  addiu $t7, $v1, 8
/* 0FAC00 802915F0 ACCF0000 */  sw    $t7, ($a2)
/* 0FAC04 802915F4 AC600004 */  sw    $zero, 4($v1)
/* 0FAC08 802915F8 10000396 */  b     .L80292454
/* 0FAC0C 802915FC AC780000 */   sw    $t8, ($v1)
glabel L80291600
/* 0FAC10 80291600 8CC30000 */  lw    $v1, ($a2)
/* 0FAC14 80291604 3C0EE700 */  lui   $t6, 0xe700
/* 0FAC18 80291608 3C18BB00 */  lui   $t8, (0xBB000001 >> 16) # lui $t8, 0xbb00
/* 0FAC1C 8029160C 24790008 */  addiu $t9, $v1, 8
/* 0FAC20 80291610 ACD90000 */  sw    $t9, ($a2)
/* 0FAC24 80291614 AC600004 */  sw    $zero, 4($v1)
/* 0FAC28 80291618 AC6E0000 */  sw    $t6, ($v1)
/* 0FAC2C 8029161C 8CC30000 */  lw    $v1, ($a2)
/* 0FAC30 80291620 2419FFFF */  li    $t9, -1
/* 0FAC34 80291624 37180001 */  ori   $t8, (0xBB000001 & 0xFFFF) # ori $t8, $t8, 1
/* 0FAC38 80291628 246F0008 */  addiu $t7, $v1, 8
/* 0FAC3C 8029162C ACCF0000 */  sw    $t7, ($a2)
/* 0FAC40 80291630 AC790004 */  sw    $t9, 4($v1)
/* 0FAC44 80291634 AC780000 */  sw    $t8, ($v1)
/* 0FAC48 80291638 8CC30000 */  lw    $v1, ($a2)
/* 0FAC4C 8029163C 3C0AB600 */  lui   $t2, 0xb600
/* 0FAC50 80291640 3C0F0002 */  lui   $t7, 2
/* 0FAC54 80291644 246E0008 */  addiu $t6, $v1, 8
/* 0FAC58 80291648 ACCE0000 */  sw    $t6, ($a2)
/* 0FAC5C 8029164C AC6F0004 */  sw    $t7, 4($v1)
/* 0FAC60 80291650 AC6A0000 */  sw    $t2, ($v1)
/* 0FAC64 80291654 8CC30000 */  lw    $v1, ($a2)
/* 0FAC68 80291658 3C0E0040 */  lui   $t6, (0x004045D8 >> 16) # lui $t6, 0x40
/* 0FAC6C 8029165C 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FAC70 80291660 24780008 */  addiu $t8, $v1, 8
/* 0FAC74 80291664 ACD80000 */  sw    $t8, ($a2)
/* 0FAC78 80291668 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FAC7C 8029166C 35CE45D8 */  ori   $t6, (0x004045D8 & 0xFFFF) # ori $t6, $t6, 0x45d8
/* 0FAC80 80291670 AC6E0004 */  sw    $t6, 4($v1)
/* 0FAC84 80291674 AC790000 */  sw    $t9, ($v1)
/* 0FAC88 80291678 8CC80000 */  lw    $t0, ($a2)
/* 0FAC8C 8029167C 3C18C000 */  lui   $t8, 0xc000
/* 0FAC90 80291680 3C0DFC12 */  lui   $t5, (0xFC121824 >> 16) # lui $t5, 0xfc12
/* 0FAC94 80291684 250F0008 */  addiu $t7, $t0, 8
/* 0FAC98 80291688 ACCF0000 */  sw    $t7, ($a2)
/* 0FAC9C 8029168C AD000004 */  sw    $zero, 4($t0)
/* 0FACA0 80291690 AD180000 */  sw    $t8, ($t0)
/* 0FACA4 80291694 8CC90000 */  lw    $t1, ($a2)
/* 0FACA8 80291698 3C0EFF33 */  lui   $t6, (0xFF33FFFF >> 16) # lui $t6, 0xff33
/* 0FACAC 8029169C 35AD1824 */  ori   $t5, (0xFC121824 & 0xFFFF) # ori $t5, $t5, 0x1824
/* 0FACB0 802916A0 25390008 */  addiu $t9, $t1, 8
/* 0FACB4 802916A4 ACD90000 */  sw    $t9, ($a2)
/* 0FACB8 802916A8 35CEFFFF */  ori   $t6, (0xFF33FFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 0FACBC 802916AC AD2E0004 */  sw    $t6, 4($t1)
/* 0FACC0 802916B0 AD2D0000 */  sw    $t5, ($t1)
/* 0FACC4 802916B4 97AF021A */  lhu   $t7, 0x21a($sp)
/* 0FACC8 802916B8 25F8FFEA */  addiu $t8, $t7, -0x16
/* 0FACCC 802916BC 2F010010 */  sltiu $at, $t8, 0x10
/* 0FACD0 802916C0 1020001B */  beqz  $at, .L80291730
/* 0FACD4 802916C4 0018C080 */   sll   $t8, $t8, 2
/* 0FACD8 802916C8 3C01802C */  lui   $at, %hi(jpt_802B9304)
/* 0FACDC 802916CC 00380821 */  addu  $at, $at, $t8
/* 0FACE0 802916D0 8C389304 */  lw    $t8, %lo(jpt_802B9304)($at)
/* 0FACE4 802916D4 03000008 */  jr    $t8
/* 0FACE8 802916D8 00000000 */   nop
glabel L802916DC
/* 0FACEC 802916DC 8CC30000 */  lw    $v1, ($a2)
/* 0FACF0 802916E0 240E2000 */  li    $t6, 8192
/* 0FACF4 802916E4 3C180700 */  lui   $t8, (0x07009E70 >> 16) # lui $t8, 0x700
/* 0FACF8 802916E8 24790008 */  addiu $t9, $v1, 8
/* 0FACFC 802916EC ACD90000 */  sw    $t9, ($a2)
/* 0FAD00 802916F0 AC6E0004 */  sw    $t6, 4($v1)
/* 0FAD04 802916F4 AC6A0000 */  sw    $t2, ($v1)
/* 0FAD08 802916F8 8CC30000 */  lw    $v1, ($a2)
/* 0FAD0C 802916FC 3C1F0600 */  lui   $ra, 0x600
/* 0FAD10 80291700 37189E70 */  ori   $t8, (0x07009E70 & 0xFFFF) # ori $t8, $t8, 0x9e70
/* 0FAD14 80291704 246F0008 */  addiu $t7, $v1, 8
/* 0FAD18 80291708 ACCF0000 */  sw    $t7, ($a2)
/* 0FAD1C 8029170C AC780004 */  sw    $t8, 4($v1)
/* 0FAD20 80291710 AC7F0000 */  sw    $ra, ($v1)
/* 0FAD24 80291714 8CC30000 */  lw    $v1, ($a2)
/* 0FAD28 80291718 240F2000 */  li    $t7, 8192
/* 0FAD2C 8029171C 3C0EB700 */  lui   $t6, 0xb700
/* 0FAD30 80291720 24790008 */  addiu $t9, $v1, 8
/* 0FAD34 80291724 ACD90000 */  sw    $t9, ($a2)
/* 0FAD38 80291728 AC6F0004 */  sw    $t7, 4($v1)
/* 0FAD3C 8029172C AC6E0000 */  sw    $t6, ($v1)
.L80291730:
glabel L80291730
/* 0FAD40 80291730 44800000 */  mtc1  $zero, $f0
/* 0FAD44 80291734 3C018016 */  lui   $at, %hi(D_8015F8E4) # $at, 0x8016
/* 0FAD48 80291738 C424F8E4 */  lwc1  $f4, %lo(D_8015F8E4)($at)
/* 0FAD4C 8029173C 27A40228 */  addiu $a0, $sp, 0x228
/* 0FAD50 80291740 27A5021C */  addiu $a1, $sp, 0x21c
/* 0FAD54 80291744 E7A0021C */  swc1  $f0, 0x21c($sp)
/* 0FAD58 80291748 E7A00224 */  swc1  $f0, 0x224($sp)
/* 0FAD5C 8029174C 0C0AD548 */  jal   mtxf_translate
/* 0FAD60 80291750 E7A40220 */   swc1  $f4, 0x220($sp)
/* 0FAD64 80291754 27A40228 */  addiu $a0, $sp, 0x228
/* 0FAD68 80291758 0C0AD3FE */  jal   func_802B4FF8
/* 0FAD6C 8029175C 00002825 */   move  $a1, $zero
/* 0FAD70 80291760 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FAD74 80291764 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FAD78 80291768 8CC30000 */  lw    $v1, ($a2)
/* 0FAD7C 8029176C 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FAD80 80291770 3C0E0040 */  lui   $t6, (0x004045D8 >> 16) # lui $t6, 0x40
/* 0FAD84 80291774 24780008 */  addiu $t8, $v1, 8
/* 0FAD88 80291778 ACD80000 */  sw    $t8, ($a2)
/* 0FAD8C 8029177C 35CE45D8 */  ori   $t6, (0x004045D8 & 0xFFFF) # ori $t6, $t6, 0x45d8
/* 0FAD90 80291780 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FAD94 80291784 AC790000 */  sw    $t9, ($v1)
/* 0FAD98 80291788 AC6E0004 */  sw    $t6, 4($v1)
/* 0FAD9C 8029178C 8CC30000 */  lw    $v1, ($a2)
/* 0FADA0 80291790 3C18C000 */  lui   $t8, 0xc000
/* 0FADA4 80291794 3C0DFC12 */  lui   $t5, (0xFC121824 >> 16) # lui $t5, 0xfc12
/* 0FADA8 80291798 246F0008 */  addiu $t7, $v1, 8
/* 0FADAC 8029179C ACCF0000 */  sw    $t7, ($a2)
/* 0FADB0 802917A0 AC600004 */  sw    $zero, 4($v1)
/* 0FADB4 802917A4 AC780000 */  sw    $t8, ($v1)
/* 0FADB8 802917A8 8CC30000 */  lw    $v1, ($a2)
/* 0FADBC 802917AC 3C0EFF33 */  lui   $t6, (0xFF33FFFF >> 16) # lui $t6, 0xff33
/* 0FADC0 802917B0 35AD1824 */  ori   $t5, (0xFC121824 & 0xFFFF) # ori $t5, $t5, 0x1824
/* 0FADC4 802917B4 24790008 */  addiu $t9, $v1, 8
/* 0FADC8 802917B8 ACD90000 */  sw    $t9, ($a2)
/* 0FADCC 802917BC 35CEFFFF */  ori   $t6, (0xFF33FFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 0FADD0 802917C0 AC6E0004 */  sw    $t6, 4($v1)
/* 0FADD4 802917C4 AC6D0000 */  sw    $t5, ($v1)
/* 0FADD8 802917C8 8CC30000 */  lw    $v1, ($a2)
/* 0FADDC 802917CC 24192000 */  li    $t9, 8192
/* 0FADE0 802917D0 3C18B600 */  lui   $t8, 0xb600
/* 0FADE4 802917D4 246F0008 */  addiu $t7, $v1, 8
/* 0FADE8 802917D8 ACCF0000 */  sw    $t7, ($a2)
/* 0FADEC 802917DC 3C040602 */  lui   $a0, %hi(D_06019578) # $a0, 0x602
/* 0FADF0 802917E0 AC790004 */  sw    $t9, 4($v1)
/* 0FADF4 802917E4 AC780000 */  sw    $t8, ($v1)
/* 0FADF8 802917E8 8FA50270 */  lw    $a1, 0x270($sp)
/* 0FADFC 802917EC 0C0A436B */  jal   load_surface_map
/* 0FAE00 802917F0 24849578 */   addiu $a0, %lo(D_06019578) # addiu $a0, $a0, -0x6a88
/* 0FAE04 802917F4 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FAE08 802917F8 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FAE0C 802917FC 8CC30000 */  lw    $v1, ($a2)
/* 0FAE10 80291800 3C0FBB00 */  lui   $t7, (0xBB000900 >> 16) # lui $t7, 0xbb00
/* 0FAE14 80291804 35EF0900 */  ori   $t7, (0xBB000900 & 0xFFFF) # ori $t7, $t7, 0x900
/* 0FAE18 80291808 246E0008 */  addiu $t6, $v1, 8
/* 0FAE1C 8029180C ACCE0000 */  sw    $t6, ($a2)
/* 0FAE20 80291810 2418FFFF */  li    $t8, -1
/* 0FAE24 80291814 AC780004 */  sw    $t8, 4($v1)
/* 0FAE28 80291818 AC6F0000 */  sw    $t7, ($v1)
/* 0FAE2C 8029181C 8CC30000 */  lw    $v1, ($a2)
/* 0FAE30 80291820 240F2000 */  li    $t7, 8192
/* 0FAE34 80291824 3C0EB700 */  lui   $t6, 0xb700
/* 0FAE38 80291828 24790008 */  addiu $t9, $v1, 8
/* 0FAE3C 8029182C ACD90000 */  sw    $t9, ($a2)
/* 0FAE40 80291830 AC6F0004 */  sw    $t7, 4($v1)
/* 0FAE44 80291834 AC6E0000 */  sw    $t6, ($v1)
/* 0FAE48 80291838 8CC30000 */  lw    $v1, ($a2)
/* 0FAE4C 8029183C 3C19B900 */  lui   $t9, (0xB9000002 >> 16) # lui $t9, 0xb900
/* 0FAE50 80291840 37390002 */  ori   $t9, (0xB9000002 & 0xFFFF) # ori $t9, $t9, 2
/* 0FAE54 80291844 24780008 */  addiu $t8, $v1, 8
/* 0FAE58 80291848 ACD80000 */  sw    $t8, ($a2)
/* 0FAE5C 8029184C AC600004 */  sw    $zero, 4($v1)
/* 0FAE60 80291850 AC790000 */  sw    $t9, ($v1)
/* 0FAE64 80291854 8CC30000 */  lw    $v1, ($a2)
/* 0FAE68 80291858 3C0FE700 */  lui   $t7, 0xe700
/* 0FAE6C 8029185C 246E0008 */  addiu $t6, $v1, 8
/* 0FAE70 80291860 ACCE0000 */  sw    $t6, ($a2)
/* 0FAE74 80291864 AC600004 */  sw    $zero, 4($v1)
/* 0FAE78 80291868 100002FA */  b     .L80292454
/* 0FAE7C 8029186C AC6F0000 */   sw    $t7, ($v1)
glabel L80291870
/* 0FAE80 80291870 8CC30000 */  lw    $v1, ($a2)
/* 0FAE84 80291874 3C19E700 */  lui   $t9, 0xe700
/* 0FAE88 80291878 3C0FB600 */  lui   $t7, 0xb600
/* 0FAE8C 8029187C 24780008 */  addiu $t8, $v1, 8
/* 0FAE90 80291880 ACD80000 */  sw    $t8, ($a2)
/* 0FAE94 80291884 AC600004 */  sw    $zero, 4($v1)
/* 0FAE98 80291888 AC790000 */  sw    $t9, ($v1)
/* 0FAE9C 8029188C 8CC30000 */  lw    $v1, ($a2)
/* 0FAEA0 80291890 3C180002 */  lui   $t8, 2
/* 0FAEA4 80291894 3C0DFC12 */  lui   $t5, (0xFC121824 >> 16) # lui $t5, 0xfc12
/* 0FAEA8 80291898 246E0008 */  addiu $t6, $v1, 8
/* 0FAEAC 8029189C ACCE0000 */  sw    $t6, ($a2)
/* 0FAEB0 802918A0 AC780004 */  sw    $t8, 4($v1)
/* 0FAEB4 802918A4 AC6F0000 */  sw    $t7, ($v1)
/* 0FAEB8 802918A8 8CC30000 */  lw    $v1, ($a2)
/* 0FAEBC 802918AC 3C0EBB00 */  lui   $t6, (0xBB000001 >> 16) # lui $t6, 0xbb00
/* 0FAEC0 802918B0 35CE0001 */  ori   $t6, (0xBB000001 & 0xFFFF) # ori $t6, $t6, 1
/* 0FAEC4 802918B4 24790008 */  addiu $t9, $v1, 8
/* 0FAEC8 802918B8 ACD90000 */  sw    $t9, ($a2)
/* 0FAECC 802918BC 240FFFFF */  li    $t7, -1
/* 0FAED0 802918C0 AC6F0004 */  sw    $t7, 4($v1)
/* 0FAED4 802918C4 AC6E0000 */  sw    $t6, ($v1)
/* 0FAED8 802918C8 8CC30000 */  lw    $v1, ($a2)
/* 0FAEDC 802918CC 3C19C000 */  lui   $t9, 0xc000
/* 0FAEE0 802918D0 3C0FFF33 */  lui   $t7, (0xFF33FFFF >> 16) # lui $t7, 0xff33
/* 0FAEE4 802918D4 24780008 */  addiu $t8, $v1, 8
/* 0FAEE8 802918D8 ACD80000 */  sw    $t8, ($a2)
/* 0FAEEC 802918DC AC600004 */  sw    $zero, 4($v1)
/* 0FAEF0 802918E0 AC790000 */  sw    $t9, ($v1)
/* 0FAEF4 802918E4 8CC30000 */  lw    $v1, ($a2)
/* 0FAEF8 802918E8 35AD1824 */  ori   $t5, (0xFC121824 & 0xFFFF) # ori $t5, $t5, 0x1824
/* 0FAEFC 802918EC 35EFFFFF */  ori   $t7, (0xFF33FFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 0FAF00 802918F0 246E0008 */  addiu $t6, $v1, 8
/* 0FAF04 802918F4 ACCE0000 */  sw    $t6, ($a2)
/* 0FAF08 802918F8 AC6F0004 */  sw    $t7, 4($v1)
/* 0FAF0C 802918FC AC6D0000 */  sw    $t5, ($v1)
/* 0FAF10 80291900 8CC30000 */  lw    $v1, ($a2)
/* 0FAF14 80291904 3C19BA00 */  lui   $t9, (0xBA000C02 >> 16) # lui $t9, 0xba00
/* 0FAF18 80291908 37390C02 */  ori   $t9, (0xBA000C02 & 0xFFFF) # ori $t9, $t9, 0xc02
/* 0FAF1C 8029190C 24780008 */  addiu $t8, $v1, 8
/* 0FAF20 80291910 ACD80000 */  sw    $t8, ($a2)
/* 0FAF24 80291914 240E2000 */  li    $t6, 8192
/* 0FAF28 80291918 AC6E0004 */  sw    $t6, 4($v1)
/* 0FAF2C 8029191C AC790000 */  sw    $t9, ($v1)
/* 0FAF30 80291920 8CC30000 */  lw    $v1, ($a2)
/* 0FAF34 80291924 3C18BA00 */  lui   $t8, (0xBA001301 >> 16) # lui $t8, 0xba00
/* 0FAF38 80291928 37181301 */  ori   $t8, (0xBA001301 & 0xFFFF) # ori $t8, $t8, 0x1301
/* 0FAF3C 8029192C 246F0008 */  addiu $t7, $v1, 8
/* 0FAF40 80291930 ACCF0000 */  sw    $t7, ($a2)
/* 0FAF44 80291934 3C190008 */  lui   $t9, 8
/* 0FAF48 80291938 27A40228 */  addiu $a0, $sp, 0x228
/* 0FAF4C 8029193C AC790004 */  sw    $t9, 4($v1)
/* 0FAF50 80291940 0C0AD4F2 */  jal   mtxf_identity
/* 0FAF54 80291944 AC780000 */   sw    $t8, ($v1)
/* 0FAF58 80291948 27A40228 */  addiu $a0, $sp, 0x228
/* 0FAF5C 8029194C 0C0AD3FE */  jal   func_802B4FF8
/* 0FAF60 80291950 00002825 */   move  $a1, $zero
/* 0FAF64 80291954 3C040900 */  lui   $a0, %hi(D_090001D0) # $a0, 0x900
/* 0FAF68 80291958 248401D0 */  addiu $a0, %lo(D_090001D0) # addiu $a0, $a0, 0x1d0
/* 0FAF6C 8029195C 0C0A436B */  jal   load_surface_map
/* 0FAF70 80291960 8FA50270 */   lw    $a1, 0x270($sp)
/* 0FAF74 80291964 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FAF78 80291968 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FAF7C 8029196C 8CC30000 */  lw    $v1, ($a2)
/* 0FAF80 80291970 3C0FB900 */  lui   $t7, (0xB9000002 >> 16) # lui $t7, 0xb900
/* 0FAF84 80291974 35EF0002 */  ori   $t7, (0xB9000002 & 0xFFFF) # ori $t7, $t7, 2
/* 0FAF88 80291978 246E0008 */  addiu $t6, $v1, 8
/* 0FAF8C 8029197C ACCE0000 */  sw    $t6, ($a2)
/* 0FAF90 80291980 AC600004 */  sw    $zero, 4($v1)
/* 0FAF94 80291984 AC6F0000 */  sw    $t7, ($v1)
/* 0FAF98 80291988 8FB80270 */  lw    $t8, 0x270($sp)
/* 0FAF9C 8029198C 0C0A4308 */  jal   func_80290C20
/* 0FAFA0 80291990 8F040004 */   lw    $a0, 4($t8)
/* 0FAFA4 80291994 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FAFA8 80291998 24010001 */  li    $at, 1
/* 0FAFAC 8029199C 1441002C */  bne   $v0, $at, .L80291A50
/* 0FAFB0 802919A0 24C60298 */   addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FAFB4 802919A4 0C0AAAD3 */  jal   func_802AAB4C
/* 0FAFB8 802919A8 8FA40268 */   lw    $a0, 0x268($sp)
/* 0FAFBC 802919AC 8FB90268 */  lw    $t9, 0x268($sp)
/* 0FAFC0 802919B0 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FAFC4 802919B4 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FAFC8 802919B8 C7260018 */  lwc1  $f6, 0x18($t9)
/* 0FAFCC 802919BC 3C1F0600 */  lui   $ra, 0x600
/* 0FAFD0 802919C0 4606003C */  c.lt.s $f0, $f6
/* 0FAFD4 802919C4 00000000 */  nop
/* 0FAFD8 802919C8 45020022 */  bc1fl .L80291A54
/* 0FAFDC 802919CC 8CC30000 */   lw    $v1, ($a2)
/* 0FAFE0 802919D0 8CC30000 */  lw    $v1, ($a2)
/* 0FAFE4 802919D4 3C0FB700 */  lui   $t7, 0xb700
/* 0FAFE8 802919D8 24180001 */  li    $t8, 1
/* 0FAFEC 802919DC 246E0008 */  addiu $t6, $v1, 8
/* 0FAFF0 802919E0 ACCE0000 */  sw    $t6, ($a2)
/* 0FAFF4 802919E4 AC780004 */  sw    $t8, 4($v1)
/* 0FAFF8 802919E8 AC6F0000 */  sw    $t7, ($v1)
/* 0FAFFC 802919EC 8CC30000 */  lw    $v1, ($a2)
/* 0FB000 802919F0 3C0FFFFE */  lui   $t7, (0xFFFE793C >> 16) # lui $t7, 0xfffe
/* 0FB004 802919F4 3C0EFCFF */  lui   $t6, (0xFCFFFFFF >> 16) # lui $t6, 0xfcff
/* 0FB008 802919F8 24790008 */  addiu $t9, $v1, 8
/* 0FB00C 802919FC ACD90000 */  sw    $t9, ($a2)
/* 0FB010 80291A00 35CEFFFF */  ori   $t6, (0xFCFFFFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 0FB014 80291A04 35EF793C */  ori   $t7, (0xFFFE793C & 0xFFFF) # ori $t7, $t7, 0x793c
/* 0FB018 80291A08 AC6F0004 */  sw    $t7, 4($v1)
/* 0FB01C 80291A0C AC6E0000 */  sw    $t6, ($v1)
/* 0FB020 80291A10 8CC30000 */  lw    $v1, ($a2)
/* 0FB024 80291A14 3C0E0055 */  lui   $t6, (0x00552078 >> 16) # lui $t6, 0x55
/* 0FB028 80291A18 3C19B900 */  lui   $t9, (0xB900031D >> 16) # lui $t9, 0xb900
/* 0FB02C 80291A1C 24780008 */  addiu $t8, $v1, 8
/* 0FB030 80291A20 ACD80000 */  sw    $t8, ($a2)
/* 0FB034 80291A24 3739031D */  ori   $t9, (0xB900031D & 0xFFFF) # ori $t9, $t9, 0x31d
/* 0FB038 80291A28 35CE2078 */  ori   $t6, (0x00552078 & 0xFFFF) # ori $t6, $t6, 0x2078
/* 0FB03C 80291A2C AC6E0004 */  sw    $t6, 4($v1)
/* 0FB040 80291A30 AC790000 */  sw    $t9, ($v1)
/* 0FB044 80291A34 8CC30000 */  lw    $v1, ($a2)
/* 0FB048 80291A38 3C180700 */  lui   $t8, (0x07002B48 >> 16) # lui $t8, 0x700
/* 0FB04C 80291A3C 37182B48 */  ori   $t8, (0x07002B48 & 0xFFFF) # ori $t8, $t8, 0x2b48
/* 0FB050 80291A40 246F0008 */  addiu $t7, $v1, 8
/* 0FB054 80291A44 ACCF0000 */  sw    $t7, ($a2)
/* 0FB058 80291A48 AC780004 */  sw    $t8, 4($v1)
/* 0FB05C 80291A4C AC7F0000 */  sw    $ra, ($v1)
.L80291A50:
/* 0FB060 80291A50 8CC30000 */  lw    $v1, ($a2)
.L80291A54:
/* 0FB064 80291A54 3C0EE700 */  lui   $t6, 0xe700
/* 0FB068 80291A58 24790008 */  addiu $t9, $v1, 8
/* 0FB06C 80291A5C ACD90000 */  sw    $t9, ($a2)
/* 0FB070 80291A60 AC600004 */  sw    $zero, 4($v1)
/* 0FB074 80291A64 1000027B */  b     .L80292454
/* 0FB078 80291A68 AC6E0000 */   sw    $t6, ($v1)
glabel L80291A6C
/* 0FB07C 80291A6C 8CC30000 */  lw    $v1, ($a2)
/* 0FB080 80291A70 3C18E700 */  lui   $t8, 0xe700
/* 0FB084 80291A74 27A40228 */  addiu $a0, $sp, 0x228
/* 0FB088 80291A78 246F0008 */  addiu $t7, $v1, 8
/* 0FB08C 80291A7C ACCF0000 */  sw    $t7, ($a2)
/* 0FB090 80291A80 AC600004 */  sw    $zero, 4($v1)
/* 0FB094 80291A84 0C0AD4F2 */  jal   mtxf_identity
/* 0FB098 80291A88 AC780000 */   sw    $t8, ($v1)
/* 0FB09C 80291A8C 27A40228 */  addiu $a0, $sp, 0x228
/* 0FB0A0 80291A90 0C0AD3FE */  jal   func_802B4FF8
/* 0FB0A4 80291A94 00002825 */   move  $a1, $zero
/* 0FB0A8 80291A98 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FB0AC 80291A9C 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FB0B0 80291AA0 8CC30000 */  lw    $v1, ($a2)
/* 0FB0B4 80291AA4 3C0EB600 */  lui   $t6, 0xb600
/* 0FB0B8 80291AA8 240F2000 */  li    $t7, 8192
/* 0FB0BC 80291AAC 24790008 */  addiu $t9, $v1, 8
/* 0FB0C0 80291AB0 ACD90000 */  sw    $t9, ($a2)
/* 0FB0C4 80291AB4 3C040601 */  lui   $a0, %hi(D_060164B8) # $a0, 0x601
/* 0FB0C8 80291AB8 AC6F0004 */  sw    $t7, 4($v1)
/* 0FB0CC 80291ABC AC6E0000 */  sw    $t6, ($v1)
/* 0FB0D0 80291AC0 8FA50270 */  lw    $a1, 0x270($sp)
/* 0FB0D4 80291AC4 0C0A436B */  jal   load_surface_map
/* 0FB0D8 80291AC8 248464B8 */   addiu $a0, %lo(D_060164B8) # addiu $a0, $a0, 0x64b8
/* 0FB0DC 80291ACC 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FB0E0 80291AD0 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FB0E4 80291AD4 8CC30000 */  lw    $v1, ($a2)
/* 0FB0E8 80291AD8 3C19B700 */  lui   $t9, 0xb700
/* 0FB0EC 80291ADC 240E2000 */  li    $t6, 8192
/* 0FB0F0 80291AE0 24780008 */  addiu $t8, $v1, 8
/* 0FB0F4 80291AE4 ACD80000 */  sw    $t8, ($a2)
/* 0FB0F8 80291AE8 AC6E0004 */  sw    $t6, 4($v1)
/* 0FB0FC 80291AEC AC790000 */  sw    $t9, ($v1)
/* 0FB100 80291AF0 8CC30000 */  lw    $v1, ($a2)
/* 0FB104 80291AF4 3C18B900 */  lui   $t8, (0xB9000002 >> 16) # lui $t8, 0xb900
/* 0FB108 80291AF8 37180002 */  ori   $t8, (0xB9000002 & 0xFFFF) # ori $t8, $t8, 2
/* 0FB10C 80291AFC 246F0008 */  addiu $t7, $v1, 8
/* 0FB110 80291B00 ACCF0000 */  sw    $t7, ($a2)
/* 0FB114 80291B04 AC600004 */  sw    $zero, 4($v1)
/* 0FB118 80291B08 AC780000 */  sw    $t8, ($v1)
/* 0FB11C 80291B0C 8CC30000 */  lw    $v1, ($a2)
/* 0FB120 80291B10 3C0EE700 */  lui   $t6, 0xe700
/* 0FB124 80291B14 24790008 */  addiu $t9, $v1, 8
/* 0FB128 80291B18 ACD90000 */  sw    $t9, ($a2)
/* 0FB12C 80291B1C AC600004 */  sw    $zero, 4($v1)
/* 0FB130 80291B20 1000024C */  b     .L80292454
/* 0FB134 80291B24 AC6E0000 */   sw    $t6, ($v1)
glabel L80291B28
/* 0FB138 80291B28 8CC30000 */  lw    $v1, ($a2)
/* 0FB13C 80291B2C 3C18E700 */  lui   $t8, 0xe700
/* 0FB140 80291B30 3C0EBB00 */  lui   $t6, (0xBB000001 >> 16) # lui $t6, 0xbb00
/* 0FB144 80291B34 246F0008 */  addiu $t7, $v1, 8
/* 0FB148 80291B38 ACCF0000 */  sw    $t7, ($a2)
/* 0FB14C 80291B3C AC600004 */  sw    $zero, 4($v1)
/* 0FB150 80291B40 AC780000 */  sw    $t8, ($v1)
/* 0FB154 80291B44 8CC30000 */  lw    $v1, ($a2)
/* 0FB158 80291B48 240FFFFF */  li    $t7, -1
/* 0FB15C 80291B4C 35CE0001 */  ori   $t6, (0xBB000001 & 0xFFFF) # ori $t6, $t6, 1
/* 0FB160 80291B50 24790008 */  addiu $t9, $v1, 8
/* 0FB164 80291B54 ACD90000 */  sw    $t9, ($a2)
/* 0FB168 80291B58 AC6F0004 */  sw    $t7, 4($v1)
/* 0FB16C 80291B5C AC6E0000 */  sw    $t6, ($v1)
/* 0FB170 80291B60 8CC30000 */  lw    $v1, ($a2)
/* 0FB174 80291B64 3C0E0002 */  lui   $t6, 2
/* 0FB178 80291B68 3C19B600 */  lui   $t9, 0xb600
/* 0FB17C 80291B6C 24780008 */  addiu $t8, $v1, 8
/* 0FB180 80291B70 ACD80000 */  sw    $t8, ($a2)
/* 0FB184 80291B74 AC6E0004 */  sw    $t6, 4($v1)
/* 0FB188 80291B78 AC790000 */  sw    $t9, ($v1)
/* 0FB18C 80291B7C 8CC30000 */  lw    $v1, ($a2)
/* 0FB190 80291B80 3C190040 */  lui   $t9, (0x004045D8 >> 16) # lui $t9, 0x40
/* 0FB194 80291B84 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 0FB198 80291B88 246F0008 */  addiu $t7, $v1, 8
/* 0FB19C 80291B8C ACCF0000 */  sw    $t7, ($a2)
/* 0FB1A0 80291B90 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 0FB1A4 80291B94 373945D8 */  ori   $t9, (0x004045D8 & 0xFFFF) # ori $t9, $t9, 0x45d8
/* 0FB1A8 80291B98 AC790004 */  sw    $t9, 4($v1)
/* 0FB1AC 80291B9C AC780000 */  sw    $t8, ($v1)
/* 0FB1B0 80291BA0 8CC30000 */  lw    $v1, ($a2)
/* 0FB1B4 80291BA4 3C0FC000 */  lui   $t7, 0xc000
/* 0FB1B8 80291BA8 3C0DFC12 */  lui   $t5, (0xFC121824 >> 16) # lui $t5, 0xfc12
/* 0FB1BC 80291BAC 246E0008 */  addiu $t6, $v1, 8
/* 0FB1C0 80291BB0 ACCE0000 */  sw    $t6, ($a2)
/* 0FB1C4 80291BB4 AC600004 */  sw    $zero, 4($v1)
/* 0FB1C8 80291BB8 AC6F0000 */  sw    $t7, ($v1)
/* 0FB1CC 80291BBC 8CC30000 */  lw    $v1, ($a2)
/* 0FB1D0 80291BC0 3C19FF33 */  lui   $t9, (0xFF33FFFF >> 16) # lui $t9, 0xff33
/* 0FB1D4 80291BC4 35AD1824 */  ori   $t5, (0xFC121824 & 0xFFFF) # ori $t5, $t5, 0x1824
/* 0FB1D8 80291BC8 24780008 */  addiu $t8, $v1, 8
/* 0FB1DC 80291BCC ACD80000 */  sw    $t8, ($a2)
/* 0FB1E0 80291BD0 3739FFFF */  ori   $t9, (0xFF33FFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* 0FB1E4 80291BD4 AC790004 */  sw    $t9, 4($v1)
/* 0FB1E8 80291BD8 AC6D0000 */  sw    $t5, ($v1)
/* 0FB1EC 80291BDC 8CC30000 */  lw    $v1, ($a2)
/* 0FB1F0 80291BE0 3C0FBA00 */  lui   $t7, (0xBA000C02 >> 16) # lui $t7, 0xba00
/* 0FB1F4 80291BE4 35EF0C02 */  ori   $t7, (0xBA000C02 & 0xFFFF) # ori $t7, $t7, 0xc02
/* 0FB1F8 80291BE8 246E0008 */  addiu $t6, $v1, 8
/* 0FB1FC 80291BEC ACCE0000 */  sw    $t6, ($a2)
/* 0FB200 80291BF0 24182000 */  li    $t8, 8192
/* 0FB204 80291BF4 AC780004 */  sw    $t8, 4($v1)
/* 0FB208 80291BF8 AC6F0000 */  sw    $t7, ($v1)
/* 0FB20C 80291BFC 8CC30000 */  lw    $v1, ($a2)
/* 0FB210 80291C00 3C0EBA00 */  lui   $t6, (0xBA001301 >> 16) # lui $t6, 0xba00
/* 0FB214 80291C04 35CE1301 */  ori   $t6, (0xBA001301 & 0xFFFF) # ori $t6, $t6, 0x1301
/* 0FB218 80291C08 24790008 */  addiu $t9, $v1, 8
/* 0FB21C 80291C0C ACD90000 */  sw    $t9, ($a2)
/* 0FB220 80291C10 3C0F0008 */  lui   $t7, 8
/* 0FB224 80291C14 27A40228 */  addiu $a0, $sp, 0x228
/* 0FB228 80291C18 AC6F0004 */  sw    $t7, 4($v1)
/* 0FB22C 80291C1C 0C0AD4F2 */  jal   mtxf_identity
/* 0FB230 80291C20 AC6E0000 */   sw    $t6, ($v1)
/* 0FB234 80291C24 27A40228 */  addiu $a0, $sp, 0x228
/* 0FB238 80291C28 0C0AD3FE */  jal   func_802B4FF8
/* 0FB23C 80291C2C 00002825 */   move  $a1, $zero
/* 0FB240 80291C30 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FB244 80291C34 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FB248 80291C38 8CC30000 */  lw    $v1, ($a2)
/* 0FB24C 80291C3C 3C19B600 */  lui   $t9, 0xb600
/* 0FB250 80291C40 240E2000 */  li    $t6, 8192
/* 0FB254 80291C44 24780008 */  addiu $t8, $v1, 8
/* 0FB258 80291C48 ACD80000 */  sw    $t8, ($a2)
/* 0FB25C 80291C4C AC6E0004 */  sw    $t6, 4($v1)
/* 0FB260 80291C50 AC790000 */  sw    $t9, ($v1)
/* 0FB264 80291C54 8CC30000 */  lw    $v1, ($a2)
/* 0FB268 80291C58 3C18FC12 */  lui   $t8, (0xFC127E24 >> 16) # lui $t8, 0xfc12
/* 0FB26C 80291C5C 37187E24 */  ori   $t8, (0xFC127E24 & 0xFFFF) # ori $t8, $t8, 0x7e24
/* 0FB270 80291C60 246F0008 */  addiu $t7, $v1, 8
/* 0FB274 80291C64 ACCF0000 */  sw    $t7, ($a2)
/* 0FB278 80291C68 2419F3F9 */  li    $t9, -3079
/* 0FB27C 80291C6C AC790004 */  sw    $t9, 4($v1)
/* 0FB280 80291C70 AC780000 */  sw    $t8, ($v1)
/* 0FB284 80291C74 8CC30000 */  lw    $v1, ($a2)
/* 0FB288 80291C78 3C180050 */  lui   $t8, (0x005049D8 >> 16) # lui $t8, 0x50
/* 0FB28C 80291C7C 3C0FB900 */  lui   $t7, (0xB900031D >> 16) # lui $t7, 0xb900
/* 0FB290 80291C80 246E0008 */  addiu $t6, $v1, 8
/* 0FB294 80291C84 ACCE0000 */  sw    $t6, ($a2)
/* 0FB298 80291C88 35EF031D */  ori   $t7, (0xB900031D & 0xFFFF) # ori $t7, $t7, 0x31d
/* 0FB29C 80291C8C 371849D8 */  ori   $t8, (0x005049D8 & 0xFFFF) # ori $t8, $t8, 0x49d8
/* 0FB2A0 80291C90 AC780004 */  sw    $t8, 4($v1)
/* 0FB2A4 80291C94 AC6F0000 */  sw    $t7, ($v1)
/* 0FB2A8 80291C98 8CC30000 */  lw    $v1, ($a2)
/* 0FB2AC 80291C9C 3C0FFFFF */  lui   $t7, (0xFFFF00FF >> 16) # lui $t7, 0xffff
/* 0FB2B0 80291CA0 35EF00FF */  ori   $t7, (0xFFFF00FF & 0xFFFF) # ori $t7, $t7, 0xff
/* 0FB2B4 80291CA4 24790008 */  addiu $t9, $v1, 8
/* 0FB2B8 80291CA8 ACD90000 */  sw    $t9, ($a2)
/* 0FB2BC 80291CAC 3C0EFA00 */  lui   $t6, 0xfa00
/* 0FB2C0 80291CB0 AC6E0000 */  sw    $t6, ($v1)
/* 0FB2C4 80291CB4 AC6F0004 */  sw    $t7, 4($v1)
/* 0FB2C8 80291CB8 8CC30000 */  lw    $v1, ($a2)
/* 0FB2CC 80291CBC 3C190700 */  lui   $t9, (0x07000EC0 >> 16) # lui $t9, 0x700
/* 0FB2D0 80291CC0 3C1F0600 */  lui   $ra, 0x600
/* 0FB2D4 80291CC4 24780008 */  addiu $t8, $v1, 8
/* 0FB2D8 80291CC8 ACD80000 */  sw    $t8, ($a2)
/* 0FB2DC 80291CCC 37390EC0 */  ori   $t9, (0x07000EC0 & 0xFFFF) # ori $t9, $t9, 0xec0
/* 0FB2E0 80291CD0 AC790004 */  sw    $t9, 4($v1)
/* 0FB2E4 80291CD4 AC7F0000 */  sw    $ra, ($v1)
/* 0FB2E8 80291CD8 8CC30000 */  lw    $v1, ($a2)
/* 0FB2EC 80291CDC 3C0FBB00 */  lui   $t7, (0xBB000900 >> 16) # lui $t7, 0xbb00
/* 0FB2F0 80291CE0 35EF0900 */  ori   $t7, (0xBB000900 & 0xFFFF) # ori $t7, $t7, 0x900
/* 0FB2F4 80291CE4 246E0008 */  addiu $t6, $v1, 8
/* 0FB2F8 80291CE8 ACCE0000 */  sw    $t6, ($a2)
/* 0FB2FC 80291CEC 2418FFFF */  li    $t8, -1
/* 0FB300 80291CF0 AC780004 */  sw    $t8, 4($v1)
/* 0FB304 80291CF4 AC6F0000 */  sw    $t7, ($v1)
/* 0FB308 80291CF8 8CC30000 */  lw    $v1, ($a2)
/* 0FB30C 80291CFC 240F2000 */  li    $t7, 8192
/* 0FB310 80291D00 3C0EB700 */  lui   $t6, 0xb700
/* 0FB314 80291D04 24790008 */  addiu $t9, $v1, 8
/* 0FB318 80291D08 ACD90000 */  sw    $t9, ($a2)
/* 0FB31C 80291D0C AC6F0004 */  sw    $t7, 4($v1)
/* 0FB320 80291D10 AC6E0000 */  sw    $t6, ($v1)
/* 0FB324 80291D14 8CC30000 */  lw    $v1, ($a2)
/* 0FB328 80291D18 3C19B900 */  lui   $t9, (0xB9000002 >> 16) # lui $t9, 0xb900
/* 0FB32C 80291D1C 37390002 */  ori   $t9, (0xB9000002 & 0xFFFF) # ori $t9, $t9, 2
/* 0FB330 80291D20 24780008 */  addiu $t8, $v1, 8
/* 0FB334 80291D24 ACD80000 */  sw    $t8, ($a2)
/* 0FB338 80291D28 AC600004 */  sw    $zero, 4($v1)
/* 0FB33C 80291D2C AC790000 */  sw    $t9, ($v1)
/* 0FB340 80291D30 8CC30000 */  lw    $v1, ($a2)
/* 0FB344 80291D34 3C0FE700 */  lui   $t7, 0xe700
/* 0FB348 80291D38 246E0008 */  addiu $t6, $v1, 8
/* 0FB34C 80291D3C ACCE0000 */  sw    $t6, ($a2)
/* 0FB350 80291D40 AC600004 */  sw    $zero, 4($v1)
/* 0FB354 80291D44 100001C3 */  b     .L80292454
/* 0FB358 80291D48 AC6F0000 */   sw    $t7, ($v1)
glabel L80291D4C
/* 0FB35C 80291D4C 8CC30000 */  lw    $v1, ($a2)
/* 0FB360 80291D50 3C19E700 */  lui   $t9, 0xe700
/* 0FB364 80291D54 3C0FB600 */  lui   $t7, 0xb600
/* 0FB368 80291D58 24780008 */  addiu $t8, $v1, 8
/* 0FB36C 80291D5C ACD80000 */  sw    $t8, ($a2)
/* 0FB370 80291D60 AC600004 */  sw    $zero, 4($v1)
/* 0FB374 80291D64 AC790000 */  sw    $t9, ($v1)
/* 0FB378 80291D68 8CC30000 */  lw    $v1, ($a2)
/* 0FB37C 80291D6C 3C180002 */  lui   $t8, 2
/* 0FB380 80291D70 27A40228 */  addiu $a0, $sp, 0x228
/* 0FB384 80291D74 246E0008 */  addiu $t6, $v1, 8
/* 0FB388 80291D78 ACCE0000 */  sw    $t6, ($a2)
/* 0FB38C 80291D7C AC780004 */  sw    $t8, 4($v1)
/* 0FB390 80291D80 AC6F0000 */  sw    $t7, ($v1)
/* 0FB394 80291D84 8CC30000 */  lw    $v1, ($a2)
/* 0FB398 80291D88 3C0EBB00 */  lui   $t6, (0xBB000001 >> 16) # lui $t6, 0xbb00
/* 0FB39C 80291D8C 35CE0001 */  ori   $t6, (0xBB000001 & 0xFFFF) # ori $t6, $t6, 1
/* 0FB3A0 80291D90 24790008 */  addiu $t9, $v1, 8
/* 0FB3A4 80291D94 ACD90000 */  sw    $t9, ($a2)
/* 0FB3A8 80291D98 240FFFFF */  li    $t7, -1
/* 0FB3AC 80291D9C AC6F0004 */  sw    $t7, 4($v1)
/* 0FB3B0 80291DA0 AC6E0000 */  sw    $t6, ($v1)
/* 0FB3B4 80291DA4 8CC30000 */  lw    $v1, ($a2)
/* 0FB3B8 80291DA8 3C19C000 */  lui   $t9, 0xc000
/* 0FB3BC 80291DAC 3C0FBA00 */  lui   $t7, (0xBA000C02 >> 16) # lui $t7, 0xba00
/* 0FB3C0 80291DB0 24780008 */  addiu $t8, $v1, 8
/* 0FB3C4 80291DB4 ACD80000 */  sw    $t8, ($a2)
/* 0FB3C8 80291DB8 AC600004 */  sw    $zero, 4($v1)
/* 0FB3CC 80291DBC AC790000 */  sw    $t9, ($v1)
/* 0FB3D0 80291DC0 8CC30000 */  lw    $v1, ($a2)
/* 0FB3D4 80291DC4 24182000 */  li    $t8, 8192
/* 0FB3D8 80291DC8 35EF0C02 */  ori   $t7, (0xBA000C02 & 0xFFFF) # ori $t7, $t7, 0xc02
/* 0FB3DC 80291DCC 246E0008 */  addiu $t6, $v1, 8
/* 0FB3E0 80291DD0 ACCE0000 */  sw    $t6, ($a2)
/* 0FB3E4 80291DD4 AC780004 */  sw    $t8, 4($v1)
/* 0FB3E8 80291DD8 AC6F0000 */  sw    $t7, ($v1)
/* 0FB3EC 80291DDC 8CC30000 */  lw    $v1, ($a2)
/* 0FB3F0 80291DE0 3C0EBA00 */  lui   $t6, (0xBA001301 >> 16) # lui $t6, 0xba00
/* 0FB3F4 80291DE4 35CE1301 */  ori   $t6, (0xBA001301 & 0xFFFF) # ori $t6, $t6, 0x1301
/* 0FB3F8 80291DE8 24790008 */  addiu $t9, $v1, 8
/* 0FB3FC 80291DEC ACD90000 */  sw    $t9, ($a2)
/* 0FB400 80291DF0 3C0F0008 */  lui   $t7, 8
/* 0FB404 80291DF4 AC6F0004 */  sw    $t7, 4($v1)
/* 0FB408 80291DF8 AC6E0000 */  sw    $t6, ($v1)
/* 0FB40C 80291DFC 0C0AD4F2 */  jal   mtxf_identity
/* 0FB410 80291E00 A7AB0216 */   sh    $t3, 0x216($sp)
/* 0FB414 80291E04 27A40228 */  addiu $a0, $sp, 0x228
/* 0FB418 80291E08 0C0AD3FE */  jal   func_802B4FF8
/* 0FB41C 80291E0C 00002825 */   move  $a1, $zero
/* 0FB420 80291E10 3C068015 */  lui   $a2, %hi(gDisplayListHead) # $a2, 0x8015
/* 0FB424 80291E14 24C60298 */  addiu $a2, %lo(gDisplayListHead) # addiu $a2, $a2, 0x298
/* 0FB428 80291E18 8CC30000 */  lw    $v1, ($a2)
/* 0FB42C 80291E1C 87AB0216 */  lh    $t3, 0x216($sp)
/* 0FB430 80291E20 3C0DFC12 */  lui   $t5, (0xFC121824 >> 16) # lui $t5, 0xfc12
/* 0FB434 80291E24 24780008 */  addiu $t8, $v1, 8
/* 0FB438 80291E28 ACD80000 */  sw    $t8, ($a2)
/* 0FB43C 80291E2C 3C19FF33 */  lui   $t9, (0xFF33FFFF >> 16) # lui $t9, 0xff33
/* 0FB440 80291E30 35AD1824 */  ori   $t5, (0xFC121824 & 0xFFFF) # ori $t5, $t5, 0x1824
/* 0FB444 80291E34 3739FFFF */  ori   $t9, (0xFF33FFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* 0FB448 80291E38 AC790004 */  sw    $t9, 4($v1)
/* 0FB44C 80291E3C AC6D0000 */  sw    $t5, ($v1)
/* 0FB450 80291E40 8CC30000 */  lw    $v1, ($a2)
/* 0FB454 80291E44 3C180040 */  lui   $t8, (0x004045D8 >> 16) # lui $t8, 0x40
/* 0FB458 80291E48 3C0FB900 */  lui   $t7, (0xB900031D >> 16) # lui $t7, 0xb900
/* 0FB45C 80291E4C 246E0008 */  addiu $t6, $v1, 8
/* 0FB460 80291E50 ACCE0000 */  sw    $t6, ($a2)
/* 0FB464 80291E54 35EF031D */  ori   $t7, (0xB900031D & 0xFFFF) # ori $t7, $t7, 0x31d
/* 0FB468 80291E58 371845D8 */  ori   $t8, (0x004045D8 & 0xFFFF) # ori $t8, $t8, 0x45d8
/* 0FB46C 80291E5C AC780004 */  sw    $t8, 4($v1)
/* 0FB470 80291E60 AC6F0000 */  sw    $t7, ($v1)
/* 0FB474 80291E64 97A7021A */  lhu   $a3, 0x21a($sp)
/* 0FB478 80291E68 3C080700 */  lui   $t0, (0x07003EB0 >> 16) # lui $t0, 0x700
/* 0FB47C 80291E6C 3C090700 */  lui   $t1, (0x07003E40 >> 16) # lui $t1, 0x700
/* 0FB480 80291E70 28E10011 */  slti  $at, $a3, 0x11
/* 0FB484 80291E74 5020002B */  beql  $at, $zero, .L80291F24
/* 0FB488 80291E78 24010015 */   li    $at, 21
/* 0FB48C 80291E7C 8CC30000 */  lw    $v1, ($a2)
/* 0FB490 80291E80 3C0EFF33 */  lui   $t6, (0xFF33FFFF >> 16) # lui $t6, 0xff33
/* 0FB494 80291E84 35CEFFFF */  ori   $t6, (0xFF33FFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 0FB498 80291E88 24790008 */  addiu $t9, $v1, 8
/* 0FB49C 80291E8C ACD90000 */  sw    $t9, ($a2)
/* 0FB4A0 80291E90 AC6E0004 */  sw    $t6, 4($v1)
/* 0FB4A4 80291E94 AC6D0000 */  sw    $t5, ($v1)
/* 0FB4A8 80291E98 8CC30000 */  lw    $v1, ($a2)
/* 0FB4AC 80291E9C 35293E40 */  ori   $t1, (0x07003E40 & 0xFFFF) # ori $t1, $t1, 0x3e40
/* 0FB4B0 80291EA0 3C1F0600 */  lui   $ra, 0x600
/* 0FB4B4 80291EA4 246F0008 */  addiu $t7, $v1, 8
/* 0FB4B8 80291EA8 ACCF0000 */  sw    $t7, ($a2)
/* 0FB4BC 80291EAC AC690004 */  sw    $t1, 4($v1)
/* 0FB4C0 80291EB0 AC7F0000 */  sw    $ra, ($v1)
/* 0FB4C4 80291EB4 8CC30000 */  lw    $v1, ($a2)
/* 0FB4C8 80291EB8 35083EB0 */  ori   $t0, (0x07003EB0 & 0xFFFF) # ori $t0, $t0, 0x3eb0
/* 0FB4CC 80291EBC 28E10006 */  slti  $at, $a3, 6
/* 0FB4D0 80291EC0 24780008 */  addiu $t8, $v1, 8
/* 0FB4D4 80291EC4 ACD80000 */  sw    $t8, ($a2)
/* 0FB4D8 80291EC8 AC680004 */  sw    $t0, 4($v1)
/* 0FB4DC 80291ECC 14200012 */  bnez  $at, .L80291F18
/* 0FB4E0 80291ED0 AC7F0000 */   sw    $ra, ($v1)
/* 0FB4E4 80291ED4 28E1000D */  slti  $at, $a3, 0xd
/* 0FB4E8 80291ED8 1020000F */  beqz  $at, .L80291F18
/* 0FB4EC 80291EDC 00000000 */   nop
/* 0FB4F0 80291EE0 8CC30000 */  lw    $v1, ($a2)
/* 0FB4F4 80291EE4 3C0EFF33 */  lui   $t6, (0xFF33FFFF >> 16) # lui $t6, 0xff33
/* 0FB4F8 80291EE8 35CEFFFF */  ori   $t6, (0xFF33FFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 0FB4FC 80291EEC 24790008 */  addiu $t9, $v1, 8
/* 0FB500 80291EF0 ACD90000 */  sw    $t9, ($a2)
/* 0FB504 80291EF4 AC6E0004 */  sw    $t6, 4($v1)
/* 0FB508 80291EF8 AC6D0000 */  sw    $t5, ($v1)
/* 0FB50C 80291EFC 8CC30000 */  lw    $v1, ($a2)
/* 0FB510 80291F00 3C0C0700 */  lui   $t4, (0x07003DD0 >> 16) # lui $t4, 0x700
/* 0FB514 80291F04 358C3DD0 */  ori   $t4, (0x07003DD0 & 0xFFFF) # ori $t4, $t4, 0x3dd0
/* 0FB518 80291F08 246F0008 */  addiu $t7, $v1, 8
/* 0FB51C 80291F0C ACCF0000 */  sw    $t7, ($a2)
/* 0FB520 80291F10 AC6C0004 */  sw    $t4, 4($v1)
/* 0FB524 80291F14 AC7F0000 */  sw    $ra, ($v1)
.L80291F18:
/* 0FB528 80291F18 10000080 */  b     .L8029211C
/* 0FB52C 80291F1C 8CC30000 */   lw    $v1, ($a2)
/* 0FB530 80291F20 24010015 */  li    $at, 21
.L80291F24:
/* 0FB534 80291F24 10E10002 */  beq   $a3, $at, .L80291F30
/* 0FB538 80291F28 24010016 */   li    $at, 22
/* 0FB53C 80291F2C 14E1003B */  bne   $a3, $at, .L8029201C
.L80291F30:
/* 0FB540 80291F30 24010003 */   li    $at, 3
/* 0FB544 80291F34 15610010 */  bne   $t3, $at, .L80291F78
/* 0FB548 80291F38 3C080700 */   lui   $t0, (0x070036A8 >> 16) # lui $t0, 0x700
/* 0FB54C 80291F3C 8CC30000 */  lw    $v1, ($a2)
/* 0FB550 80291F40 3C19FC12 */  lui   $t9, (0xFC127E24 >> 16) # lui $t9, 0xfc12
/* 0FB554 80291F44 37397E24 */  ori   $t9, (0xFC127E24 & 0xFFFF) # ori $t9, $t9, 0x7e24
/* 0FB558 80291F48 24780008 */  addiu $t8, $v1, 8
/* 0FB55C 80291F4C ACD80000 */  sw    $t8, ($a2)
/* 0FB560 80291F50 240EF3F9 */  li    $t6, -3079
/* 0FB564 80291F54 AC6E0004 */  sw    $t6, 4($v1)
/* 0FB568 80291F58 AC790000 */  sw    $t9, ($v1)
/* 0FB56C 80291F5C 8CC30000 */  lw    $v1, ($a2)
/* 0FB570 80291F60 350836A8 */  ori   $t0, (0x070036A8 & 0xFFFF) # ori $t0, $t0, 0x36a8
/* 0FB574 80291F64 3C1F0600 */  lui   $ra, 0x600
/* 0FB578 80291F68 246F0008 */  addiu $t7, $v1, 8
/* 0FB57C 80291F6C ACCF0000 */  sw    $t7, ($a2)
/* 0FB580 80291F70 AC680004 */  sw    $t0, 4($v1)
/* 0FB584 80291F74 AC7F0000 */  sw    $ra, ($v1)
.L80291F78:
/* 0FB588 80291F78 3C080700 */  lui   $t0, (0x070036A8 >> 16) # lui $t0, 0x700
/* 0FB58C 80291F7C 24010001 */  li    $at, 1
/* 0FB590 80291F80 350836A8 */  ori   $t0, (0x070036A8 & 0xFFFF) # ori $t0, $t0, 0x36a8
/* 0FB594 80291F84 11610003 */  beq   $t3, $at, .L80291F94
/* 0FB598 80291F88 3C1F0600 */   lui   $ra, 0x600
/* 0FB59C 80291F8C 55600010 */  bnel  $t3, $zero, .L80291FD0
/* 0FB5A0 80291F90 8CC30000 */   lw    $v1, ($a2)
.L80291F94:
/* 0FB5A4 80291F94 8CC30000 */  lw    $v1, ($a2)
/* 0FB5A8 80291F98 3C19FC12 */  lui   $t9, (0xFC127E24 >> 16) # lui $t9, 0xfc12
/* 0FB5AC 80291F9C 37397E24 */  ori   $t9, (0xFC127E24 & 0xFFFF) # ori $t9, $t9, 0x7e24
/* 0FB5B0 80291FA0 24780008 */  addiu $t8, $v1, 8
/* 0FB5B4 80291FA4 ACD80000 */  sw    $t8, ($a2)
/* 0FB5B8 80291FA8 240EF3F9 */  li    $t6, -3079
/* 0FB5BC 80291FAC AC6E0004 */  sw    $t6, 4($v1)
/* 0FB5C0 80291FB0 AC790000 */  sw    $t9, ($v1)
/* 0FB5C4 80291FB4 8CC30000 */  lw    $v1, ($a2)
/* 0FB5C8 80291FB8 246F0008 */  addiu $t7, $v1, 8
/* 0FB5CC 80291FBC ACCF0000 */  sw    $t7, ($a2)
/* 0FB5D0 80291FC0 AC680004 */  sw    $t0, 4($v1)
/* 0FB5D4 80291FC4 10000054 */  b     .L80292118
/* 0FB5D8 80291FC8 AC7F0000 */   sw    $ra, ($v1)
/* 0FB5DC 80291FCC 8CC30000 */  lw    $v1, ($a2)
.L80291FD0:
/* 0FB5E0 80291FD0 3C19FF33 */  lui   $t9, (0xFF33FFFF >> 16) # lui $t9, 0xff33
/* 0FB5E4 80291FD4 3739FFFF */  ori   $t9, (0xFF33FFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* 0FB5E8 80291FD8 24780008 */  addiu $t8, $v1, 8
/* 0FB5EC 80291FDC ACD80000 */  sw    $t8, ($a2)
/* 0FB5F0 80291FE0 AC790004 */  sw    $t9, 4($v1)
/* 0FB5F4 80291FE4 AC6D0000 */  sw    $t5, ($v1)
/* 0FB5F8 80291FE8 8CC30000 */  lw    $v1, ($a2)
/* 0FB5FC 80291FEC 3C0A0700 */  lui   $t2, (0x07003F30 >> 16) # lui $t2, 0x700
/* 0FB600 80291FF0 354A3F30 */  ori   $t2, (0x07003F30 & 0xFFFF) # ori $t2, $t2, 0x3f30
/* 0FB604 80291FF4 246E0008 */  addiu $t6, $v1, 8
/* 0FB608 80291FF8 ACCE0000 */  sw    $t6, ($a2)
/* 0FB60C 80291FFC AC6A0004 */  sw    $t2, 4($v1)
/* 0FB610 80292000 AC7F0000 */  sw    $ra, ($v1)
/* 0FB614 80292004 8CC30000 */  lw    $v1, ($a2)
/* 0FB618 80292008 246F0008 */  addiu $t7, $v1, 8
/* 0FB61C 8029200C ACCF0000 */  sw    $t7, ($a2)
/* 0FB620 80292010 AC680004 */  sw    $t0, 4($v1)
/* 0FB624 80292014 10000040 */  b     .L80292118
/* 0FB628 80292018 AC7F0000 */   sw    $ra, ($v1)
.L8029201C:
/* 0FB62C 8029201C 24010018 */  li    $at, 24
/* 0FB630 80292020 54E10018 */  bnel  $a3, $at, .L80292084
/* 0FB634 80292024 24010017 */   li    $at, 23
/* 0FB638 80292028 11600003 */  beqz  $t3, .L80292038
/* 0FB63C 8029202C 24010003 */   li    $at, 3
/* 0FB640 80292030 15610011 */  bne   $t3, $at, .L80292078
/* 0FB644 80292034 00000000 */   nop
.L80292038:
/* 0FB648 80292038 8CC30000 */  lw    $v1, ($a2)
/* 0FB64C 8029203C 3C19FC12 */  lui   $t9, (0xFC127E24 >> 16) # lui $t9, 0xfc12
/* 0FB650 80292040 37397E24 */  ori   $t9, (0xFC127E24 & 0xFFFF) # ori $t9, $t9, 0x7e24
/* 0FB654 80292044 24780008 */  addiu $t8, $v1, 8
/* 0FB658 80292048 ACD80000 */  sw    $t8, ($a2)
/* 0FB65C 8029204C 240EF3F9 */  li    $t6, -3079
/* 0FB660 80292050 AC6E0004 */  sw    $t6, 4($v1)
/* 0FB664 80292054 AC790000 */  sw    $t9, ($v1)
/* 0FB668 80292058 8CC30000 */  lw    $v1, ($a2)
/* 0FB66C 8029205C 3C080700 */  lui   $t0, (0x070036A8 >> 16) # lui $t0, 0x700
/* 0FB670 80292060 350836A8 */  ori   $t0, (0x070036A8 & 0xFFFF) # ori $t0, $t0, 0x36a8
/* 0FB674 80292064 246F0008 */  addiu $t7, $v1, 8
/* 0FB678 80292068 ACCF0000 */  sw    $t7, ($a2)
/* 0FB67C 8029206C 3C1F0600 */  lui   $ra, 0x600
/* 0FB680 80292070 AC7F0000 */  sw    $ra, ($v1)
/* 0FB684 80292074 AC680004 */  sw    $t0, 4($v1)
.L80292078:
/* 0FB688 80292078 10000028 */  b     .L8029211C
/* 0FB68C 8029207C 8CC30000 */   lw    $v1, ($a2)
/* 0FB690 80292080 24010017 */  li    $at, 23
.L80292084:
/* 0FB694 80292084 14E10024 */  bne   $a3, $at, .L80292118
/* 0FB698 80292088 24010003 */   li    $at, 3
/* 0FB69C 8029208C 15610011 */  bne   $t3, $at, .L802920D4
/* 0FB6A0 80292090 3C080700 */   lui   $t0, (0x070036A8 >> 16) # lui $t0, 0x700
/* 0FB6A4 80292094 8CC30000 */  lw    $v1, ($a2)
/* 0FB6A8 80292098 3C19FC12 */  lui   $t9, (0xFC127E24 >> 16) # lui $t9, 0xfc12
/* 0FB6AC 8029209C 37397E24 */  ori   $t9, (0xFC127E24 & 0xFFFF) # ori $t9, $t9, 0x7e24
/* 0FB6B0 802920A0 24780008 */  addiu $t8, $v1, 8
/* 0FB6B4 802920A4 ACD80000 */  sw    $t8, ($a2)
/* 0FB6B8 802920A8 240EF3F9 */  li    $t6, -3079
/* 0FB6BC 802920AC AC6E0004 */  sw    $t6, 4($v1)
/* 0FB6C0 802920B0 AC790000 */  sw    $t9, ($v1)
/* 0FB6C4 802920B4 8CC30000 */  lw    $v1, ($a2)
/* 0FB6C8 802920B8 350836A8 */  ori   $t0, (0x070036A8 & 0xFFFF) # ori $t0, $t0, 0x36a8
/* 0FB6CC 802920BC 3C1F0600 */  lui   $ra, 0x600
/* 0FB6D0 802920C0 246F0008 */  addiu $t7, $v1, 8
/* 0FB6D4 802920C4 ACCF0000 */  sw    $t7, ($a2)
/* 0FB6D8 802920C8 AC680004 */  sw    $t0, 4($v1)
/* 0FB6DC 802920CC 10000012 */  b     .L80292118
/* 0FB6E0 802920D0 AC7F0000 */   sw    $ra, ($v1)
.L802920D4:
/* 0FB6E4 802920D4 15600010 */  bnez  $t3, .L80292118
/* 0FB6E8 802920D8 3C080700 */   lui   $t0, (0x070036A8 >> 16) # lui $t0, 0x700
/* 0FB6EC 802920DC 8CC30000 */  lw    $v1, ($a2)
/* 0FB6F0 802920E0 3C19FC12 */  lui   $t9, (0xFC127E24 >> 16) # lui $t9, 0xfc12
/* 0FB6F4 802920E4 37397E24 */  ori   $t9, (0xFC127E24 & 0xFFFF) # ori $t9, $t9, 0x7e24
/* 0FB6F8 802920E8 24780008 */  addiu $t8, $v1, 8
/* 0FB6FC 802920EC ACD80000 */  sw    $t8, ($a2)
/* 0FB700 802920F0 240EF3F9 */  li    $t6, -3079
/* 0FB704 802920F4 AC6E0004 */  sw    $t6, 4($v1)
/* 0FB708 802920F8 AC790000 */  sw    $t9, ($v1)
/* 0FB70C 802920FC 8CC30000 */  lw    $v1, ($a2)
/* 0FB710 80292100 350836A8 */  ori   $t0, (0x070036A8 & 0xFFFF) # ori $t0, $t0, 0x36a8
/* 0FB714 80292104 3C1F0600 */  lui   $ra, 0x600
/* 0FB718 80292108 246F0008 */  addiu $t7, $v1, 8
/* 0FB71C 8029210C ACCF0000 */  sw    $t7, ($a2)
/* 0FB720 80292110 AC680004 */  sw    $t0, 4($v1)
/* 0FB724 80292114 AC7F0000 */  sw    $ra, ($v1)
.L80292118:
/* 0FB728 80292118 8CC30000 */  lw    $v1, ($a2)
.L8029211C:
/* 0FB72C 8029211C 3C19FF33 */  lui   $t9, (0xFF33FFFF >> 16) # lui $t9, 0xff33
/* 0FB730 80292120 24EEFFFB */  addiu $t6, $a3, -5
/* 0FB734 80292124 24780008 */  addiu $t8, $v1, 8
/* 0FB738 80292128 3C080700 */  lui   $t0, (0x07003EB0 >> 16) # lui $t0, 0x700
/* 0FB73C 8029212C 3C090700 */  lui   $t1, (0x07003E40 >> 16) # lui $t1, 0x700
/* 0FB740 80292130 3C0A0700 */  lui   $t2, (0x07003F30 >> 16) # lui $t2, 0x700
/* 0FB744 80292134 3C0C0700 */  lui   $t4, (0x07003DD0 >> 16) # lui $t4, 0x700
/* 0FB748 80292138 ACD80000 */  sw    $t8, ($a2)
/* 0FB74C 8029213C 3739FFFF */  ori   $t9, (0xFF33FFFF & 0xFFFF) # ori $t9, $t9, 0xffff
/* 0FB750 80292140 2DC10013 */  sltiu $at, $t6, 0x13
/* 0FB754 80292144 358C3DD0 */  ori   $t4, (0x07003DD0 & 0xFFFF) # ori $t4, $t4, 0x3dd0
/* 0FB758 80292148 354A3F30 */  ori   $t2, (0x07003F30 & 0xFFFF) # ori $t2, $t2, 0x3f30
/* 0FB75C 8029214C 35293E40 */  ori   $t1, (0x07003E40 & 0xFFFF) # ori $t1, $t1, 0x3e40
/* 0FB760 80292150 35083EB0 */  ori   $t0, (0x07003EB0 & 0xFFFF) # ori $t0, $t0, 0x3eb0
/* 0FB764 80292154 3C1F0600 */  lui   $ra, 0x600
/* 0FB768 80292158 AC790004 */  sw    $t9, 4($v1)
/* 0FB76C 8029215C 102000A8 */  beqz  $at, .L80292400
/* 0FB770 80292160 AC6D0000 */   sw    $t5, ($v1)
/* 0FB774 80292164 000E7080 */  sll   $t6, $t6, 2
/* 0FB778 80292168 3C01802C */  lui   $at, %hi(jpt_802B9344)
/* 0FB77C 8029216C 002E0821 */  addu  $at, $at, $t6
/* 0FB780 80292170 8C2E9344 */  lw    $t6, %lo(jpt_802B9344)($at)
/* 0FB784 80292174 01C00008 */  jr    $t6
/* 0FB788 80292178 00000000 */   nop
glabel L8029217C
/* 0FB78C 8029217C 24010003 */  li    $at, 3
/* 0FB790 80292180 516100A0 */  beql  $t3, $at, .L80292404
/* 0FB794 80292184 8CC30000 */   lw    $v1, ($a2)
/* 0FB798 80292188 8CC30000 */  lw    $v1, ($a2)
/* 0FB79C 8029218C 246F0008 */  addiu $t7, $v1, 8
/* 0FB7A0 80292190 ACCF0000 */  sw    $t7, ($a2)
/* 0FB7A4 80292194 AC6C0004 */  sw    $t4, 4($v1)
/* 0FB7A8 80292198 10000099 */  b     .L80292400
/* 0FB7AC 8029219C AC7F0000 */   sw    $ra, ($v1)
glabel L802921A0
/* 0FB7B0 802921A0 11600009 */  beqz  $t3, .L802921C8
/* 0FB7B4 802921A4 24010001 */   li    $at, 1
/* 0FB7B8 802921A8 11610012 */  beq   $t3, $at, .L802921F4
/* 0FB7BC 802921AC 24010002 */   li    $at, 2
/* 0FB7C0 802921B0 11610020 */  beq   $t3, $at, .L80292234
/* 0FB7C4 802921B4 24010003 */   li    $at, 3
/* 0FB7C8 802921B8 5161002F */  beql  $t3, $at, .L80292278
/* 0FB7CC 802921BC 8CC30000 */   lw    $v1, ($a2)
/* 0FB7D0 802921C0 10000090 */  b     .L80292404
/* 0FB7D4 802921C4 8CC30000 */   lw    $v1, ($a2)
.L802921C8:
/* 0FB7D8 802921C8 8CC30000 */  lw    $v1, ($a2)
/* 0FB7DC 802921CC 24780008 */  addiu $t8, $v1, 8
/* 0FB7E0 802921D0 ACD80000 */  sw    $t8, ($a2)
/* 0FB7E4 802921D4 AC690004 */  sw    $t1, 4($v1)
/* 0FB7E8 802921D8 AC7F0000 */  sw    $ra, ($v1)
/* 0FB7EC 802921DC 8CC30000 */  lw    $v1, ($a2)
/* 0FB7F0 802921E0 24790008 */  addiu $t9, $v1, 8
/* 0FB7F4 802921E4 ACD90000 */  sw    $t9, ($a2)
/* 0FB7F8 802921E8 AC680004 */  sw    $t0, 4($v1)
/* 0FB7FC 802921EC 10000084 */  b     .L80292400
/* 0FB800 802921F0 AC7F0000 */   sw    $ra, ($v1)
.L802921F4:
/* 0FB804 802921F4 8CC30000 */  lw    $v1, ($a2)
/* 0FB808 802921F8 246E0008 */  addiu $t6, $v1, 8
/* 0FB80C 802921FC ACCE0000 */  sw    $t6, ($a2)
/* 0FB810 80292200 AC6C0004 */  sw    $t4, 4($v1)
/* 0FB814 80292204 AC7F0000 */  sw    $ra, ($v1)
/* 0FB818 80292208 8CC30000 */  lw    $v1, ($a2)
/* 0FB81C 8029220C 246F0008 */  addiu $t7, $v1, 8
/* 0FB820 80292210 ACCF0000 */  sw    $t7, ($a2)
/* 0FB824 80292214 AC690004 */  sw    $t1, 4($v1)
/* 0FB828 80292218 AC7F0000 */  sw    $ra, ($v1)
/* 0FB82C 8029221C 8CC30000 */  lw    $v1, ($a2)
/* 0FB830 80292220 24780008 */  addiu $t8, $v1, 8
/* 0FB834 80292224 ACD80000 */  sw    $t8, ($a2)
/* 0FB838 80292228 AC680004 */  sw    $t0, 4($v1)
/* 0FB83C 8029222C 10000074 */  b     .L80292400
/* 0FB840 80292230 AC7F0000 */   sw    $ra, ($v1)
.L80292234:
/* 0FB844 80292234 8CC30000 */  lw    $v1, ($a2)
/* 0FB848 80292238 24790008 */  addiu $t9, $v1, 8
/* 0FB84C 8029223C ACD90000 */  sw    $t9, ($a2)
/* 0FB850 80292240 AC690004 */  sw    $t1, 4($v1)
/* 0FB854 80292244 AC7F0000 */  sw    $ra, ($v1)
/* 0FB858 80292248 8CC30000 */  lw    $v1, ($a2)
/* 0FB85C 8029224C 246E0008 */  addiu $t6, $v1, 8
/* 0FB860 80292250 ACCE0000 */  sw    $t6, ($a2)
/* 0FB864 80292254 AC680004 */  sw    $t0, 4($v1)
/* 0FB868 80292258 AC7F0000 */  sw    $ra, ($v1)
/* 0FB86C 8029225C 8CC30000 */  lw    $v1, ($a2)
/* 0FB870 80292260 246F0008 */  addiu $t7, $v1, 8
/* 0FB874 80292264 ACCF0000 */  sw    $t7, ($a2)
/* 0FB878 80292268 AC6A0004 */  sw    $t2, 4($v1)
/* 0FB87C 8029226C 10000064 */  b     .L80292400
/* 0FB880 80292270 AC7F0000 */   sw    $ra, ($v1)
/* 0FB884 80292274 8CC30000 */  lw    $v1, ($a2)
.L80292278:
/* 0FB888 80292278 24780008 */  addiu $t8, $v1, 8
/* 0FB88C 8029227C ACD80000 */  sw    $t8, ($a2)
/* 0FB890 80292280 AC680004 */  sw    $t0, 4($v1)
/* 0FB894 80292284 AC7F0000 */  sw    $ra, ($v1)
/* 0FB898 80292288 8CC30000 */  lw    $v1, ($a2)
/* 0FB89C 8029228C 24790008 */  addiu $t9, $v1, 8
/* 0FB8A0 80292290 ACD90000 */  sw    $t9, ($a2)
/* 0FB8A4 80292294 AC6A0004 */  sw    $t2, 4($v1)
/* 0FB8A8 80292298 10000059 */  b     .L80292400
/* 0FB8AC 8029229C AC7F0000 */   sw    $ra, ($v1)
glabel L802922A0
/* 0FB8B0 802922A0 11600007 */  beqz  $t3, .L802922C0
/* 0FB8B4 802922A4 24010001 */   li    $at, 1
/* 0FB8B8 802922A8 11610010 */  beq   $t3, $at, .L802922EC
/* 0FB8BC 802922AC 24010002 */   li    $at, 2
/* 0FB8C0 802922B0 5161001F */  beql  $t3, $at, .L80292330
/* 0FB8C4 802922B4 8CC30000 */   lw    $v1, ($a2)
/* 0FB8C8 802922B8 10000052 */  b     .L80292404
/* 0FB8CC 802922BC 8CC30000 */   lw    $v1, ($a2)
.L802922C0:
/* 0FB8D0 802922C0 8CC30000 */  lw    $v1, ($a2)
/* 0FB8D4 802922C4 246E0008 */  addiu $t6, $v1, 8
/* 0FB8D8 802922C8 ACCE0000 */  sw    $t6, ($a2)
/* 0FB8DC 802922CC AC690004 */  sw    $t1, 4($v1)
/* 0FB8E0 802922D0 AC7F0000 */  sw    $ra, ($v1)
/* 0FB8E4 802922D4 8CC30000 */  lw    $v1, ($a2)
/* 0FB8E8 802922D8 246F0008 */  addiu $t7, $v1, 8
/* 0FB8EC 802922DC ACCF0000 */  sw    $t7, ($a2)
/* 0FB8F0 802922E0 AC680004 */  sw    $t0, 4($v1)
/* 0FB8F4 802922E4 10000046 */  b     .L80292400
/* 0FB8F8 802922E8 AC7F0000 */   sw    $ra, ($v1)
.L802922EC:
/* 0FB8FC 802922EC 8CC30000 */  lw    $v1, ($a2)
/* 0FB900 802922F0 24780008 */  addiu $t8, $v1, 8
/* 0FB904 802922F4 ACD80000 */  sw    $t8, ($a2)
/* 0FB908 802922F8 AC6C0004 */  sw    $t4, 4($v1)
/* 0FB90C 802922FC AC7F0000 */  sw    $ra, ($v1)
/* 0FB910 80292300 8CC30000 */  lw    $v1, ($a2)
/* 0FB914 80292304 24790008 */  addiu $t9, $v1, 8
/* 0FB918 80292308 ACD90000 */  sw    $t9, ($a2)
/* 0FB91C 8029230C AC690004 */  sw    $t1, 4($v1)
/* 0FB920 80292310 AC7F0000 */  sw    $ra, ($v1)
/* 0FB924 80292314 8CC30000 */  lw    $v1, ($a2)
/* 0FB928 80292318 246E0008 */  addiu $t6, $v1, 8
/* 0FB92C 8029231C ACCE0000 */  sw    $t6, ($a2)
/* 0FB930 80292320 AC680004 */  sw    $t0, 4($v1)
/* 0FB934 80292324 10000036 */  b     .L80292400
/* 0FB938 80292328 AC7F0000 */   sw    $ra, ($v1)
/* 0FB93C 8029232C 8CC30000 */  lw    $v1, ($a2)
.L80292330:
/* 0FB940 80292330 246F0008 */  addiu $t7, $v1, 8
/* 0FB944 80292334 ACCF0000 */  sw    $t7, ($a2)
/* 0FB948 80292338 AC690004 */  sw    $t1, 4($v1)
/* 0FB94C 8029233C AC7F0000 */  sw    $ra, ($v1)
/* 0FB950 80292340 8CC30000 */  lw    $v1, ($a2)
/* 0FB954 80292344 24780008 */  addiu $t8, $v1, 8
/* 0FB958 80292348 ACD80000 */  sw    $t8, ($a2)
/* 0FB95C 8029234C AC680004 */  sw    $t0, 4($v1)
/* 0FB960 80292350 1000002B */  b     .L80292400
/* 0FB964 80292354 AC7F0000 */   sw    $ra, ($v1)
glabel L80292358
/* 0FB968 80292358 11600003 */  beqz  $t3, .L80292368
/* 0FB96C 8029235C 24010001 */   li    $at, 1
/* 0FB970 80292360 55610012 */  bnel  $t3, $at, .L802923AC
/* 0FB974 80292364 8CC30000 */   lw    $v1, ($a2)
.L80292368:
/* 0FB978 80292368 8CC30000 */  lw    $v1, ($a2)
/* 0FB97C 8029236C 24790008 */  addiu $t9, $v1, 8
/* 0FB980 80292370 ACD90000 */  sw    $t9, ($a2)
/* 0FB984 80292374 AC690004 */  sw    $t1, 4($v1)
/* 0FB988 80292378 AC7F0000 */  sw    $ra, ($v1)
/* 0FB98C 8029237C 8CC30000 */  lw    $v1, ($a2)
/* 0FB990 80292380 246E0008 */  addiu $t6, $v1, 8
/* 0FB994 80292384 ACCE0000 */  sw    $t6, ($a2)
/* 0FB998 80292388 AC680004 */  sw    $t0, 4($v1)
/* 0FB99C 8029238C AC7F0000 */  sw    $ra, ($v1)
/* 0FB9A0 80292390 8CC30000 */  lw    $v1, ($a2)
/* 0FB9A4 80292394 246F0008 */  addiu $t7, $v1, 8
/* 0FB9A8 80292398 ACCF0000 */  sw    $t7, ($a2)
/* 0FB9AC 8029239C AC6A0004 */  sw    $t2, 4($v1)
/* 0FB9B0 802923A0 10000017 */  b     .L80292400
/* 0FB9B4 802923A4 AC7F0000 */   sw    $ra, ($v1)
/* 0FB9B8 802923A8 8CC30000 */  lw    $v1, ($a2)
.L802923AC:
/* 0FB9BC 802923AC 24780008 */  addiu $t8, $v1, 8
/* 0FB9C0 802923B0 ACD80000 */  sw    $t8, ($a2)
/* 0FB9C4 802923B4 AC680004 */  sw    $t0, 4($v1)
/* 0FB9C8 802923B8 10000011 */  b     .L80292400
/* 0FB9CC 802923BC AC7F0000 */   sw    $ra, ($v1)
glabel L802923C0
/* 0FB9D0 802923C0 55600010 */  bnel  $t3, $zero, .L80292404
/* 0FB9D4 802923C4 8CC30000 */   lw    $v1, ($a2)
/* 0FB9D8 802923C8 8CC30000 */  lw    $v1, ($a2)
/* 0FB9DC 802923CC 24790008 */  addiu $t9, $v1, 8
/* 0FB9E0 802923D0 ACD90000 */  sw    $t9, ($a2)
/* 0FB9E4 802923D4 AC6A0004 */  sw    $t2, 4($v1)
/* 0FB9E8 802923D8 10000009 */  b     .L80292400
/* 0FB9EC 802923DC AC7F0000 */   sw    $ra, ($v1)
glabel L802923E0
/* 0FB9F0 802923E0 24010001 */  li    $at, 1
/* 0FB9F4 802923E4 51610007 */  beql  $t3, $at, .L80292404
/* 0FB9F8 802923E8 8CC30000 */   lw    $v1, ($a2)
/* 0FB9FC 802923EC 8CC30000 */  lw    $v1, ($a2)
/* 0FBA00 802923F0 246E0008 */  addiu $t6, $v1, 8
/* 0FBA04 802923F4 ACCE0000 */  sw    $t6, ($a2)
/* 0FBA08 802923F8 AC6A0004 */  sw    $t2, 4($v1)
/* 0FBA0C 802923FC AC7F0000 */  sw    $ra, ($v1)
.L80292400:
glabel L80292400
/* 0FBA10 80292400 8CC30000 */  lw    $v1, ($a2)
.L80292404:
/* 0FBA14 80292404 3C18BB00 */  lui   $t8, (0xBB000900 >> 16) # lui $t8, 0xbb00
/* 0FBA18 80292408 37180900 */  ori   $t8, (0xBB000900 & 0xFFFF) # ori $t8, $t8, 0x900
/* 0FBA1C 8029240C 246F0008 */  addiu $t7, $v1, 8
/* 0FBA20 80292410 ACCF0000 */  sw    $t7, ($a2)
/* 0FBA24 80292414 2419FFFF */  li    $t9, -1
/* 0FBA28 80292418 AC790004 */  sw    $t9, 4($v1)
/* 0FBA2C 8029241C AC780000 */  sw    $t8, ($v1)
/* 0FBA30 80292420 8CC30000 */  lw    $v1, ($a2)
/* 0FBA34 80292424 3C0FB900 */  lui   $t7, (0xB9000002 >> 16) # lui $t7, 0xb900
/* 0FBA38 80292428 35EF0002 */  ori   $t7, (0xB9000002 & 0xFFFF) # ori $t7, $t7, 2
/* 0FBA3C 8029242C 246E0008 */  addiu $t6, $v1, 8
/* 0FBA40 80292430 ACCE0000 */  sw    $t6, ($a2)
/* 0FBA44 80292434 AC600004 */  sw    $zero, 4($v1)
/* 0FBA48 80292438 AC6F0000 */  sw    $t7, ($v1)
/* 0FBA4C 8029243C 8CC30000 */  lw    $v1, ($a2)
/* 0FBA50 80292440 3C19E700 */  lui   $t9, 0xe700
/* 0FBA54 80292444 24780008 */  addiu $t8, $v1, 8
/* 0FBA58 80292448 ACD80000 */  sw    $t8, ($a2)
/* 0FBA5C 8029244C AC600004 */  sw    $zero, 4($v1)
/* 0FBA60 80292450 AC790000 */  sw    $t9, ($v1)
.L80292454:
glabel L80292454
/* 0FBA64 80292454 8FBF0014 */  lw    $ra, 0x14($sp)
.L80292458:
/* 0FBA68 80292458 27BD0270 */  addiu $sp, $sp, 0x270
/* 0FBA6C 8029245C 03E00008 */  jr    $ra
/* 0FBA70 80292460 00000000 */   nop
