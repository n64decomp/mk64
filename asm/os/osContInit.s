.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches
.set gp=64

.include "macros.inc"

.section .text, "ax"

glabel osContInit
/* 0CDD30 800CD130 27BDFF80 */  addiu $sp, $sp, -0x80
/* 0CDD34 800CD134 3C0E800F */  lui   $t6, %hi(D_800EB360) # $t6, 0x800f
/* 0CDD38 800CD138 8DCEB360 */  lw    $t6, %lo(D_800EB360)($t6)
/* 0CDD3C 800CD13C AFBF0024 */  sw    $ra, 0x24($sp)
/* 0CDD40 800CD140 AFA40080 */  sw    $a0, 0x80($sp)
/* 0CDD44 800CD144 AFA50084 */  sw    $a1, 0x84($sp)
/* 0CDD48 800CD148 AFA60088 */  sw    $a2, 0x88($sp)
/* 0CDD4C 800CD14C 11C00003 */  beqz  $t6, .L800CD15C
/* 0CDD50 800CD150 AFA00078 */   sw    $zero, 0x78($sp)
/* 0CDD54 800CD154 10000070 */  b     .L800CD318
/* 0CDD58 800CD158 00001025 */   move  $v0, $zero
.L800CD15C:
/* 0CDD5C 800CD15C 240F0001 */  li    $t7, 1
/* 0CDD60 800CD160 3C01800F */  lui   $at, %hi(D_800EB360) # $at, 0x800f
/* 0CDD64 800CD164 0C033778 */  jal   osGetTime
/* 0CDD68 800CD168 AC2FB360 */   sw    $t7, %lo(D_800EB360)($at)
/* 0CDD6C 800CD16C 3C050007 */  lui   $a1, (0x0007A120 >> 16) # lui $a1, 7
/* 0CDD70 800CD170 3C06800F */  lui   $a2, %hi(osClockRate) # $a2, 0x800f
/* 0CDD74 800CD174 3C07800F */  lui   $a3, %hi(osClockRate + 4) # $a3, 0x800f
/* 0CDD78 800CD178 AFA20070 */  sw    $v0, 0x70($sp)
/* 0CDD7C 800CD17C AFA30074 */  sw    $v1, 0x74($sp)
/* 0CDD80 800CD180 8CE7A5E4 */  lw    $a3, %lo(osClockRate + 4)($a3)
/* 0CDD84 800CD184 8CC6A5E0 */  lw    $a2, %lo(osClockRate)($a2)
/* 0CDD88 800CD188 34A5A120 */  ori   $a1, (0x0007A120 & 0xFFFF) # ori $a1, $a1, 0xa120
/* 0CDD8C 800CD18C 0C0337F6 */  jal   __ll_mul
/* 0CDD90 800CD190 24040000 */   li    $a0, 0
/* 0CDD94 800CD194 AFA20030 */  sw    $v0, 0x30($sp)
/* 0CDD98 800CD198 AFA30034 */  sw    $v1, 0x34($sp)
/* 0CDD9C 800CD19C 3C07000F */  lui   $a3, (0x000F4240 >> 16) # lui $a3, 0xf
/* 0CDDA0 800CD1A0 34E74240 */  ori   $a3, (0x000F4240 & 0xFFFF) # ori $a3, $a3, 0x4240
/* 0CDDA4 800CD1A4 8FA50034 */  lw    $a1, 0x34($sp)
/* 0CDDA8 800CD1A8 8FA40030 */  lw    $a0, 0x30($sp)
/* 0CDDAC 800CD1AC 0C0337B6 */  jal   __ull_div
/* 0CDDB0 800CD1B0 24060000 */   li    $a2, 0
/* 0CDDB4 800CD1B4 8FB80070 */  lw    $t8, 0x70($sp)
/* 0CDDB8 800CD1B8 8FB90074 */  lw    $t9, 0x74($sp)
/* 0CDDBC 800CD1BC 0058082B */  sltu  $at, $v0, $t8
/* 0CDDC0 800CD1C0 14200031 */  bnez  $at, .L800CD288
/* 0CDDC4 800CD1C4 0302082B */   sltu  $at, $t8, $v0
/* 0CDDC8 800CD1C8 14200003 */  bnez  $at, .L800CD1D8
/* 0CDDCC 800CD1CC 0323082B */   sltu  $at, $t9, $v1
/* 0CDDD0 800CD1D0 1020002D */  beqz  $at, .L800CD288
/* 0CDDD4 800CD1D4 00000000 */   nop   
.L800CD1D8:
/* 0CDDD8 800CD1D8 27A40038 */  addiu $a0, $sp, 0x38
/* 0CDDDC 800CD1DC 27A5007C */  addiu $a1, $sp, 0x7c
/* 0CDDE0 800CD1E0 0C033358 */  jal   osCreateMesgQueue
/* 0CDDE4 800CD1E4 24060001 */   li    $a2, 1
/* 0CDDE8 800CD1E8 3C050007 */  lui   $a1, (0x0007A120 >> 16) # lui $a1, 7
/* 0CDDEC 800CD1EC 3C06800F */  lui   $a2, %hi(osClockRate) # $a2, 0x800f
/* 0CDDF0 800CD1F0 3C07800F */  lui   $a3, %hi(osClockRate + 4) # $a3, 0x800f
/* 0CDDF4 800CD1F4 8CE7A5E4 */  lw    $a3, %lo(osClockRate + 4)($a3)
/* 0CDDF8 800CD1F8 8CC6A5E0 */  lw    $a2, %lo(osClockRate)($a2)
/* 0CDDFC 800CD1FC 34A5A120 */  ori   $a1, (0x0007A120 & 0xFFFF) # ori $a1, $a1, 0xa120
/* 0CDE00 800CD200 0C0337F6 */  jal   __ll_mul
/* 0CDE04 800CD204 24040000 */   li    $a0, 0
/* 0CDE08 800CD208 AFA20028 */  sw    $v0, 0x28($sp)
/* 0CDE0C 800CD20C AFA3002C */  sw    $v1, 0x2c($sp)
/* 0CDE10 800CD210 3C07000F */  lui   $a3, (0x000F4240 >> 16) # lui $a3, 0xf
/* 0CDE14 800CD214 34E74240 */  ori   $a3, (0x000F4240 & 0xFFFF) # ori $a3, $a3, 0x4240
/* 0CDE18 800CD218 8FA5002C */  lw    $a1, 0x2c($sp)
/* 0CDE1C 800CD21C 8FA40028 */  lw    $a0, 0x28($sp)
/* 0CDE20 800CD220 0C0337B6 */  jal   __ull_div
/* 0CDE24 800CD224 24060000 */   li    $a2, 0
/* 0CDE28 800CD228 AFA20030 */  sw    $v0, 0x30($sp)
/* 0CDE2C 800CD22C AFA30034 */  sw    $v1, 0x34($sp)
/* 0CDE30 800CD230 8FA90034 */  lw    $t1, 0x34($sp)
/* 0CDE34 800CD234 8FA80030 */  lw    $t0, 0x30($sp)
/* 0CDE38 800CD238 8FAA0070 */  lw    $t2, 0x70($sp)
/* 0CDE3C 800CD23C 8FAB0074 */  lw    $t3, 0x74($sp)
/* 0CDE40 800CD240 240C0000 */  li    $t4, 0
/* 0CDE44 800CD244 240D0000 */  li    $t5, 0
/* 0CDE48 800CD248 27AE0038 */  addiu $t6, $sp, 0x38
/* 0CDE4C 800CD24C 27AF007C */  addiu $t7, $sp, 0x7c
/* 0CDE50 800CD250 010A3023 */  subu  $a2, $t0, $t2
/* 0CDE54 800CD254 012B082B */  sltu  $at, $t1, $t3
/* 0CDE58 800CD258 00C13023 */  subu  $a2, $a2, $at
/* 0CDE5C 800CD25C AFAF001C */  sw    $t7, 0x1c($sp)
/* 0CDE60 800CD260 AFAE0018 */  sw    $t6, 0x18($sp)
/* 0CDE64 800CD264 AFAD0014 */  sw    $t5, 0x14($sp)
/* 0CDE68 800CD268 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0CDE6C 800CD26C 27A40050 */  addiu $a0, $sp, 0x50
/* 0CDE70 800CD270 0C034E70 */  jal   osSetTimer
/* 0CDE74 800CD274 012B3823 */   subu  $a3, $t1, $t3
/* 0CDE78 800CD278 27A40038 */  addiu $a0, $sp, 0x38
/* 0CDE7C 800CD27C 27A5007C */  addiu $a1, $sp, 0x7c
/* 0CDE80 800CD280 0C0335D4 */  jal   osRecvMesg
/* 0CDE84 800CD284 24060001 */   li    $a2, 1
.L800CD288:
/* 0CDE88 800CD288 24180004 */  li    $t8, 4
/* 0CDE8C 800CD28C 3C018019 */  lui   $at, %hi(_osContNumControllers) # $at, 0x8019
/* 0CDE90 800CD290 A0386541 */  sb    $t8, %lo(_osContNumControllers)($at)
/* 0CDE94 800CD294 0C0334FE */  jal   __osPackRequestData
/* 0CDE98 800CD298 00002025 */   move  $a0, $zero
/* 0CDE9C 800CD29C 3C058019 */  lui   $a1, %hi(_osContCmdBuf) # $a1, 0x8019
/* 0CDEA0 800CD2A0 24A56500 */  addiu $a1, %lo(_osContCmdBuf) # addiu $a1, $a1, 0x6500
/* 0CDEA4 800CD2A4 0C034EA8 */  jal   __osSiRawStartDma
/* 0CDEA8 800CD2A8 24040001 */   li    $a0, 1
/* 0CDEAC 800CD2AC AFA20078 */  sw    $v0, 0x78($sp)
/* 0CDEB0 800CD2B0 8FA40080 */  lw    $a0, 0x80($sp)
/* 0CDEB4 800CD2B4 27A5007C */  addiu $a1, $sp, 0x7c
/* 0CDEB8 800CD2B8 0C0335D4 */  jal   osRecvMesg
/* 0CDEBC 800CD2BC 24060001 */   li    $a2, 1
/* 0CDEC0 800CD2C0 3C058019 */  lui   $a1, %hi(_osContCmdBuf) # $a1, 0x8019
/* 0CDEC4 800CD2C4 24A56500 */  addiu $a1, %lo(_osContCmdBuf) # addiu $a1, $a1, 0x6500
/* 0CDEC8 800CD2C8 0C034EA8 */  jal   __osSiRawStartDma
/* 0CDECC 800CD2CC 00002025 */   move  $a0, $zero
/* 0CDED0 800CD2D0 AFA20078 */  sw    $v0, 0x78($sp)
/* 0CDED4 800CD2D4 8FA40080 */  lw    $a0, 0x80($sp)
/* 0CDED8 800CD2D8 27A5007C */  addiu $a1, $sp, 0x7c
/* 0CDEDC 800CD2DC 0C0335D4 */  jal   osRecvMesg
/* 0CDEE0 800CD2E0 24060001 */   li    $a2, 1
/* 0CDEE4 800CD2E4 8FA40084 */  lw    $a0, 0x84($sp)
/* 0CDEE8 800CD2E8 0C0334CA */  jal   __osContGetInitData
/* 0CDEEC 800CD2EC 8FA50088 */   lw    $a1, 0x88($sp)
/* 0CDEF0 800CD2F0 3C018019 */  lui   $at, %hi(_osLastSentSiCmd) # $at, 0x8019
/* 0CDEF4 800CD2F4 0C034ED4 */  jal   __osSiCreateAccessQueue
/* 0CDEF8 800CD2F8 A0206540 */   sb    $zero, %lo(_osLastSentSiCmd)($at)
/* 0CDEFC 800CD2FC 3C048019 */  lui   $a0, %hi(D_80196568) # $a0, 0x8019
/* 0CDF00 800CD300 3C058019 */  lui   $a1, %hi(D_80196580) # $a1, 0x8019
/* 0CDF04 800CD304 24A56580 */  addiu $a1, %lo(D_80196580) # addiu $a1, $a1, 0x6580
/* 0CDF08 800CD308 24846568 */  addiu $a0, %lo(D_80196568) # addiu $a0, $a0, 0x6568
/* 0CDF0C 800CD30C 0C033358 */  jal   osCreateMesgQueue
/* 0CDF10 800CD310 24060001 */   li    $a2, 1
/* 0CDF14 800CD314 8FA20078 */  lw    $v0, 0x78($sp)
.L800CD318:
/* 0CDF18 800CD318 8FBF0024 */  lw    $ra, 0x24($sp)
/* 0CDF1C 800CD31C 27BD0080 */  addiu $sp, $sp, 0x80
/* 0CDF20 800CD320 03E00008 */  jr    $ra
/* 0CDF24 800CD324 00000000 */   nop   

glabel __osContGetInitData
/* 0CDF28 800CD328 3C0F8019 */  lui   $t7, %hi(_osContNumControllers) # $t7, 0x8019
/* 0CDF2C 800CD32C 91EF6541 */  lbu   $t7, %lo(_osContNumControllers)($t7)
/* 0CDF30 800CD330 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0CDF34 800CD334 3C0E8019 */  lui   $t6, %hi(_osContCmdBuf) # $t6, 0x8019
/* 0CDF38 800CD338 25CE6500 */  addiu $t6, %lo(_osContCmdBuf) # addiu $t6, $t6, 0x6500
/* 0CDF3C 800CD33C A3A00007 */  sb    $zero, 7($sp)
/* 0CDF40 800CD340 AFAE0014 */  sw    $t6, 0x14($sp)
/* 0CDF44 800CD344 19E00028 */  blez  $t7, .L800CD3E8
/* 0CDF48 800CD348 AFA00008 */   sw    $zero, 8($sp)
.L800CD34C:
/* 0CDF4C 800CD34C 8FB90014 */  lw    $t9, 0x14($sp)
/* 0CDF50 800CD350 27B8000C */  addiu $t8, $sp, 0xc
/* 0CDF54 800CD354 8B210000 */  lwl   $at, ($t9)
/* 0CDF58 800CD358 9B210003 */  lwr   $at, 3($t9)
/* 0CDF5C 800CD35C AF010000 */  sw    $at, ($t8)
/* 0CDF60 800CD360 8B290004 */  lwl   $t1, 4($t9)
/* 0CDF64 800CD364 9B290007 */  lwr   $t1, 7($t9)
/* 0CDF68 800CD368 AF090004 */  sw    $t1, 4($t8)
/* 0CDF6C 800CD36C 93AA000E */  lbu   $t2, 0xe($sp)
/* 0CDF70 800CD370 314B00C0 */  andi  $t3, $t2, 0xc0
/* 0CDF74 800CD374 000B6103 */  sra   $t4, $t3, 4
/* 0CDF78 800CD378 A0AC0003 */  sb    $t4, 3($a1)
/* 0CDF7C 800CD37C 90AD0003 */  lbu   $t5, 3($a1)
/* 0CDF80 800CD380 15A0000E */  bnez  $t5, .L800CD3BC
/* 0CDF84 800CD384 00000000 */   nop   
/* 0CDF88 800CD388 93AE0011 */  lbu   $t6, 0x11($sp)
/* 0CDF8C 800CD38C 93A80010 */  lbu   $t0, 0x10($sp)
/* 0CDF90 800CD390 240B0001 */  li    $t3, 1
/* 0CDF94 800CD394 000E7A00 */  sll   $t7, $t6, 8
/* 0CDF98 800CD398 01E8C025 */  or    $t8, $t7, $t0
/* 0CDF9C 800CD39C A4B80000 */  sh    $t8, ($a1)
/* 0CDFA0 800CD3A0 93B90012 */  lbu   $t9, 0x12($sp)
/* 0CDFA4 800CD3A4 A0B90002 */  sb    $t9, 2($a1)
/* 0CDFA8 800CD3A8 8FAA0008 */  lw    $t2, 8($sp)
/* 0CDFAC 800CD3AC 93A90007 */  lbu   $t1, 7($sp)
/* 0CDFB0 800CD3B0 014B6004 */  sllv  $t4, $t3, $t2
/* 0CDFB4 800CD3B4 012C6825 */  or    $t5, $t1, $t4
/* 0CDFB8 800CD3B8 A3AD0007 */  sb    $t5, 7($sp)
.L800CD3BC:
/* 0CDFBC 800CD3BC 8FAE0008 */  lw    $t6, 8($sp)
/* 0CDFC0 800CD3C0 3C198019 */  lui   $t9, %hi(_osContNumControllers) # $t9, 0x8019
/* 0CDFC4 800CD3C4 93396541 */  lbu   $t9, %lo(_osContNumControllers)($t9)
/* 0CDFC8 800CD3C8 8FA80014 */  lw    $t0, 0x14($sp)
/* 0CDFCC 800CD3CC 25CF0001 */  addiu $t7, $t6, 1
/* 0CDFD0 800CD3D0 01F9082A */  slt   $at, $t7, $t9
/* 0CDFD4 800CD3D4 25180008 */  addiu $t8, $t0, 8
/* 0CDFD8 800CD3D8 AFB80014 */  sw    $t8, 0x14($sp)
/* 0CDFDC 800CD3DC AFAF0008 */  sw    $t7, 8($sp)
/* 0CDFE0 800CD3E0 1420FFDA */  bnez  $at, .L800CD34C
/* 0CDFE4 800CD3E4 24A50004 */   addiu $a1, $a1, 4
.L800CD3E8:
/* 0CDFE8 800CD3E8 93AB0007 */  lbu   $t3, 7($sp)
/* 0CDFEC 800CD3EC 27BD0018 */  addiu $sp, $sp, 0x18
/* 0CDFF0 800CD3F0 03E00008 */  jr    $ra
/* 0CDFF4 800CD3F4 A08B0000 */   sb    $t3, ($a0)

glabel __osPackRequestData
/* 0CDFF8 800CD3F8 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0CDFFC 800CD3FC 308400FF */  andi  $a0, $a0, 0xff
/* 0CE000 800CD400 AFA00000 */  sw    $zero, ($sp)
.L800CD404:
/* 0CE004 800CD404 8FAE0000 */  lw    $t6, ($sp)
/* 0CE008 800CD408 8FB80000 */  lw    $t8, ($sp)
/* 0CE00C 800CD40C 3C018019 */  lui   $at, %hi(_osContCmdBuf) # 0x8019
/* 0CE010 800CD410 000E7880 */  sll   $t7, $t6, 2
/* 0CE014 800CD414 002F0821 */  addu  $at, $at, $t7
/* 0CE018 800CD418 AC206500 */  sw    $zero, %lo(_osContCmdBuf)($at) # 0x6500($at)
/* 0CE01C 800CD41C 27190001 */  addiu $t9, $t8, 1
/* 0CE020 800CD420 2B210010 */  slti  $at, $t9, 0x10
/* 0CE024 800CD424 1420FFF7 */  bnez  $at, .L800CD404
/* 0CE028 800CD428 AFB90000 */   sw    $t9, ($sp)
/* 0CE02C 800CD42C 3C198019 */  lui   $t9, %hi(_osContNumControllers) # $t9, 0x8019
/* 0CE030 800CD430 93396541 */  lbu   $t9, %lo(_osContNumControllers)($t9)
/* 0CE034 800CD434 3C098019 */  lui   $t1, %hi(_osContCmdBuf) # $t1, 0x8019
/* 0CE038 800CD438 24080001 */  li    $t0, 1
/* 0CE03C 800CD43C 3C018019 */  lui   $at, %hi(_osContPifCtrl) # $at, 0x8019
/* 0CE040 800CD440 25296500 */  addiu $t1, %lo(_osContCmdBuf) # addiu $t1, $t1, 0x6500
/* 0CE044 800CD444 240A00FF */  li    $t2, 255
/* 0CE048 800CD448 240B0001 */  li    $t3, 1
/* 0CE04C 800CD44C 240C0003 */  li    $t4, 3
/* 0CE050 800CD450 240D00FF */  li    $t5, 255
/* 0CE054 800CD454 240E00FF */  li    $t6, 255
/* 0CE058 800CD458 240F00FF */  li    $t7, 255
/* 0CE05C 800CD45C 241800FF */  li    $t8, 255
/* 0CE060 800CD460 AC28653C */  sw    $t0, %lo(_osContPifCtrl)($at)
/* 0CE064 800CD464 AFA9000C */  sw    $t1, 0xc($sp)
/* 0CE068 800CD468 A3AA0004 */  sb    $t2, 4($sp)
/* 0CE06C 800CD46C A3AB0005 */  sb    $t3, 5($sp)
/* 0CE070 800CD470 A3AC0006 */  sb    $t4, 6($sp)
/* 0CE074 800CD474 A3A40007 */  sb    $a0, 7($sp)
/* 0CE078 800CD478 A3AD0008 */  sb    $t5, 8($sp)
/* 0CE07C 800CD47C A3AE0009 */  sb    $t6, 9($sp)
/* 0CE080 800CD480 A3AF000A */  sb    $t7, 0xa($sp)
/* 0CE084 800CD484 A3B8000B */  sb    $t8, 0xb($sp)
/* 0CE088 800CD488 1B200013 */  blez  $t9, .L800CD4D8
/* 0CE08C 800CD48C AFA00000 */   sw    $zero, ($sp)
.L800CD490:
/* 0CE090 800CD490 27A90004 */  addiu $t1, $sp, 4
/* 0CE094 800CD494 8D210000 */  lw    $at, ($t1)
/* 0CE098 800CD498 8FA8000C */  lw    $t0, 0xc($sp)
/* 0CE09C 800CD49C 3C188019 */  lui   $t8, %hi(_osContNumControllers) # $t8, 0x8019
/* 0CE0A0 800CD4A0 A9010000 */  swl   $at, ($t0)
/* 0CE0A4 800CD4A4 B9010003 */  swr   $at, 3($t0)
/* 0CE0A8 800CD4A8 8D2B0004 */  lw    $t3, 4($t1)
/* 0CE0AC 800CD4AC A90B0004 */  swl   $t3, 4($t0)
/* 0CE0B0 800CD4B0 B90B0007 */  swr   $t3, 7($t0)
/* 0CE0B4 800CD4B4 8FAE0000 */  lw    $t6, ($sp)
/* 0CE0B8 800CD4B8 93186541 */  lbu   $t8, %lo(_osContNumControllers)($t8)
/* 0CE0BC 800CD4BC 8FAC000C */  lw    $t4, 0xc($sp)
/* 0CE0C0 800CD4C0 25CF0001 */  addiu $t7, $t6, 1
/* 0CE0C4 800CD4C4 01F8082A */  slt   $at, $t7, $t8
/* 0CE0C8 800CD4C8 258D0008 */  addiu $t5, $t4, 8
/* 0CE0CC 800CD4CC AFAF0000 */  sw    $t7, ($sp)
/* 0CE0D0 800CD4D0 1420FFEF */  bnez  $at, .L800CD490
/* 0CE0D4 800CD4D4 AFAD000C */   sw    $t5, 0xc($sp)
.L800CD4D8:
/* 0CE0D8 800CD4D8 8FAA000C */  lw    $t2, 0xc($sp)
/* 0CE0DC 800CD4DC 241900FE */  li    $t9, 254
/* 0CE0E0 800CD4E0 27BD0010 */  addiu $sp, $sp, 0x10
/* 0CE0E4 800CD4E4 03E00008 */  jr    $ra
/* 0CE0E8 800CD4E8 A1590000 */   sb    $t9, ($t2)

/* 0CE0EC 800CD4EC 00000000 */  nop   

