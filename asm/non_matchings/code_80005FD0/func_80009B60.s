.section .late_rodata

glabel D_800ECFB0
.float 4.3

glabel D_800ECFB4
.float 8.33333333

glabel D_800ECFB8
.float 0.9

glabel D_800ECFBC
.float -0.9

glabel D_800ECFC0
.float 0.9

glabel D_800ECFC4
.float -0.9

glabel D_800ECFC8
.float 3.33333333

.section .text

glabel func_80009B60
/* 00A760 80009B60 3C0E800E */  lui   $t6, %hi(gCurrentCourseId)
/* 00A764 80009B64 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 00A768 80009B68 3C01800E */  lui   $at, %hi(gKartAICourseMaximumSeparation)
/* 00A76C 80009B6C 3C0A8016 */  lui   $t2, %hi(D_80163100) # $t2, 0x8016
/* 00A770 80009B70 000E7880 */  sll   $t7, $t6, 2
/* 00A774 80009B74 002F0821 */  addu  $at, $at, $t7
/* 00A778 80009B78 C424CA4C */  lwc1  $f4, %lo(gKartAICourseMaximumSeparation)($at)
/* 00A77C 80009B7C 27BDFF30 */  addiu $sp, $sp, -0xd0
/* 00A780 80009B80 254A3100 */  addiu $t2, %lo(D_80163100) # addiu $t2, $t2, 0x3100
/* 00A784 80009B84 4600218D */  trunc.w.s $f6, $f4
/* 00A788 80009B88 00043880 */  sll   $a3, $a0, 2
/* 00A78C 80009B8C AFBF0014 */  sw    $ra, 0x14($sp)
/* 00A790 80009B90 00802825 */  move  $a1, $a0
/* 00A794 80009B94 44193000 */  mfc1  $t9, $f6
/* 00A798 80009B98 00EA1021 */  addu  $v0, $a3, $t2
/* 00A79C 80009B9C 07220565 */  bltzl $t9, .L8000B134
/* 00A7A0 80009BA0 8FBF0014 */   lw    $ra, 0x14($sp)
/* 00A7A4 80009BA4 8C4B0000 */  lw    $t3, ($v0)
/* 00A7A8 80009BA8 3C088016 */  lui   $t0, %hi(D_80163378) # $t0, 0x8016
/* 00A7AC 80009BAC 25083378 */  addiu $t0, %lo(D_80163378) # addiu $t0, $t0, 0x3378
/* 00A7B0 80009BB0 256C0001 */  addiu $t4, $t3, 1
/* 00A7B4 80009BB4 1480000B */  bnez  $a0, .L80009BE4
/* 00A7B8 80009BB8 AC4C0000 */   sw    $t4, ($v0)
/* 00A7BC 80009BBC 8D0D0000 */  lw    $t5, ($t0)
/* 00A7C0 80009BC0 3C028016 */  lui   $v0, %hi(D_80163488) # $v0, 0x8016
/* 00A7C4 80009BC4 24423488 */  addiu $v0, %lo(D_80163488) # addiu $v0, $v0, 0x3488
/* 00A7C8 80009BC8 25AE0001 */  addiu $t6, $t5, 1
/* 00A7CC 80009BCC 31D80001 */  andi  $t8, $t6, 1
/* 00A7D0 80009BD0 13000004 */  beqz  $t8, .L80009BE4
/* 00A7D4 80009BD4 AD0E0000 */   sw    $t6, ($t0)
/* 00A7D8 80009BD8 8C590000 */  lw    $t9, ($v0)
/* 00A7DC 80009BDC 272A0001 */  addiu $t2, $t9, 1
/* 00A7E0 80009BE0 AC4A0000 */  sw    $t2, ($v0)
.L80009BE4:
/* 00A7E4 80009BE4 000558C0 */  sll   $t3, $a1, 3
/* 00A7E8 80009BE8 01655823 */  subu  $t3, $t3, $a1
/* 00A7EC 80009BEC 000B5900 */  sll   $t3, $t3, 4
/* 00A7F0 80009BF0 01655823 */  subu  $t3, $t3, $a1
/* 00A7F4 80009BF4 000B5880 */  sll   $t3, $t3, 2
/* 00A7F8 80009BF8 01655823 */  subu  $t3, $t3, $a1
/* 00A7FC 80009BFC 3C0C800F */  lui   $t4, %hi(gPlayers) # $t4, 0x800f
/* 00A800 80009C00 258C6990 */  addiu $t4, %lo(gPlayers) # addiu $t4, $t4, 0x6990
/* 00A804 80009C04 000B58C0 */  sll   $t3, $t3, 3
/* 00A808 80009C08 016C1821 */  addu  $v1, $t3, $t4
/* 00A80C 80009C0C 946D0000 */  lhu   $t5, ($v1)
/* 00A810 80009C10 3C188016 */  lui   $t8, %hi(D_801633E0) # $t8, 0x8016
/* 00A814 80009C14 271833E0 */  addiu $t8, %lo(D_801633E0) # addiu $t8, $t8, 0x33e0
/* 00A818 80009C18 31AE8000 */  andi  $t6, $t5, 0x8000
/* 00A81C 80009C1C 15C0000E */  bnez  $t6, .L80009C58
/* 00A820 80009C20 00053040 */   sll   $a2, $a1, 1
/* 00A824 80009C24 3C01C47A */  li    $at, 0xC47A0000 # -1000.000000
/* 00A828 80009C28 44810000 */  mtc1  $at, $f0
/* 00A82C 80009C2C 3C018016 */  lui   $at, %hi(D_80164450) # 0x8016
/* 00A830 80009C30 00270821 */  addu  $at, $at, $a3
/* 00A834 80009C34 240FFFEC */  li    $t7, -20
/* 00A838 80009C38 AC2F4450 */  sw    $t7, %lo(D_80164450)($at) # 0x4450($at)
/* 00A83C 80009C3C 3C018016 */  lui   $at, %hi(gCourseCompletionPercentByPlayerId)
/* 00A840 80009C40 00270821 */  addu  $at, $at, $a3
/* 00A844 80009C44 E42044D0 */  swc1  $f0, %lo(gCourseCompletionPercentByPlayerId)($at)
/* 00A848 80009C48 3C018016 */  lui   $at, %hi(gLapCompletionPercentByPlayerId)
/* 00A84C 80009C4C 00270821 */  addu  $at, $at, $a3
/* 00A850 80009C50 10000537 */  b     .L8000B130
/* 00A854 80009C54 E42044A8 */   swc1  $f0, %lo(gLapCompletionPercentByPlayerId)($at)
.L80009C58:
/* 00A858 80009C58 00D81021 */  addu  $v0, $a2, $t8
/* 00A85C 80009C5C A4400000 */  sh    $zero, ($v0)
/* 00A860 80009C60 3C198016 */  lui   $t9, %hi(gCourseMinX) # $t9, 0x8016
/* 00A864 80009C64 8739F6EA */  lh    $t9, %lo(gCourseMinX)($t9)
/* 00A868 80009C68 C4600014 */  lwc1  $f0, 0x14($v1)
/* 00A86C 80009C6C 240A0001 */  li    $t2, 1
/* 00A870 80009C70 44994000 */  mtc1  $t9, $f8
/* 00A874 80009C74 3C0B8016 */  lui   $t3, %hi(gCourseMaxX) # $t3, 0x8016
/* 00A878 80009C78 240C0002 */  li    $t4, 2
/* 00A87C 80009C7C 468042A0 */  cvt.s.w $f10, $f8
/* 00A880 80009C80 3C0D8016 */  lui   $t5, %hi(gCourseMinZ) # $t5, 0x8016
/* 00A884 80009C84 240E0003 */  li    $t6, 3
/* 00A888 80009C88 24180004 */  li    $t8, 4
/* 00A88C 80009C8C 3C0F8016 */  lui   $t7, %hi(gCourseMaxZ) # $t7, 0x8016
/* 00A890 80009C90 460A003C */  c.lt.s $f0, $f10
/* 00A894 80009C94 00000000 */  nop
/* 00A898 80009C98 45000003 */  bc1f  .L80009CA8
/* 00A89C 80009C9C 00000000 */   nop
/* 00A8A0 80009CA0 A44A0000 */  sh    $t2, ($v0)
/* 00A8A4 80009CA4 C4600014 */  lwc1  $f0, 0x14($v1)
.L80009CA8:
/* 00A8A8 80009CA8 856BF6E8 */  lh    $t3, %lo(gCourseMaxX)($t3)
/* 00A8AC 80009CAC 448B8000 */  mtc1  $t3, $f16
/* 00A8B0 80009CB0 00000000 */  nop
/* 00A8B4 80009CB4 468084A0 */  cvt.s.w $f18, $f16
/* 00A8B8 80009CB8 4600903C */  c.lt.s $f18, $f0
/* 00A8BC 80009CBC 00000000 */  nop
/* 00A8C0 80009CC0 45000002 */  bc1f  .L80009CCC
/* 00A8C4 80009CC4 00000000 */   nop
/* 00A8C8 80009CC8 A44C0000 */  sh    $t4, ($v0)
.L80009CCC:
/* 00A8CC 80009CCC 85ADF6F2 */  lh    $t5, %lo(gCourseMinZ)($t5)
/* 00A8D0 80009CD0 C460001C */  lwc1  $f0, 0x1c($v1)
/* 00A8D4 80009CD4 448D2000 */  mtc1  $t5, $f4
/* 00A8D8 80009CD8 00000000 */  nop
/* 00A8DC 80009CDC 468021A0 */  cvt.s.w $f6, $f4
/* 00A8E0 80009CE0 4606003C */  c.lt.s $f0, $f6
/* 00A8E4 80009CE4 00000000 */  nop
/* 00A8E8 80009CE8 45000003 */  bc1f  .L80009CF8
/* 00A8EC 80009CEC 00000000 */   nop
/* 00A8F0 80009CF0 A44E0000 */  sh    $t6, ($v0)
/* 00A8F4 80009CF4 C460001C */  lwc1  $f0, 0x1c($v1)
.L80009CF8:
/* 00A8F8 80009CF8 85EFF6F0 */  lh    $t7, %lo(gCourseMaxZ)($t7)
/* 00A8FC 80009CFC 448F4000 */  mtc1  $t7, $f8
/* 00A900 80009D00 00000000 */  nop
/* 00A904 80009D04 468042A0 */  cvt.s.w $f10, $f8
/* 00A908 80009D08 4600503C */  c.lt.s $f10, $f0
/* 00A90C 80009D0C 00000000 */  nop
/* 00A910 80009D10 45020003 */  bc1fl .L80009D20
/* 00A914 80009D14 846200CA */   lh    $v0, 0xca($v1)
/* 00A918 80009D18 A4580000 */  sh    $t8, ($v0)
/* 00A91C 80009D1C 846200CA */  lh    $v0, 0xca($v1)
.L80009D20:
/* 00A920 80009D20 30590002 */  andi  $t9, $v0, 2
/* 00A924 80009D24 17200502 */  bnez  $t9, .L8000B130
/* 00A928 80009D28 304A0008 */   andi  $t2, $v0, 8
/* 00A92C 80009D2C 15400500 */  bnez  $t2, .L8000B130
/* 00A930 80009D30 3C028016 */   lui   $v0, %hi(D_80163448) # $v0, 0x8016
/* 00A934 80009D34 3C0B8016 */  lui   $t3, %hi(gPathIndexByPlayerId) # 0x8016
/* 00A938 80009D38 01665821 */  addu  $t3, $t3, $a2
/* 00A93C 80009D3C 956445B0 */  lhu   $a0, %lo(gPathIndexByPlayerId)($t3) # 0x45b0($t3)
/* 00A940 80009D40 24423448 */  addiu $v0, %lo(D_80163448) # addiu $v0, $v0, 0x3448
/* 00A944 80009D44 AFA30040 */  sw    $v1, 0x40($sp)
/* 00A948 80009D48 AFA500D0 */  sw    $a1, 0xd0($sp)
/* 00A94C 80009D4C AFA60034 */  sw    $a2, 0x34($sp)
/* 00A950 80009D50 AFA70038 */  sw    $a3, 0x38($sp)
/* 00A954 80009D54 0C002370 */  jal   set_current_path
/* 00A958 80009D58 AC440000 */   sw    $a0, ($v0)
/* 00A95C 80009D5C 3C02800E */  lui   $v0, %hi(gCurrentCourseId)
/* 00A960 80009D60 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 00A964 80009D64 2401000A */  li    $at, 10
/* 00A968 80009D68 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00A96C 80009D6C 10410015 */  beq   $v0, $at, .L80009DC4
/* 00A970 80009D70 2401000B */   li    $at, 11
/* 00A974 80009D74 10410006 */  beq   $v0, $at, .L80009D90
/* 00A978 80009D78 8FA400D0 */   lw    $a0, 0xd0($sp)
/* 00A97C 80009D7C 24010012 */  li    $at, 18
/* 00A980 80009D80 1041000C */  beq   $v0, $at, .L80009DB4
/* 00A984 80009D84 00000000 */   nop
/* 00A988 80009D88 1000001A */  b     .L80009DF4
/* 00A98C 80009D8C 8FA50040 */   lw    $a1, 0x40($sp)
.L80009D90:
/* 00A990 80009D90 0C004B70 */  jal   func_80012DC0
/* 00A994 80009D94 8FA50040 */   lw    $a1, 0x40($sp)
/* 00A998 80009D98 8FAC00D0 */  lw    $t4, 0xd0($sp)
/* 00A99C 80009D9C 55800015 */  bnel  $t4, $zero, .L80009DF4
/* 00A9A0 80009DA0 8FA50040 */   lw    $a1, 0x40($sp)
/* 00A9A4 80009DA4 0C004C15 */  jal   func_80013054
/* 00A9A8 80009DA8 00000000 */   nop
/* 00A9AC 80009DAC 10000011 */  b     .L80009DF4
/* 00A9B0 80009DB0 8FA50040 */   lw    $a1, 0x40($sp)
.L80009DB4:
/* 00A9B4 80009DB4 0C004E15 */  jal   func_80013854
/* 00A9B8 80009DB8 8FA40040 */   lw    $a0, 0x40($sp)
/* 00A9BC 80009DBC 1000000D */  b     .L80009DF4
/* 00A9C0 80009DC0 8FA50040 */   lw    $a1, 0x40($sp)
.L80009DC4:
/* 00A9C4 80009DC4 0C005231 */  jal   func_800148C4
/* 00A9C8 80009DC8 8FA50040 */   lw    $a1, 0x40($sp)
/* 00A9CC 80009DCC 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00A9D0 80009DD0 0C005286 */  jal   func_80014A18
/* 00A9D4 80009DD4 8FA50040 */   lw    $a1, 0x40($sp)
/* 00A9D8 80009DD8 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00A9DC 80009DDC 0C0052DB */  jal   func_80014B6C
/* 00A9E0 80009DE0 8FA50040 */   lw    $a1, 0x40($sp)
/* 00A9E4 80009DE4 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00A9E8 80009DE8 0C005330 */  jal   func_80014CC0
/* 00A9EC 80009DEC 8FA50040 */   lw    $a1, 0x40($sp)
/* 00A9F0 80009DF0 8FA50040 */  lw    $a1, 0x40($sp)
.L80009DF4:
/* 00A9F4 80009DF4 3C01FFBF */  lui   $at, (0xFFBFFFFF >> 16) # lui $at, 0xffbf
/* 00A9F8 80009DF8 94AD0000 */  lhu   $t5, ($a1)
/* 00A9FC 80009DFC 31AE0800 */  andi  $t6, $t5, 0x800
/* 00AA00 80009E00 11C00008 */  beqz  $t6, .L80009E24
/* 00AA04 80009E04 00000000 */   nop
/* 00AA08 80009E08 8CAF00BC */  lw    $t7, 0xbc($a1)
/* 00AA0C 80009E0C 84B90044 */  lh    $t9, 0x44($a1)
/* 00AA10 80009E10 3421FFFF */  ori   $at, (0xFFBFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 00AA14 80009E14 01E1C024 */  and   $t8, $t7, $at
/* 00AA18 80009E18 332AFFFE */  andi  $t2, $t9, 0xfffe
/* 00AA1C 80009E1C ACB800BC */  sw    $t8, 0xbc($a1)
/* 00AA20 80009E20 A4AA0044 */  sh    $t2, 0x44($a1)
.L80009E24:
/* 00AA24 80009E24 0C0024A7 */  jal   func_8000929C
/* 00AA28 80009E28 8FA400D0 */   lw    $a0, 0xd0($sp)
/* 00AA2C 80009E2C 3C0B800E */  lui   $t3, %hi(gCurrentCourseId)
/* 00AA30 80009E30 856BC5A0 */  lh    $t3, %lo(gCurrentCourseId)($t3)
/* 00AA34 80009E34 24010014 */  li    $at, 20
/* 00AA38 80009E38 8FAC0034 */  lw    $t4, 0x34($sp)
/* 00AA3C 80009E3C 1161000B */  beq   $t3, $at, .L80009E6C
/* 00AA40 80009E40 3C0D8016 */   lui   $t5, %hi(D_80163240) # 0x8016
/* 00AA44 80009E44 01AC6821 */  addu  $t5, $t5, $t4
/* 00AA48 80009E48 95AD3240 */  lhu   $t5, %lo(D_80163240)($t5) # 0x3240($t5)
/* 00AA4C 80009E4C 24010001 */  li    $at, 1
/* 00AA50 80009E50 8FAE00D0 */  lw    $t6, 0xd0($sp)
/* 00AA54 80009E54 11A10003 */  beq   $t5, $at, .L80009E64
/* 00AA58 80009E58 00000000 */   nop
/* 00AA5C 80009E5C 55C00004 */  bnel  $t6, $zero, .L80009E70
/* 00AA60 80009E60 8FAF0040 */   lw    $t7, 0x40($sp)
.L80009E64:
/* 00AA64 80009E64 0C0019F1 */  jal   set_places
/* 00AA68 80009E68 00000000 */   nop
.L80009E6C:
/* 00AA6C 80009E6C 8FAF0040 */  lw    $t7, 0x40($sp)
.L80009E70:
/* 00AA70 80009E70 3C0A8016 */  lui   $t2, %hi(D_801630E2) # $t2, 0x8016
/* 00AA74 80009E74 95F80000 */  lhu   $t8, ($t7)
/* 00AA78 80009E78 33191000 */  andi  $t9, $t8, 0x1000
/* 00AA7C 80009E7C 532004AD */  beql  $t9, $zero, .L8000B134
/* 00AA80 80009E80 8FBF0014 */   lw    $ra, 0x14($sp)
/* 00AA84 80009E84 854A30E2 */  lh    $t2, %lo(D_801630E2)($t2)
/* 00AA88 80009E88 24010001 */  li    $at, 1
/* 00AA8C 80009E8C 15410007 */  bne   $t2, $at, .L80009EAC
/* 00AA90 80009E90 3C0B800E */   lui   $t3, %hi(gCurrentCourseId)
/* 00AA94 80009E94 856BC5A0 */  lh    $t3, %lo(gCurrentCourseId)($t3)
/* 00AA98 80009E98 24010014 */  li    $at, 20
/* 00AA9C 80009E9C 11610003 */  beq   $t3, $at, .L80009EAC
/* 00AAA0 80009EA0 00000000 */   nop
/* 00AAA4 80009EA4 0C00478E */  jal   kart_ai_behaviour
/* 00AAA8 80009EA8 8FA400D0 */   lw    $a0, 0xd0($sp)
.L80009EAC:
/* 00AAAC 80009EAC 3C0E8016 */  lui   $t6, %hi(D_80163378) # $t6, 0x8016
/* 00AAB0 80009EB0 8DCE3378 */  lw    $t6, %lo(D_80163378)($t6)
/* 00AAB4 80009EB4 8FAC00D0 */  lw    $t4, 0xd0($sp)
/* 00AAB8 80009EB8 31CF0001 */  andi  $t7, $t6, 1
/* 00AABC 80009EBC 318D0001 */  andi  $t5, $t4, 1
/* 00AAC0 80009EC0 11ED0003 */  beq   $t7, $t5, .L80009ED0
/* 00AAC4 80009EC4 AFAD0030 */   sw    $t5, 0x30($sp)
/* 00AAC8 80009EC8 0C006B04 */  jal   kart_ai_use_item_strategy
/* 00AACC 80009ECC 01802025 */   move  $a0, $t4
.L80009ED0:
/* 00AAD0 80009ED0 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00AAD4 80009ED4 0C00267B */  jal   func_800099EC
/* 00AAD8 80009ED8 8FA50040 */   lw    $a1, 0x40($sp)
/* 00AADC 80009EDC 3C02800E */  lui   $v0, %hi(gModeSelection)
/* 00AAE0 80009EE0 8C42C53C */  lw    $v0, %lo(gModeSelection)($v0)
/* 00AAE4 80009EE4 3C018016 */  lui   $at, %hi(D_80162FD0) # $at, 0x8016
/* 00AAE8 80009EE8 A4202FD0 */  sh    $zero, %lo(D_80162FD0)($at)
/* 00AAEC 80009EEC 1040000A */  beqz  $v0, .L80009F18
/* 00AAF0 80009EF0 8FA80034 */   lw    $t0, 0x34($sp)
/* 00AAF4 80009EF4 24090001 */  li    $t1, 1
/* 00AAF8 80009EF8 10490008 */  beq   $v0, $t1, .L80009F1C
/* 00AAFC 80009EFC 24010002 */   li    $at, 2
/* 00AB00 80009F00 10410006 */  beq   $v0, $at, .L80009F1C
/* 00AB04 80009F04 24010003 */   li    $at, 3
/* 00AB08 80009F08 10410004 */  beq   $v0, $at, .L80009F1C
/* 00AB0C 80009F0C 00000000 */   nop
/* 00AB10 80009F10 10000002 */  b     .L80009F1C
/* 00AB14 80009F14 00000000 */   nop
.L80009F18:
/* 00AB18 80009F18 24090001 */  li    $t1, 1
.L80009F1C:
/* 00AB1C 80009F1C 3C188016 */  lui   $t8, %hi(D_801631E0) # $t8, 0x8016
/* 00AB20 80009F20 8FB90040 */  lw    $t9, 0x40($sp)
/* 00AB24 80009F24 271831E0 */  addiu $t8, %lo(D_801631E0) # addiu $t8, $t8, 0x31e0
/* 00AB28 80009F28 01182821 */  addu  $a1, $t0, $t8
/* 00AB2C 80009F2C A4A00000 */  sh    $zero, ($a1)
/* 00AB30 80009F30 8F2A00BC */  lw    $t2, 0xbc($t9)
/* 00AB34 80009F34 3C0E800E */  lui   $t6, %hi(gCurrentCourseId)
/* 00AB38 80009F38 3C0D8016 */  lui   $t5, %hi(D_801646CC) # $t5, 0x8016
/* 00AB3C 80009F3C 314B1000 */  andi  $t3, $t2, 0x1000
/* 00AB40 80009F40 11600007 */  beqz  $t3, .L80009F60
/* 00AB44 80009F44 00000000 */   nop
/* 00AB48 80009F48 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 00AB4C 80009F4C 24010014 */  li    $at, 20
/* 00AB50 80009F50 240F0001 */  li    $t7, 1
/* 00AB54 80009F54 11C10002 */  beq   $t6, $at, .L80009F60
/* 00AB58 80009F58 00000000 */   nop
/* 00AB5C 80009F5C A4AF0000 */  sh    $t7, ($a1)
.L80009F60:
/* 00AB60 80009F60 95AD46CC */  lhu   $t5, %lo(D_801646CC)($t5)
/* 00AB64 80009F64 3C02800E */  lui   $v0, %hi(gCurrentCourseId)
/* 00AB68 80009F68 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 00AB6C 80009F6C 112D0007 */  beq   $t1, $t5, .L80009F8C
/* 00AB70 80009F70 8FAC0040 */   lw    $t4, 0x40($sp)
/* 00AB74 80009F74 95980000 */  lhu   $t8, ($t4)
/* 00AB78 80009F78 24010014 */  li    $at, 20
/* 00AB7C 80009F7C 33190800 */  andi  $t9, $t8, 0x800
/* 00AB80 80009F80 57200003 */  bnel  $t9, $zero, .L80009F90
/* 00AB84 80009F84 2401000A */   li    $at, 10
/* 00AB88 80009F88 1441000E */  bne   $v0, $at, .L80009FC4
.L80009F8C:
/* 00AB8C 80009F8C 2401000A */   li    $at, 10
.L80009F90:
/* 00AB90 80009F90 10410006 */  beq   $v0, $at, .L80009FAC
/* 00AB94 80009F94 8FAA00D0 */   lw    $t2, 0xd0($sp)
/* 00AB98 80009F98 44808000 */  mtc1  $zero, $f16
/* 00AB9C 80009F9C 000A5900 */  sll   $t3, $t2, 4
/* 00ABA0 80009FA0 3C018016 */  lui   $at, %hi(D_801634F8 + 4)
/* 00ABA4 80009FA4 002B0821 */  addu  $at, $at, $t3
/* 00ABA8 80009FA8 E43034FC */  swc1  $f16, %lo(D_801634F8 + 4)($at)
.L80009FAC:
/* 00ABAC 80009FAC 8FAE00D0 */  lw    $t6, 0xd0($sp)
/* 00ABB0 80009FB0 44809000 */  mtc1  $zero, $f18
/* 00ABB4 80009FB4 3C018016 */  lui   $at, %hi(D_801634F8 + 12)
/* 00ABB8 80009FB8 000E7900 */  sll   $t7, $t6, 4
/* 00ABBC 80009FBC 002F0821 */  addu  $at, $at, $t7
/* 00ABC0 80009FC0 E4323504 */  swc1  $f18, %lo(D_801634F8 + 12)($at)
.L80009FC4:
/* 00ABC4 80009FC4 3C028016 */  lui   $v0, %hi(D_80163448) # $v0, 0x8016
/* 00ABC8 80009FC8 8C423448 */  lw    $v0, %lo(D_80163448)($v0)
/* 00ABCC 80009FCC 3C0A8016 */  lui   $t2, %hi(D_80164510) # $t2, 0x8016
/* 00ABD0 80009FD0 254A4510 */  addiu $t2, %lo(D_80164510) # addiu $t2, $t2, 0x4510
/* 00ABD4 80009FD4 1840000A */  blez  $v0, .L8000A000
/* 00ABD8 80009FD8 3C0B8016 */   lui   $t3, %hi(gNearestWaypointByPlayerId) # $t3, 0x8016
/* 00ABDC 80009FDC 8FAD00D0 */  lw    $t5, 0xd0($sp)
/* 00ABE0 80009FE0 3C188016 */  lui   $t8, %hi(D_801634F8) # $t8, 0x8016
/* 00ABE4 80009FE4 44802000 */  mtc1  $zero, $f4
/* 00ABE8 80009FE8 44803000 */  mtc1  $zero, $f6
/* 00ABEC 80009FEC 271834F8 */  addiu $t8, %lo(D_801634F8) # addiu $t8, $t8, 0x34f8
/* 00ABF0 80009FF0 000D6100 */  sll   $t4, $t5, 4
/* 00ABF4 80009FF4 01981821 */  addu  $v1, $t4, $t8
/* 00ABF8 80009FF8 E4640004 */  swc1  $f4, 4($v1)
/* 00ABFC 80009FFC E466000C */  swc1  $f6, 0xc($v1)
.L8000A000:
/* 00AC00 8000A000 256B4438 */  addiu $t3, %lo(gNearestWaypointByPlayerId) # addiu $t3, $t3, 0x4438
/* 00AC04 8000A004 010B7021 */  addu  $t6, $t0, $t3
/* 00AC08 8000A008 8FB90038 */  lw    $t9, 0x38($sp)
/* 00AC0C 8000A00C AFAE0024 */  sw    $t6, 0x24($sp)
/* 00AC10 8000A010 00027880 */  sll   $t7, $v0, 2
/* 00AC14 8000A014 3C0D8016 */  lui   $t5, %hi(gTrackPath) # 0x8016
/* 00AC18 8000A018 95D80000 */  lhu   $t8, ($t6)
/* 00AC1C 8000A01C 01AF6821 */  addu  $t5, $t5, $t7
/* 00AC20 8000A020 8DAD4550 */  lw    $t5, %lo(gTrackPath)($t5) # 0x4550($t5)
/* 00AC24 8000A024 032A3021 */  addu  $a2, $t9, $t2
/* 00AC28 8000A028 0018C8C0 */  sll   $t9, $t8, 3
/* 00AC2C 8000A02C 01B95021 */  addu  $t2, $t5, $t9
/* 00AC30 8000A030 854B0002 */  lh    $t3, 2($t2)
/* 00AC34 8000A034 3C01800F */  lui   $at, %hi(D_800ECFB0) # $at, 0x800f
/* 00AC38 8000A038 C430CFB0 */  lwc1  $f16, %lo(D_800ECFB0)($at)
/* 00AC3C 8000A03C 448B4000 */  mtc1  $t3, $f8
/* 00AC40 8000A040 3C0E8016 */  lui   $t6, %hi(D_801631F8) # $t6, 0x8016
/* 00AC44 8000A044 25CE31F8 */  addiu $t6, %lo(D_801631F8) # addiu $t6, $t6, 0x31f8
/* 00AC48 8000A048 468042A0 */  cvt.s.w $f10, $f8
/* 00AC4C 8000A04C 010E3821 */  addu  $a3, $t0, $t6
/* 00AC50 8000A050 94EF0000 */  lhu   $t7, ($a3)
/* 00AC54 8000A054 46105480 */  add.s $f18, $f10, $f16
/* 00AC58 8000A058 152F000E */  bne   $t1, $t7, .L8000A094
/* 00AC5C 8000A05C E4D20000 */   swc1  $f18, ($a2)
/* 00AC60 8000A060 94AC0000 */  lhu   $t4, ($a1)
/* 00AC64 8000A064 8FA40040 */  lw    $a0, 0x40($sp)
/* 00AC68 8000A068 5580000B */  bnel  $t4, $zero, .L8000A098
/* 00AC6C 8000A06C 94A30000 */   lhu   $v1, ($a1)
/* 00AC70 8000A070 AFA5002C */  sw    $a1, 0x2c($sp)
/* 00AC74 8000A074 AFA60028 */  sw    $a2, 0x28($sp)
/* 00AC78 8000A078 0C00B931 */  jal   func_8002E4C4
/* 00AC7C 8000A07C AFA70020 */   sw    $a3, 0x20($sp)
/* 00AC80 8000A080 8FA5002C */  lw    $a1, 0x2c($sp)
/* 00AC84 8000A084 8FA60028 */  lw    $a2, 0x28($sp)
/* 00AC88 8000A088 8FA70020 */  lw    $a3, 0x20($sp)
/* 00AC8C 8000A08C 24090001 */  li    $t1, 1
/* 00AC90 8000A090 8FA80034 */  lw    $t0, 0x34($sp)
.L8000A094:
/* 00AC94 8000A094 94A30000 */  lhu   $v1, ($a1)
.L8000A098:
/* 00AC98 8000A098 8FB80040 */  lw    $t8, 0x40($sp)
/* 00AC9C 8000A09C 3C02800E */  lui   $v0, %hi(gCurrentCourseId)
/* 00ACA0 8000A0A0 55230005 */  bnel  $t1, $v1, .L8000A0B8
/* 00ACA4 8000A0A4 A4E30000 */   sh    $v1, ($a3)
/* 00ACA8 8000A0A8 C4C40000 */  lwc1  $f4, ($a2)
/* 00ACAC 8000A0AC E7040018 */  swc1  $f4, 0x18($t8)
/* 00ACB0 8000A0B0 94A30000 */  lhu   $v1, ($a1)
/* 00ACB4 8000A0B4 A4E30000 */  sh    $v1, ($a3)
.L8000A0B8:
/* 00ACB8 8000A0B8 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 00ACBC 8000A0BC 8FAD00D0 */  lw    $t5, 0xd0($sp)
/* 00ACC0 8000A0C0 24010004 */  li    $at, 4
/* 00ACC4 8000A0C4 10410009 */  beq   $v0, $at, .L8000A0EC
/* 00ACC8 8000A0C8 000DC900 */   sll   $t9, $t5, 4
/* 00ACCC 8000A0CC 2401000A */  li    $at, 10
/* 00ACD0 8000A0D0 1041000C */  beq   $v0, $at, .L8000A104
/* 00ACD4 8000A0D4 8FA400D0 */   lw    $a0, 0xd0($sp)
/* 00ACD8 8000A0D8 24010014 */  li    $at, 20
/* 00ACDC 8000A0DC 10410004 */  beq   $v0, $at, .L8000A0F0
/* 00ACE0 8000A0E0 00602025 */   move  $a0, $v1
/* 00ACE4 8000A0E4 10000013 */  b     .L8000A134
/* 00ACE8 8000A0E8 00000000 */   nop
.L8000A0EC:
/* 00ACEC 8000A0EC 00602025 */  move  $a0, $v1
.L8000A0F0:
/* 00ACF0 8000A0F0 44803000 */  mtc1  $zero, $f6
/* 00ACF4 8000A0F4 3C018016 */  lui   $at, %hi(D_801634F8 + 4)
/* 00ACF8 8000A0F8 00390821 */  addu  $at, $at, $t9
/* 00ACFC 8000A0FC 1000000D */  b     .L8000A134
/* 00AD00 8000A100 E42634FC */   swc1  $f6, %lo(D_801634F8 + 4)($at)
.L8000A104:
/* 00AD04 8000A104 0C005243 */  jal   func_8001490C
/* 00AD08 8000A108 AFA5002C */   sw    $a1, 0x2c($sp)
/* 00AD0C 8000A10C 0C005298 */  jal   func_80014A60
/* 00AD10 8000A110 8FA400D0 */   lw    $a0, 0xd0($sp)
/* 00AD14 8000A114 0C0052ED */  jal   func_80014BB4
/* 00AD18 8000A118 8FA400D0 */   lw    $a0, 0xd0($sp)
/* 00AD1C 8000A11C 0C005342 */  jal   func_80014D08
/* 00AD20 8000A120 8FA400D0 */   lw    $a0, 0xd0($sp)
/* 00AD24 8000A124 8FA5002C */  lw    $a1, 0x2c($sp)
/* 00AD28 8000A128 24090001 */  li    $t1, 1
/* 00AD2C 8000A12C 8FA80034 */  lw    $t0, 0x34($sp)
/* 00AD30 8000A130 94A40000 */  lhu   $a0, ($a1)
.L8000A134:
/* 00AD34 8000A134 152400FE */  bne   $t1, $a0, .L8000A530
/* 00AD38 8000A138 3C0C8016 */   lui   $t4, %hi(D_801630E8) # 0x8016
/* 00AD3C 8000A13C 8FAA0040 */  lw    $t2, 0x40($sp)
/* 00AD40 8000A140 3C018016 */  lui   $at, %hi(D_801630E8) # 0x8016
/* 00AD44 8000A144 00280821 */  addu  $at, $at, $t0
/* 00AD48 8000A148 A42030E8 */  sh    $zero, %lo(D_801630E8)($at) # 0x30e8($at)
/* 00AD4C 8000A14C 8D4B00BC */  lw    $t3, 0xbc($t2)
/* 00AD50 8000A150 2401FFEF */  li    $at, -17
/* 00AD54 8000A154 3C0F8016 */  lui   $t7, %hi(D_80163378) # $t7, 0x8016
/* 00AD58 8000A158 01617024 */  and   $t6, $t3, $at
/* 00AD5C 8000A15C AD4E00BC */  sw    $t6, 0xbc($t2)
/* 00AD60 8000A160 8DEF3378 */  lw    $t7, %lo(D_80163378)($t7)
/* 00AD64 8000A164 8FB80030 */  lw    $t8, 0x30($sp)
/* 00AD68 8000A168 3C028019 */  lui   $v0, %hi(gPlayerCount) # $v0, 0x8019
/* 00AD6C 8000A16C 31EC0001 */  andi  $t4, $t7, 1
/* 00AD70 8000A170 1198000C */  beq   $t4, $t8, .L8000A1A4
/* 00AD74 8000A174 01402025 */   move  $a0, $t2
/* 00AD78 8000A178 0C00DA03 */  jal   func_8003680C
/* 00AD7C 8000A17C 00002825 */   move  $a1, $zero
/* 00AD80 8000A180 8FAD0038 */  lw    $t5, 0x38($sp)
/* 00AD84 8000A184 3C058016 */  lui   $a1, %hi(D_80163210) # 0x8016
/* 00AD88 8000A188 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00AD8C 8000A18C 00AD2821 */  addu  $a1, $a1, $t5
/* 00AD90 8000A190 8CA53210 */  lw    $a1, %lo(D_80163210)($a1) # 0x3210($a1)
/* 00AD94 8000A194 0C002109 */  jal   func_80008424
/* 00AD98 8000A198 8FA60040 */   lw    $a2, 0x40($sp)
/* 00AD9C 8000A19C 100003E5 */  b     .L8000B134
/* 00ADA0 8000A1A0 8FBF0014 */   lw    $ra, 0x14($sp)
.L8000A1A4:
/* 00ADA4 8000A1A4 8042EDF3 */  lb    $v0, %lo(gPlayerCount)($v0)
/* 00ADA8 8000A1A8 18400016 */  blez  $v0, .L8000A204
/* 00ADAC 8000A1AC 28410003 */   slti  $at, $v0, 3
/* 00ADB0 8000A1B0 10200014 */  beqz  $at, .L8000A204
/* 00ADB4 8000A1B4 3C198016 */   lui   $t9, %hi(D_80163330) # 0x8016
/* 00ADB8 8000A1B8 0328C821 */  addu  $t9, $t9, $t0
/* 00ADBC 8000A1BC 97393330 */  lhu   $t9, %lo(D_80163330)($t9) # 0x3330($t9)
/* 00ADC0 8000A1C0 3C0B8016 */  lui   $t3, %hi(D_8016334C) # 0x8016
/* 00ADC4 8000A1C4 01685821 */  addu  $t3, $t3, $t0
/* 00ADC8 8000A1C8 1539000E */  bne   $t1, $t9, .L8000A204
/* 00ADCC 8000A1CC 8FAE0038 */   lw    $t6, 0x38($sp)
/* 00ADD0 8000A1D0 3C0F8016 */  lui   $t7, %hi(gGPCurrentRaceRankByPlayerId)
/* 00ADD4 8000A1D4 01EE7821 */  addu  $t7, $t7, $t6
/* 00ADD8 8000A1D8 8DEF43B8 */  lw    $t7, %lo(gGPCurrentRaceRankByPlayerId)($t7)
/* 00ADDC 8000A1DC 956B334C */  lhu   $t3, %lo(D_8016334C)($t3) # 0x334c($t3)
/* 00ADE0 8000A1E0 3C0C8016 */  lui   $t4, %hi(D_80163210) # $t4, 0x8016
/* 00ADE4 8000A1E4 258C3210 */  addiu $t4, %lo(D_80163210) # addiu $t4, $t4, 0x3210
/* 00ADE8 8000A1E8 016F082A */  slt   $at, $t3, $t7
/* 00ADEC 8000A1EC 10200005 */  beqz  $at, .L8000A204
/* 00ADF0 8000A1F0 3C01800F */   lui   $at, %hi(D_800ECFB4) # $at, 0x800f
/* 00ADF4 8000A1F4 C428CFB4 */  lwc1  $f8, %lo(D_800ECFB4)($at)
/* 00ADF8 8000A1F8 01CC4021 */  addu  $t0, $t6, $t4
/* 00ADFC 8000A1FC 1000004B */  b     .L8000A32C
/* 00AE00 8000A200 E5080000 */   swc1  $f8, ($t0)
.L8000A204:
/* 00AE04 8000A204 3C188016 */  lui   $t8, %hi(D_80162FD0) # $t8, 0x8016
/* 00AE08 8000A208 87182FD0 */  lh    $t8, %lo(D_80162FD0)($t8)
/* 00AE0C 8000A20C 1538001C */  bne   $t1, $t8, .L8000A280
/* 00AE10 8000A210 3C0A800E */   lui   $t2, %hi(gCurrentCourseId)
/* 00AE14 8000A214 854AC5A0 */  lh    $t2, %lo(gCurrentCourseId)($t2)
/* 00AE18 8000A218 3C19800E */  lui   $t9, %hi(gCCSelection)
/* 00AE1C 8000A21C 8F39C548 */  lw    $t9, %lo(gCCSelection)($t9)
/* 00AE20 8000A220 8FAC00D0 */  lw    $t4, 0xd0($sp)
/* 00AE24 8000A224 000A6900 */  sll   $t5, $t2, 4
/* 00AE28 8000A228 3C0A8016 */  lui   $t2, %hi(D_801634F8) # $t2, 0x8016
/* 00AE2C 8000A22C 254A34F8 */  addiu $t2, %lo(D_801634F8) # addiu $t2, $t2, 0x34f8
/* 00AE30 8000A230 3C0E0D01 */  lui   $t6, %hi(D_0D0096B8) # $t6, 0xd01
/* 00AE34 8000A234 00195880 */  sll   $t3, $t9, 2
/* 00AE38 8000A238 000CC100 */  sll   $t8, $t4, 4
/* 00AE3C 8000A23C 030A1821 */  addu  $v1, $t8, $t2
/* 00AE40 8000A240 01AB7821 */  addu  $t7, $t5, $t3
/* 00AE44 8000A244 25CE96B8 */  addiu $t6, %lo(D_0D0096B8) # addiu $t6, $t6, -0x6948
/* 00AE48 8000A248 01EE2021 */  addu  $a0, $t7, $t6
/* 00AE4C 8000A24C 0C026455 */  jal   segmented_to_virtual_dupe_2
/* 00AE50 8000A250 AFA30030 */   sw    $v1, 0x30($sp)
/* 00AE54 8000A254 8FB90038 */  lw    $t9, 0x38($sp)
/* 00AE58 8000A258 3C0D8016 */  lui   $t5, %hi(D_80163210) # $t5, 0x8016
/* 00AE5C 8000A25C 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 00AE60 8000A260 8FA30030 */  lw    $v1, 0x30($sp)
/* 00AE64 8000A264 C44A0000 */  lwc1  $f10, ($v0)
/* 00AE68 8000A268 44818000 */  mtc1  $at, $f16
/* 00AE6C 8000A26C 25AD3210 */  addiu $t5, %lo(D_80163210) # addiu $t5, $t5, 0x3210
/* 00AE70 8000A270 032D4021 */  addu  $t0, $t9, $t5
/* 00AE74 8000A274 E50A0000 */  swc1  $f10, ($t0)
/* 00AE78 8000A278 1000002C */  b     .L8000A32C
/* 00AE7C 8000A27C E4700004 */   swc1  $f16, 4($v1)
.L8000A280:
/* 00AE80 8000A280 3C0F8016 */  lui   $t7, %hi(sSomeNearestWaypoint) # $t7, 0x8016
/* 00AE84 8000A284 85EF2FCE */  lh    $t7, %lo(sSomeNearestWaypoint)($t7)
/* 00AE88 8000A288 3C0B8016 */  lui   $t3, %hi(gCurrentTrackConsecutiveCurveCountsPath) # $t3, 0x8016
/* 00AE8C 8000A28C 8D6B45E0 */  lw    $t3, %lo(gCurrentTrackConsecutiveCurveCountsPath)($t3)
/* 00AE90 8000A290 000F7040 */  sll   $t6, $t7, 1
/* 00AE94 8000A294 016E6021 */  addu  $t4, $t3, $t6
/* 00AE98 8000A298 85980000 */  lh    $t8, ($t4)
/* 00AE9C 8000A29C 1B000012 */  blez  $t8, .L8000A2E8
/* 00AEA0 8000A2A0 3C0A800E */   lui   $t2, %hi(gCurrentCourseId)
/* 00AEA4 8000A2A4 3C0D800E */  lui   $t5, %hi(gCCSelection)
/* 00AEA8 8000A2A8 8DADC548 */  lw    $t5, %lo(gCCSelection)($t5)
/* 00AEAC 8000A2AC 854AC5A0 */  lh    $t2, %lo(gCurrentCourseId)($t2)
/* 00AEB0 8000A2B0 3C0E0D01 */  lui   $t6, %hi(D_0D009418) # $t6, 0xd01
/* 00AEB4 8000A2B4 000D7880 */  sll   $t7, $t5, 2
/* 00AEB8 8000A2B8 000AC900 */  sll   $t9, $t2, 4
/* 00AEBC 8000A2BC 032F5821 */  addu  $t3, $t9, $t7
/* 00AEC0 8000A2C0 25CE9418 */  addiu $t6, %lo(D_0D009418) # addiu $t6, $t6, -0x6be8
/* 00AEC4 8000A2C4 0C026455 */  jal   segmented_to_virtual_dupe_2
/* 00AEC8 8000A2C8 016E2021 */   addu  $a0, $t3, $t6
/* 00AECC 8000A2CC 8FAC0038 */  lw    $t4, 0x38($sp)
/* 00AED0 8000A2D0 3C188016 */  lui   $t8, %hi(D_80163210) # $t8, 0x8016
/* 00AED4 8000A2D4 C4520000 */  lwc1  $f18, ($v0)
/* 00AED8 8000A2D8 27183210 */  addiu $t8, %lo(D_80163210) # addiu $t8, $t8, 0x3210
/* 00AEDC 8000A2DC 01984021 */  addu  $t0, $t4, $t8
/* 00AEE0 8000A2E0 10000012 */  b     .L8000A32C
/* 00AEE4 8000A2E4 E5120000 */   swc1  $f18, ($t0)
.L8000A2E8:
/* 00AEE8 8000A2E8 3C0A800E */  lui   $t2, %hi(gCurrentCourseId)
/* 00AEEC 8000A2EC 3C19800E */  lui   $t9, %hi(gCCSelection)
/* 00AEF0 8000A2F0 8F39C548 */  lw    $t9, %lo(gCCSelection)($t9)
/* 00AEF4 8000A2F4 854AC5A0 */  lh    $t2, %lo(gCurrentCourseId)($t2)
/* 00AEF8 8000A2F8 3C0E0D01 */  lui   $t6, %hi(D_0D009568) # $t6, 0xd01
/* 00AEFC 8000A2FC 00197880 */  sll   $t7, $t9, 2
/* 00AF00 8000A300 000A6900 */  sll   $t5, $t2, 4
/* 00AF04 8000A304 01AF5821 */  addu  $t3, $t5, $t7
/* 00AF08 8000A308 25CE9568 */  addiu $t6, %lo(D_0D009568) # addiu $t6, $t6, -0x6a98
/* 00AF0C 8000A30C 0C026455 */  jal   segmented_to_virtual_dupe_2
/* 00AF10 8000A310 016E2021 */   addu  $a0, $t3, $t6
/* 00AF14 8000A314 8FAC0038 */  lw    $t4, 0x38($sp)
/* 00AF18 8000A318 C4440000 */  lwc1  $f4, ($v0)
/* 00AF1C 8000A31C 3C188016 */  lui   $t8, %hi(D_80163210) # $t8, 0x8016
/* 00AF20 8000A320 27183210 */  addiu $t8, %lo(D_80163210) # addiu $t8, $t8, 0x3210
/* 00AF24 8000A324 01984021 */  addu  $t0, $t4, $t8
/* 00AF28 8000A328 E5040000 */  swc1  $f4, ($t0)
.L8000A32C:
/* 00AF2C 8000A32C 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00AF30 8000A330 0C004C77 */  jal   check_ai_crossing_distance
/* 00AF34 8000A334 AFA8003C */   sw    $t0, 0x3c($sp)
/* 00AF38 8000A338 0C0034EE */  jal   func_8000D3B8
/* 00AF3C 8000A33C 8FA400D0 */   lw    $a0, 0xd0($sp)
/* 00AF40 8000A340 3C058016 */  lui   $a1, %hi(D_801630E0) # $a1, 0x8016
/* 00AF44 8000A344 94A530E0 */  lhu   $a1, %lo(D_801630E0)($a1)
/* 00AF48 8000A348 0C00350E */  jal   func_8000D438
/* 00AF4C 8000A34C 8FA400D0 */   lw    $a0, 0xd0($sp)
/* 00AF50 8000A350 8FA60040 */  lw    $a2, 0x40($sp)
/* 00AF54 8000A354 3C078016 */  lui   $a3, %hi(gOffsetPosition) # $a3, 0x8016
/* 00AF58 8000A358 24E72FA0 */  addiu $a3, %lo(gOffsetPosition) # addiu $a3, $a3, 0x2fa0
/* 00AF5C 8000A35C 8CC200BC */  lw    $v0, 0xbc($a2)
/* 00AF60 8000A360 C4E80000 */  lwc1  $f8, ($a3)
/* 00AF64 8000A364 C4EA0008 */  lwc1  $f10, 8($a3)
/* 00AF68 8000A368 C4C60014 */  lwc1  $f6, 0x14($a2)
/* 00AF6C 8000A36C C4D0001C */  lwc1  $f16, 0x1c($a2)
/* 00AF70 8000A370 304A0080 */  andi  $t2, $v0, 0x80
/* 00AF74 8000A374 46064001 */  sub.s $f0, $f8, $f6
/* 00AF78 8000A378 8FA8003C */  lw    $t0, 0x3c($sp)
/* 00AF7C 8000A37C 15400061 */  bnez  $t2, .L8000A504
/* 00AF80 8000A380 46105081 */   sub.s $f2, $f10, $f16
/* 00AF84 8000A384 30590040 */  andi  $t9, $v0, 0x40
/* 00AF88 8000A388 1720005E */  bnez  $t9, .L8000A504
/* 00AF8C 8000A38C 304D0800 */   andi  $t5, $v0, 0x800
/* 00AF90 8000A390 55A0005D */  bnel  $t5, $zero, .L8000A508
/* 00AF94 8000A394 00C02025 */   move  $a0, $a2
/* 00AF98 8000A398 46000102 */  mul.s $f4, $f0, $f0
/* 00AF9C 8000A39C 3C0145C8 */  li    $at, 0x45C80000 # 6400.000000
/* 00AFA0 8000A3A0 44819000 */  mtc1  $at, $f18
/* 00AFA4 8000A3A4 46021182 */  mul.s $f6, $f2, $f2
/* 00AFA8 8000A3A8 3C0B8016 */  lui   $t3, %hi(D_801630E0) # 0x8016
/* 00AFAC 8000A3AC 3C0C8016 */  lui   $t4, %hi(gCurrentWaypointCountByPathIndex) # $t4, 0x8016
/* 00AFB0 8000A3B0 3C198016 */  lui   $t9, %hi(D_80163448) # 0x8016
/* 00AFB4 8000A3B4 3C0F8016 */  lui   $t7, %hi(gPathExpectedRotation) # 0x8016
/* 00AFB8 8000A3B8 46062200 */  add.s $f8, $f4, $f6
/* 00AFBC 8000A3BC 4608903C */  c.lt.s $f18, $f8
/* 00AFC0 8000A3C0 00000000 */  nop
/* 00AFC4 8000A3C4 45000039 */  bc1f  .L8000A4AC
/* 00AFC8 8000A3C8 00000000 */   nop
/* 00AFCC 8000A3CC 3C0F8016 */  lui   $t7, %hi(D_80163448) # $t7, 0x8016
/* 00AFD0 8000A3D0 8DEF3448 */  lw    $t7, %lo(D_80163448)($t7)
/* 00AFD4 8000A3D4 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00AFD8 8000A3D8 55E0002B */  bnel  $t7, $zero, .L8000A488
/* 00AFDC 8000A3DC 8FA60040 */   lw    $a2, 0x40($sp)
/* 00AFE0 8000A3E0 0C002C50 */  jal   func_8000B140
/* 00AFE4 8000A3E4 AFA8003C */   sw    $t0, 0x3c($sp)
/* 00AFE8 8000A3E8 8FAB0034 */  lw    $t3, 0x34($sp)
/* 00AFEC 8000A3EC 3C0E8016 */  lui   $t6, %hi(D_80162FF8) # 0x8016
/* 00AFF0 8000A3F0 3C078016 */  lui   $a3, %hi(gOffsetPosition) # $a3, 0x8016
/* 00AFF4 8000A3F4 01CB7021 */  addu  $t6, $t6, $t3
/* 00AFF8 8000A3F8 85CE2FF8 */  lh    $t6, %lo(D_80162FF8)($t6) # 0x2ff8($t6)
/* 00AFFC 8000A3FC 24E72FA0 */  addiu $a3, %lo(gOffsetPosition) # addiu $a3, $a3, 0x2fa0
/* 00B000 8000A400 8FA8003C */  lw    $t0, 0x3c($sp)
/* 00B004 8000A404 19C0001F */  blez  $t6, .L8000A484
/* 00B008 8000A408 3C048016 */   lui   $a0, %hi(D_801630E0) # $a0, 0x8016
/* 00B00C 8000A40C 948430E0 */  lhu   $a0, %lo(D_801630E0)($a0)
/* 00B010 8000A410 3C188016 */  lui   $t8, %hi(gCurrentWaypointCountByPathIndex) # $t8, 0x8016
/* 00B014 8000A414 97184430 */  lhu   $t8, %lo(gCurrentWaypointCountByPathIndex)($t8)
/* 00B018 8000A418 24840005 */  addiu $a0, $a0, 5
/* 00B01C 8000A41C 308CFFFF */  andi  $t4, $a0, 0xffff
/* 00B020 8000A420 0198001A */  div   $zero, $t4, $t8
/* 00B024 8000A424 01802025 */  move  $a0, $t4
/* 00B028 8000A428 8FB90038 */  lw    $t9, 0x38($sp)
/* 00B02C 8000A42C 17000002 */  bnez  $t8, .L8000A438
/* 00B030 8000A430 00000000 */   nop
/* 00B034 8000A434 0007000D */  break 7
.L8000A438:
/* 00B038 8000A438 2401FFFF */  li    $at, -1
/* 00B03C 8000A43C 17010004 */  bne   $t8, $at, .L8000A450
/* 00B040 8000A440 3C018000 */   lui   $at, 0x8000
/* 00B044 8000A444 14810002 */  bne   $a0, $at, .L8000A450
/* 00B048 8000A448 00000000 */   nop
/* 00B04C 8000A44C 0006000D */  break 6
.L8000A450:
/* 00B050 8000A450 00002010 */  mfhi  $a0
/* 00B054 8000A454 3C058016 */  lui   $a1, %hi(D_80163090) # 0x8016
/* 00B058 8000A458 308AFFFF */  andi  $t2, $a0, 0xffff
/* 00B05C 8000A45C 3C068016 */  lui   $a2, %hi(D_80163448 + 2) # $a2, 0x8016
/* 00B060 8000A460 00B92821 */  addu  $a1, $a1, $t9
/* 00B064 8000A464 01402025 */  move  $a0, $t2
/* 00B068 8000A468 8CA53090 */  lw    $a1, %lo(D_80163090)($a1) # 0x3090($a1)
/* 00B06C 8000A46C 84C6344A */  lh    $a2, %lo(D_80163448 + 2)($a2)
/* 00B070 8000A470 0C002EF6 */  jal   func_8000BBD8
/* 00B074 8000A474 AFA8003C */   sw    $t0, 0x3c($sp)
/* 00B078 8000A478 3C078016 */  lui   $a3, %hi(gOffsetPosition) # $a3, 0x8016
/* 00B07C 8000A47C 24E72FA0 */  addiu $a3, %lo(gOffsetPosition) # addiu $a3, $a3, 0x2fa0
/* 00B080 8000A480 8FA8003C */  lw    $t0, 0x3c($sp)
.L8000A484:
/* 00B084 8000A484 8FA60040 */  lw    $a2, 0x40($sp)
.L8000A488:
/* 00B088 8000A488 00E02825 */  move  $a1, $a3
/* 00B08C 8000A48C AFA8003C */  sw    $t0, 0x3c($sp)
/* 00B090 8000A490 0C0AD489 */  jal   get_angle_between_two_vectors
/* 00B094 8000A494 24C40014 */   addiu $a0, $a2, 0x14
/* 00B098 8000A498 8FA60040 */  lw    $a2, 0x40($sp)
/* 00B09C 8000A49C 8FA8003C */  lw    $t0, 0x3c($sp)
/* 00B0A0 8000A4A0 00026823 */  negu  $t5, $v0
/* 00B0A4 8000A4A4 10000017 */  b     .L8000A504
/* 00B0A8 8000A4A8 A4CD002E */   sh    $t5, 0x2e($a2)
.L8000A4AC:
/* 00B0AC 8000A4AC 956B30E0 */  lhu   $t3, %lo(D_801630E0)($t3) # 0x30e0($t3)
/* 00B0B0 8000A4B0 958C4430 */  lhu   $t4, %lo(gCurrentWaypointCountByPathIndex)($t4)
/* 00B0B4 8000A4B4 8F393448 */  lw    $t9, %lo(D_80163448)($t9) # 0x3448($t9)
/* 00B0B8 8000A4B8 256E0004 */  addiu $t6, $t3, 4
/* 00B0BC 8000A4BC 01CC001A */  div   $zero, $t6, $t4
/* 00B0C0 8000A4C0 00196880 */  sll   $t5, $t9, 2
/* 00B0C4 8000A4C4 01ED7821 */  addu  $t7, $t7, $t5
/* 00B0C8 8000A4C8 8DEF4590 */  lw    $t7, %lo(gPathExpectedRotation)($t7) # 0x4590($t7)
/* 00B0CC 8000A4CC 0000C010 */  mfhi  $t8
/* 00B0D0 8000A4D0 00185040 */  sll   $t2, $t8, 1
/* 00B0D4 8000A4D4 15800002 */  bnez  $t4, .L8000A4E0
/* 00B0D8 8000A4D8 00000000 */   nop
/* 00B0DC 8000A4DC 0007000D */  break 7
.L8000A4E0:
/* 00B0E0 8000A4E0 2401FFFF */  li    $at, -1
/* 00B0E4 8000A4E4 15810004 */  bne   $t4, $at, .L8000A4F8
/* 00B0E8 8000A4E8 3C018000 */   lui   $at, 0x8000
/* 00B0EC 8000A4EC 15C10002 */  bne   $t6, $at, .L8000A4F8
/* 00B0F0 8000A4F0 00000000 */   nop
/* 00B0F4 8000A4F4 0006000D */  break 6
.L8000A4F8:
/* 00B0F8 8000A4F8 01EA5821 */  addu  $t3, $t7, $t2
/* 00B0FC 8000A4FC 856E0000 */  lh    $t6, ($t3)
/* 00B100 8000A500 A4CE002E */  sh    $t6, 0x2e($a2)
.L8000A504:
/* 00B104 8000A504 00C02025 */  move  $a0, $a2
.L8000A508:
/* 00B108 8000A508 00002825 */  move  $a1, $zero
/* 00B10C 8000A50C 0C00DA03 */  jal   func_8003680C
/* 00B110 8000A510 AFA8003C */   sw    $t0, 0x3c($sp)
/* 00B114 8000A514 8FA8003C */  lw    $t0, 0x3c($sp)
/* 00B118 8000A518 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00B11C 8000A51C 8FA60040 */  lw    $a2, 0x40($sp)
/* 00B120 8000A520 0C002109 */  jal   func_80008424
/* 00B124 8000A524 8D050000 */   lw    $a1, ($t0)
/* 00B128 8000A528 10000302 */  b     .L8000B134
/* 00B12C 8000A52C 8FBF0014 */   lw    $ra, 0x14($sp)
.L8000A530:
/* 00B130 8000A530 258C30E8 */  addiu $t4, %lo(D_801630E8) # addiu $t4, $t4, 0x30e8
/* 00B134 8000A534 010CC021 */  addu  $t8, $t0, $t4
/* 00B138 8000A538 AFB8002C */  sw    $t8, 0x2c($sp)
/* 00B13C 8000A53C 87020000 */  lh    $v0, ($t8)
/* 00B140 8000A540 2401FFFF */  li    $at, -1
/* 00B144 8000A544 8FAD0040 */  lw    $t5, 0x40($sp)
/* 00B148 8000A548 51220004 */  beql  $t1, $v0, .L8000A55C
/* 00B14C 8000A54C 8DAF00BC */   lw    $t7, 0xbc($t5)
/* 00B150 8000A550 14410006 */  bne   $v0, $at, .L8000A56C
/* 00B154 8000A554 00000000 */   nop
/* 00B158 8000A558 8DAF00BC */  lw    $t7, 0xbc($t5)
.L8000A55C:
/* 00B15C 8000A55C 35EA0010 */  ori   $t2, $t7, 0x10
/* 00B160 8000A560 ADAA00BC */  sw    $t2, 0xbc($t5)
/* 00B164 8000A564 8FAB002C */  lw    $t3, 0x2c($sp)
/* 00B168 8000A568 85620000 */  lh    $v0, ($t3)
.L8000A56C:
/* 00B16C 8000A56C 1040008A */  beqz  $v0, .L8000A798
/* 00B170 8000A570 8FAE0040 */   lw    $t6, 0x40($sp)
/* 00B174 8000A574 25C40020 */  addiu $a0, $t6, 0x20
/* 00B178 8000A578 0C0AD489 */  jal   get_angle_between_two_vectors
/* 00B17C 8000A57C 25C50014 */   addiu $a1, $t6, 0x14
/* 00B180 8000A580 8FAC0034 */  lw    $t4, 0x34($sp)
/* 00B184 8000A584 3C188016 */  lui   $t8, %hi(D_80163300) # $t8, 0x8016
/* 00B188 8000A588 27183300 */  addiu $t8, %lo(D_80163300) # addiu $t8, $t8, 0x3300
/* 00B18C 8000A58C 0002C823 */  negu  $t9, $v0
/* 00B190 8000A590 01981821 */  addu  $v1, $t4, $t8
/* 00B194 8000A594 A4790000 */  sh    $t9, ($v1)
/* 00B198 8000A598 3C0F8016 */  lui   $t7, %hi(sSomeNearestWaypoint) # $t7, 0x8016
/* 00B19C 8000A59C 85EF2FCE */  lh    $t7, %lo(sSomeNearestWaypoint)($t7)
/* 00B1A0 8000A5A0 3C0D8016 */  lui   $t5, %hi(gCurrentWaypointCountByPathIndex) # $t5, 0x8016
/* 00B1A4 8000A5A4 95AD4430 */  lhu   $t5, %lo(gCurrentWaypointCountByPathIndex)($t5)
/* 00B1A8 8000A5A8 25EA0002 */  addiu $t2, $t7, 2
/* 00B1AC 8000A5AC 3C0C8016 */  lui   $t4, %hi(gCurrentWaypointExpectedRotationPath) # $t4, 0x8016
/* 00B1B0 8000A5B0 014D001A */  div   $zero, $t2, $t5
/* 00B1B4 8000A5B4 8D8C31DC */  lw    $t4, %lo(gCurrentWaypointExpectedRotationPath)($t4)
/* 00B1B8 8000A5B8 00005810 */  mfhi  $t3
/* 00B1BC 8000A5BC 000B7040 */  sll   $t6, $t3, 1
/* 00B1C0 8000A5C0 018EC021 */  addu  $t8, $t4, $t6
/* 00B1C4 8000A5C4 87190000 */  lh    $t9, ($t8)
/* 00B1C8 8000A5C8 24060168 */  li    $a2, 360
/* 00B1CC 8000A5CC 3407FFFF */  li    $a3, 65535
/* 00B1D0 8000A5D0 03260019 */  multu $t9, $a2
/* 00B1D4 8000A5D4 846B0000 */  lh    $t3, ($v1)
/* 00B1D8 8000A5D8 15A00002 */  bnez  $t5, .L8000A5E4
/* 00B1DC 8000A5DC 00000000 */   nop
/* 00B1E0 8000A5E0 0007000D */  break 7
.L8000A5E4:
/* 00B1E4 8000A5E4 2401FFFF */  li    $at, -1
/* 00B1E8 8000A5E8 15A10004 */  bne   $t5, $at, .L8000A5FC
/* 00B1EC 8000A5EC 3C018000 */   lui   $at, 0x8000
/* 00B1F0 8000A5F0 15410002 */  bne   $t2, $at, .L8000A5FC
/* 00B1F4 8000A5F4 00000000 */   nop
/* 00B1F8 8000A5F8 0006000D */  break 6
.L8000A5FC:
/* 00B1FC 8000A5FC 00007812 */  mflo  $t7
/* 00B200 8000A600 00000000 */  nop
/* 00B204 8000A604 00000000 */  nop
/* 00B208 8000A608 01E7001A */  div   $zero, $t7, $a3
/* 00B20C 8000A60C 00002012 */  mflo  $a0
/* 00B210 8000A610 00045400 */  sll   $t2, $a0, 0x10
/* 00B214 8000A614 14E00002 */  bnez  $a3, .L8000A620
/* 00B218 8000A618 00000000 */   nop
/* 00B21C 8000A61C 0007000D */  break 7
.L8000A620:
/* 00B220 8000A620 2401FFFF */  li    $at, -1
/* 00B224 8000A624 14E10004 */  bne   $a3, $at, .L8000A638
/* 00B228 8000A628 3C018000 */   lui   $at, 0x8000
/* 00B22C 8000A62C 15E10002 */  bne   $t7, $at, .L8000A638
/* 00B230 8000A630 00000000 */   nop
/* 00B234 8000A634 0006000D */  break 6
.L8000A638:
/* 00B238 8000A638 01660019 */  multu $t3, $a2
/* 00B23C 8000A63C 000A6C03 */  sra   $t5, $t2, 0x10
/* 00B240 8000A640 01A02025 */  move  $a0, $t5
/* 00B244 8000A644 00006012 */  mflo  $t4
/* 00B248 8000A648 00000000 */  nop
/* 00B24C 8000A64C 00000000 */  nop
/* 00B250 8000A650 0187001A */  div   $zero, $t4, $a3
/* 00B254 8000A654 14E00002 */  bnez  $a3, .L8000A660
/* 00B258 8000A658 00000000 */   nop
/* 00B25C 8000A65C 0007000D */  break 7
.L8000A660:
/* 00B260 8000A660 2401FFFF */  li    $at, -1
/* 00B264 8000A664 14E10004 */  bne   $a3, $at, .L8000A678
/* 00B268 8000A668 3C018000 */   lui   $at, 0x8000
/* 00B26C 8000A66C 15810002 */  bne   $t4, $at, .L8000A678
/* 00B270 8000A670 00000000 */   nop
/* 00B274 8000A674 0006000D */  break 6
.L8000A678:
/* 00B278 8000A678 00002812 */  mflo  $a1
/* 00B27C 8000A67C 00057400 */  sll   $t6, $a1, 0x10
/* 00B280 8000A680 000EC403 */  sra   $t8, $t6, 0x10
/* 00B284 8000A684 2881FF4C */  slti  $at, $a0, -0xb4
/* 00B288 8000A688 10200004 */  beqz  $at, .L8000A69C
/* 00B28C 8000A68C 03002825 */   move  $a1, $t8
/* 00B290 8000A690 24840168 */  addiu $a0, $a0, 0x168
/* 00B294 8000A694 0004CC00 */  sll   $t9, $a0, 0x10
/* 00B298 8000A698 00192403 */  sra   $a0, $t9, 0x10
.L8000A69C:
/* 00B29C 8000A69C 288100B5 */  slti  $at, $a0, 0xb5
/* 00B2A0 8000A6A0 54200005 */  bnel  $at, $zero, .L8000A6B8
/* 00B2A4 8000A6A4 28A1FF4C */   slti  $at, $a1, -0xb4
/* 00B2A8 8000A6A8 2484FE98 */  addiu $a0, $a0, -0x168
/* 00B2AC 8000A6AC 00045400 */  sll   $t2, $a0, 0x10
/* 00B2B0 8000A6B0 000A2403 */  sra   $a0, $t2, 0x10
/* 00B2B4 8000A6B4 28A1FF4C */  slti  $at, $a1, -0xb4
.L8000A6B8:
/* 00B2B8 8000A6B8 50200005 */  beql  $at, $zero, .L8000A6D0
/* 00B2BC 8000A6BC 28A100B5 */   slti  $at, $a1, 0xb5
/* 00B2C0 8000A6C0 24A50168 */  addiu $a1, $a1, 0x168
/* 00B2C4 8000A6C4 00055C00 */  sll   $t3, $a1, 0x10
/* 00B2C8 8000A6C8 000B2C03 */  sra   $a1, $t3, 0x10
/* 00B2CC 8000A6CC 28A100B5 */  slti  $at, $a1, 0xb5
.L8000A6D0:
/* 00B2D0 8000A6D0 54200005 */  bnel  $at, $zero, .L8000A6E8
/* 00B2D4 8000A6D4 00851023 */   subu  $v0, $a0, $a1
/* 00B2D8 8000A6D8 24A5FE98 */  addiu $a1, $a1, -0x168
/* 00B2DC 8000A6DC 00057400 */  sll   $t6, $a1, 0x10
/* 00B2E0 8000A6E0 000E2C03 */  sra   $a1, $t6, 0x10
/* 00B2E4 8000A6E4 00851023 */  subu  $v0, $a0, $a1
.L8000A6E8:
/* 00B2E8 8000A6E8 00023400 */  sll   $a2, $v0, 0x10
/* 00B2EC 8000A6EC 00021C00 */  sll   $v1, $v0, 0x10
/* 00B2F0 8000A6F0 00067C03 */  sra   $t7, $a2, 0x10
/* 00B2F4 8000A6F4 0003CC03 */  sra   $t9, $v1, 0x10
/* 00B2F8 8000A6F8 29E1FF4C */  slti  $at, $t7, -0xb4
/* 00B2FC 8000A6FC 10200004 */  beqz  $at, .L8000A710
/* 00B300 8000A700 03201825 */   move  $v1, $t9
/* 00B304 8000A704 25E30168 */  addiu $v1, $t7, 0x168
/* 00B308 8000A708 00035400 */  sll   $t2, $v1, 0x10
/* 00B30C 8000A70C 000A1C03 */  sra   $v1, $t2, 0x10
.L8000A710:
/* 00B310 8000A710 286100B5 */  slti  $at, $v1, 0xb5
/* 00B314 8000A714 14200004 */  bnez  $at, .L8000A728
/* 00B318 8000A718 8FA4002C */   lw    $a0, 0x2c($sp)
/* 00B31C 8000A71C 2463FE98 */  addiu $v1, $v1, -0x168
/* 00B320 8000A720 00035C00 */  sll   $t3, $v1, 0x10
/* 00B324 8000A724 000B1C03 */  sra   $v1, $t3, 0x10
.L8000A728:
/* 00B328 8000A728 84820000 */  lh    $v0, ($a0)
/* 00B32C 8000A72C 2401FFFF */  li    $at, -1
/* 00B330 8000A730 10410005 */  beq   $v0, $at, .L8000A748
/* 00B334 8000A734 24010001 */   li    $at, 1
/* 00B338 8000A738 5041000F */  beql  $v0, $at, .L8000A778
/* 00B33C 8000A73C 2861FFFB */   slti  $at, $v1, -5
/* 00B340 8000A740 10000015 */  b     .L8000A798
/* 00B344 8000A744 00000000 */   nop
.L8000A748:
/* 00B348 8000A748 28610006 */  slti  $at, $v1, 6
/* 00B34C 8000A74C 14200007 */  bnez  $at, .L8000A76C
/* 00B350 8000A750 00000000 */   nop
/* 00B354 8000A754 8FAE0040 */  lw    $t6, 0x40($sp)
/* 00B358 8000A758 A4800000 */  sh    $zero, ($a0)
/* 00B35C 8000A75C 2401FFEF */  li    $at, -17
/* 00B360 8000A760 8DD800BC */  lw    $t8, 0xbc($t6)
/* 00B364 8000A764 0301C824 */  and   $t9, $t8, $at
/* 00B368 8000A768 ADD900BC */  sw    $t9, 0xbc($t6)
.L8000A76C:
/* 00B36C 8000A76C 1000000A */  b     .L8000A798
/* 00B370 8000A770 00000000 */   nop
/* 00B374 8000A774 2861FFFB */  slti  $at, $v1, -5
.L8000A778:
/* 00B378 8000A778 10200007 */  beqz  $at, .L8000A798
/* 00B37C 8000A77C 00000000 */   nop
/* 00B380 8000A780 8FAF0040 */  lw    $t7, 0x40($sp)
/* 00B384 8000A784 A4800000 */  sh    $zero, ($a0)
/* 00B388 8000A788 2401FFEF */  li    $at, -17
/* 00B38C 8000A78C 8DEA00BC */  lw    $t2, 0xbc($t7)
/* 00B390 8000A790 01416824 */  and   $t5, $t2, $at
/* 00B394 8000A794 ADED00BC */  sw    $t5, 0xbc($t7)
.L8000A798:
/* 00B398 8000A798 3C0B8016 */  lui   $t3, %hi(D_80163378) # $t3, 0x8016
/* 00B39C 8000A79C 8D6B3378 */  lw    $t3, %lo(D_80163378)($t3)
/* 00B3A0 8000A7A0 8FB80030 */  lw    $t8, 0x30($sp)
/* 00B3A4 8000A7A4 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00B3A8 8000A7A8 316C0001 */  andi  $t4, $t3, 1
/* 00B3AC 8000A7AC 11980010 */  beq   $t4, $t8, .L8000A7F0
/* 00B3B0 8000A7B0 8FAA0040 */   lw    $t2, 0x40($sp)
/* 00B3B4 8000A7B4 8FB90034 */  lw    $t9, 0x34($sp)
/* 00B3B8 8000A7B8 3C058016 */  lui   $a1, %hi(D_80163050) # 0x8016
/* 00B3BC 8000A7BC 8FA40040 */  lw    $a0, 0x40($sp)
/* 00B3C0 8000A7C0 00B92821 */  addu  $a1, $a1, $t9
/* 00B3C4 8000A7C4 0C00DA03 */  jal   func_8003680C
/* 00B3C8 8000A7C8 84A53050 */   lh    $a1, %lo(D_80163050)($a1) # 0x3050($a1)
/* 00B3CC 8000A7CC 8FAE0038 */  lw    $t6, 0x38($sp)
/* 00B3D0 8000A7D0 3C058016 */  lui   $a1, %hi(D_80163210) # 0x8016
/* 00B3D4 8000A7D4 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00B3D8 8000A7D8 00AE2821 */  addu  $a1, $a1, $t6
/* 00B3DC 8000A7DC 8CA53210 */  lw    $a1, %lo(D_80163210)($a1) # 0x3210($a1)
/* 00B3E0 8000A7E0 0C002109 */  jal   func_80008424
/* 00B3E4 8000A7E4 8FA60040 */   lw    $a2, 0x40($sp)
/* 00B3E8 8000A7E8 10000252 */  b     .L8000B134
/* 00B3EC 8000A7EC 8FBF0014 */   lw    $ra, 0x14($sp)
.L8000A7F0:
/* 00B3F0 8000A7F0 3C058016 */  lui   $a1, %hi(sSomeNearestWaypoint) # $a1, 0x8016
/* 00B3F4 8000A7F4 254D0014 */  addiu $t5, $t2, 0x14
/* 00B3F8 8000A7F8 AFAD001C */  sw    $t5, 0x1c($sp)
/* 00B3FC 8000A7FC 0C002DF9 */  jal   func_8000B7E4
/* 00B400 8000A800 94A52FCE */   lhu   $a1, %lo(sSomeNearestWaypoint)($a1)
/* 00B404 8000A804 8FAF0038 */  lw    $t7, 0x38($sp)
/* 00B408 8000A808 3C0B8016 */  lui   $t3, %hi(D_801630B8) # $t3, 0x8016
/* 00B40C 8000A80C 256B30B8 */  addiu $t3, %lo(D_801630B8) # addiu $t3, $t3, 0x30b8
/* 00B410 8000A810 01EB1821 */  addu  $v1, $t7, $t3
/* 00B414 8000A814 AC620000 */  sw    $v0, ($v1)
/* 00B418 8000A818 3C058016 */  lui   $a1, %hi(sSomeNearestWaypoint) # $a1, 0x8016
/* 00B41C 8000A81C 94A52FCE */  lhu   $a1, %lo(sSomeNearestWaypoint)($a1)
/* 00B420 8000A820 AFA30028 */  sw    $v1, 0x28($sp)
/* 00B424 8000A824 0C00350E */  jal   func_8000D438
/* 00B428 8000A828 8FA400D0 */   lw    $a0, 0xd0($sp)
/* 00B42C 8000A82C 3C02800E */  lui   $v0, %hi(gCurrentCourseId)
/* 00B430 8000A830 8442C5A0 */  lh    $v0, %lo(gCurrentCourseId)($v0)
/* 00B434 8000A834 24010014 */  li    $at, 20
/* 00B438 8000A838 8FA90038 */  lw    $t1, 0x38($sp)
/* 00B43C 8000A83C 10410099 */  beq   $v0, $at, .L8000AAA4
/* 00B440 8000A840 00000000 */   nop
/* 00B444 8000A844 3C058016 */  lui   $a1, %hi(D_80164450) # 0x8016
/* 00B448 8000A848 00A92821 */  addu  $a1, $a1, $t1
/* 00B44C 8000A84C 8CA54450 */  lw    $a1, %lo(D_80164450)($a1) # 0x4450($a1)
/* 00B450 8000A850 3C198016 */  lui   $t9, %hi(D_801634F8) # $t9, 0x8016
/* 00B454 8000A854 273934F8 */  addiu $t9, %lo(D_801634F8) # addiu $t9, $t9, 0x34f8
/* 00B458 8000A858 28A1000B */  slti  $at, $a1, 0xb
/* 00B45C 8000A85C 10200045 */  beqz  $at, .L8000A974
/* 00B460 8000A860 00000000 */   nop
/* 00B464 8000A864 8FAC00D0 */  lw    $t4, 0xd0($sp)
/* 00B468 8000A868 3C048016 */  lui   $a0, %hi(D_801630E0) # $a0, 0x8016
/* 00B46C 8000A86C 948430E0 */  lhu   $a0, %lo(D_801630E0)($a0)
/* 00B470 8000A870 000CC100 */  sll   $t8, $t4, 4
/* 00B474 8000A874 18A0001F */  blez  $a1, .L8000A8F4
/* 00B478 8000A878 03191821 */   addu  $v1, $t8, $t9
/* 00B47C 8000A87C 2401000A */  li    $at, 10
/* 00B480 8000A880 5441001D */  bnel  $v0, $at, .L8000A8F8
/* 00B484 8000A884 24840008 */   addiu $a0, $a0, 8
/* 00B488 8000A888 24840014 */  addiu $a0, $a0, 0x14
/* 00B48C 8000A88C 308EFFFF */  andi  $t6, $a0, 0xffff
/* 00B490 8000A890 3C0A8016 */  lui   $t2, %hi(gCurrentWaypointCountByPathIndex) # $t2, 0x8016
/* 00B494 8000A894 954A4430 */  lhu   $t2, %lo(gCurrentWaypointCountByPathIndex)($t2)
/* 00B498 8000A898 01C02025 */  move  $a0, $t6
/* 00B49C 8000A89C 24050000 */  li    $a1, 0
/* 00B4A0 8000A8A0 01CA001A */  div   $zero, $t6, $t2
/* 00B4A4 8000A8A4 15400002 */  bnez  $t2, .L8000A8B0
/* 00B4A8 8000A8A8 00000000 */   nop
/* 00B4AC 8000A8AC 0007000D */  break 7
.L8000A8B0:
/* 00B4B0 8000A8B0 2401FFFF */  li    $at, -1
/* 00B4B4 8000A8B4 15410004 */  bne   $t2, $at, .L8000A8C8
/* 00B4B8 8000A8B8 3C018000 */   lui   $at, 0x8000
/* 00B4BC 8000A8BC 14810002 */  bne   $a0, $at, .L8000A8C8
/* 00B4C0 8000A8C0 00000000 */   nop
/* 00B4C4 8000A8C4 0006000D */  break 6
.L8000A8C8:
/* 00B4C8 8000A8C8 00002010 */  mfhi  $a0
/* 00B4CC 8000A8CC 308DFFFF */  andi  $t5, $a0, 0xffff
/* 00B4D0 8000A8D0 01A02025 */  move  $a0, $t5
/* 00B4D4 8000A8D4 00003025 */  move  $a2, $zero
/* 00B4D8 8000A8D8 0C002EF6 */  jal   func_8000BBD8
/* 00B4DC 8000A8DC AFA30030 */   sw    $v1, 0x30($sp)
/* 00B4E0 8000A8E0 8FA30030 */  lw    $v1, 0x30($sp)
/* 00B4E4 8000A8E4 44805000 */  mtc1  $zero, $f10
/* 00B4E8 8000A8E8 8FA90038 */  lw    $t1, 0x38($sp)
/* 00B4EC 8000A8EC 10000021 */  b     .L8000A974
/* 00B4F0 8000A8F0 E46A0004 */   swc1  $f10, 4($v1)
.L8000A8F4:
/* 00B4F4 8000A8F4 24840008 */  addiu $a0, $a0, 8
.L8000A8F8:
/* 00B4F8 8000A8F8 308FFFFF */  andi  $t7, $a0, 0xffff
/* 00B4FC 8000A8FC 3C0B8016 */  lui   $t3, %hi(gCurrentWaypointCountByPathIndex) # $t3, 0x8016
/* 00B500 8000A900 956B4430 */  lhu   $t3, %lo(gCurrentWaypointCountByPathIndex)($t3)
/* 00B504 8000A904 01E02025 */  move  $a0, $t7
/* 00B508 8000A908 3C188016 */  lui   $t8, %hi(D_80163068) # $t8, 0x8016
/* 00B50C 8000A90C 01EB001A */  div   $zero, $t7, $t3
/* 00B510 8000A910 15600002 */  bnez  $t3, .L8000A91C
/* 00B514 8000A914 00000000 */   nop
/* 00B518 8000A918 0007000D */  break 7
.L8000A91C:
/* 00B51C 8000A91C 2401FFFF */  li    $at, -1
/* 00B520 8000A920 15610004 */  bne   $t3, $at, .L8000A934
/* 00B524 8000A924 3C018000 */   lui   $at, 0x8000
/* 00B528 8000A928 14810002 */  bne   $a0, $at, .L8000A934
/* 00B52C 8000A92C 00000000 */   nop
/* 00B530 8000A930 0006000D */  break 6
.L8000A934:
/* 00B534 8000A934 00002010 */  mfhi  $a0
/* 00B538 8000A938 27183068 */  addiu $t8, %lo(D_80163068) # addiu $t8, $t8, 0x3068
/* 00B53C 8000A93C 308CFFFF */  andi  $t4, $a0, 0xffff
/* 00B540 8000A940 01384021 */  addu  $t0, $t1, $t8
/* 00B544 8000A944 3C068016 */  lui   $a2, %hi(D_80163448 + 2) # $a2, 0x8016
/* 00B548 8000A948 01802025 */  move  $a0, $t4
/* 00B54C 8000A94C 84C6344A */  lh    $a2, %lo(D_80163448 + 2)($a2)
/* 00B550 8000A950 8D050000 */  lw    $a1, ($t0)
/* 00B554 8000A954 AFA80020 */  sw    $t0, 0x20($sp)
/* 00B558 8000A958 0C002EF6 */  jal   func_8000BBD8
/* 00B55C 8000A95C AFA30030 */   sw    $v1, 0x30($sp)
/* 00B560 8000A960 8FA80020 */  lw    $t0, 0x20($sp)
/* 00B564 8000A964 8FA30030 */  lw    $v1, 0x30($sp)
/* 00B568 8000A968 8FA90038 */  lw    $t1, 0x38($sp)
/* 00B56C 8000A96C C5100000 */  lwc1  $f16, ($t0)
/* 00B570 8000A970 E4700000 */  swc1  $f16, ($v1)
.L8000A974:
/* 00B574 8000A974 3C198016 */  lui   $t9, %hi(D_80162FD0) # $t9, 0x8016
/* 00B578 8000A978 87392FD0 */  lh    $t9, %lo(D_80162FD0)($t9)
/* 00B57C 8000A97C 24010001 */  li    $at, 1
/* 00B580 8000A980 8FAE0034 */  lw    $t6, 0x34($sp)
/* 00B584 8000A984 1721001E */  bne   $t9, $at, .L8000AA00
/* 00B588 8000A988 3C0A8016 */   lui   $t2, %hi(D_80162FF8) # 0x8016
/* 00B58C 8000A98C 014E5021 */  addu  $t2, $t2, $t6
/* 00B590 8000A990 854A2FF8 */  lh    $t2, %lo(D_80162FF8)($t2) # 0x2ff8($t2)
/* 00B594 8000A994 3C0F8016 */  lui   $t7, %hi(gCurrentWaypointCountByPathIndex) # $t7, 0x8016
/* 00B598 8000A998 15400019 */  bnez  $t2, .L8000AA00
/* 00B59C 8000A99C 00000000 */   nop
/* 00B5A0 8000A9A0 3C048016 */  lui   $a0, %hi(D_801630E0) # $a0, 0x8016
/* 00B5A4 8000A9A4 948430E0 */  lhu   $a0, %lo(D_801630E0)($a0)
/* 00B5A8 8000A9A8 95EF4430 */  lhu   $t7, %lo(gCurrentWaypointCountByPathIndex)($t7)
/* 00B5AC 8000A9AC 3C05BF33 */  lui   $a1, (0xBF333333 >> 16) # lui $a1, 0xbf33
/* 00B5B0 8000A9B0 24840007 */  addiu $a0, $a0, 7
/* 00B5B4 8000A9B4 308DFFFF */  andi  $t5, $a0, 0xffff
/* 00B5B8 8000A9B8 01AF001A */  div   $zero, $t5, $t7
/* 00B5BC 8000A9BC 01A02025 */  move  $a0, $t5
/* 00B5C0 8000A9C0 15E00002 */  bnez  $t7, .L8000A9CC
/* 00B5C4 8000A9C4 00000000 */   nop
/* 00B5C8 8000A9C8 0007000D */  break 7
.L8000A9CC:
/* 00B5CC 8000A9CC 2401FFFF */  li    $at, -1
/* 00B5D0 8000A9D0 15E10004 */  bne   $t7, $at, .L8000A9E4
/* 00B5D4 8000A9D4 3C018000 */   lui   $at, 0x8000
/* 00B5D8 8000A9D8 14810002 */  bne   $a0, $at, .L8000A9E4
/* 00B5DC 8000A9DC 00000000 */   nop
/* 00B5E0 8000A9E0 0006000D */  break 6
.L8000A9E4:
/* 00B5E4 8000A9E4 00002010 */  mfhi  $a0
/* 00B5E8 8000A9E8 308BFFFF */  andi  $t3, $a0, 0xffff
/* 00B5EC 8000A9EC 3C068016 */  lui   $a2, %hi(D_80163448 + 2) # $a2, 0x8016
/* 00B5F0 8000A9F0 01602025 */  move  $a0, $t3
/* 00B5F4 8000A9F4 84C6344A */  lh    $a2, %lo(D_80163448 + 2)($a2)
/* 00B5F8 8000A9F8 0C002EF6 */  jal   func_8000BBD8
/* 00B5FC 8000A9FC 34A53333 */   ori   $a1, (0xBF333333 & 0xFFFF) # ori $a1, $a1, 0x3333
.L8000AA00:
/* 00B600 8000AA00 3C0C8016 */  lui   $t4, %hi(D_80163448) # $t4, 0x8016
/* 00B604 8000AA04 8D8C3448 */  lw    $t4, %lo(D_80163448)($t4)
/* 00B608 8000AA08 3C198016 */  lui   $t9, %hi(D_80162FF8) # $t9, 0x8016
/* 00B60C 8000AA0C 27392FF8 */  addiu $t9, %lo(D_80162FF8) # addiu $t9, $t9, 0x2ff8
/* 00B610 8000AA10 15800024 */  bnez  $t4, .L8000AAA4
/* 00B614 8000AA14 8FB80034 */   lw    $t8, 0x34($sp)
/* 00B618 8000AA18 03197021 */  addu  $t6, $t8, $t9
/* 00B61C 8000AA1C AFAE003C */  sw    $t6, 0x3c($sp)
/* 00B620 8000AA20 0C002C50 */  jal   func_8000B140
/* 00B624 8000AA24 8FA400D0 */   lw    $a0, 0xd0($sp)
/* 00B628 8000AA28 8FAA003C */  lw    $t2, 0x3c($sp)
/* 00B62C 8000AA2C 3C0B8016 */  lui   $t3, %hi(gCurrentWaypointCountByPathIndex) # $t3, 0x8016
/* 00B630 8000AA30 8FB80038 */  lw    $t8, 0x38($sp)
/* 00B634 8000AA34 854D0000 */  lh    $t5, ($t2)
/* 00B638 8000AA38 19A0001A */  blez  $t5, .L8000AAA4
/* 00B63C 8000AA3C 00000000 */   nop
/* 00B640 8000AA40 3C048016 */  lui   $a0, %hi(D_801630E0) # $a0, 0x8016
/* 00B644 8000AA44 948430E0 */  lhu   $a0, %lo(D_801630E0)($a0)
/* 00B648 8000AA48 956B4430 */  lhu   $t3, %lo(gCurrentWaypointCountByPathIndex)($t3)
/* 00B64C 8000AA4C 3C058016 */  lui   $a1, %hi(D_80163090) # 0x8016
/* 00B650 8000AA50 24840005 */  addiu $a0, $a0, 5
/* 00B654 8000AA54 308FFFFF */  andi  $t7, $a0, 0xffff
/* 00B658 8000AA58 01EB001A */  div   $zero, $t7, $t3
/* 00B65C 8000AA5C 01E02025 */  move  $a0, $t7
/* 00B660 8000AA60 15600002 */  bnez  $t3, .L8000AA6C
/* 00B664 8000AA64 00000000 */   nop
/* 00B668 8000AA68 0007000D */  break 7
.L8000AA6C:
/* 00B66C 8000AA6C 2401FFFF */  li    $at, -1
/* 00B670 8000AA70 15610004 */  bne   $t3, $at, .L8000AA84
/* 00B674 8000AA74 3C018000 */   lui   $at, 0x8000
/* 00B678 8000AA78 14810002 */  bne   $a0, $at, .L8000AA84
/* 00B67C 8000AA7C 00000000 */   nop
/* 00B680 8000AA80 0006000D */  break 6
.L8000AA84:
/* 00B684 8000AA84 00002010 */  mfhi  $a0
/* 00B688 8000AA88 308CFFFF */  andi  $t4, $a0, 0xffff
/* 00B68C 8000AA8C 00B82821 */  addu  $a1, $a1, $t8
/* 00B690 8000AA90 3C068016 */  lui   $a2, %hi(D_80163448 + 2) # $a2, 0x8016
/* 00B694 8000AA94 01802025 */  move  $a0, $t4
/* 00B698 8000AA98 84C6344A */  lh    $a2, %lo(D_80163448 + 2)($a2)
/* 00B69C 8000AA9C 0C002EF6 */  jal   func_8000BBD8
/* 00B6A0 8000AAA0 8CA53090 */   lw    $a1, %lo(D_80163090)($a1) # 0x3090($a1)
.L8000AAA4:
/* 00B6A4 8000AAA4 3C0E800E */  lui   $t6, %hi(gCurrentCourseId)
/* 00B6A8 8000AAA8 85CEC5A0 */  lh    $t6, %lo(gCurrentCourseId)($t6)
/* 00B6AC 8000AAAC 8FA90038 */  lw    $t1, 0x38($sp)
/* 00B6B0 8000AAB0 3C198016 */  lui   $t9, %hi(D_80163068) # $t9, 0x8016
/* 00B6B4 8000AAB4 27393068 */  addiu $t9, %lo(D_80163068) # addiu $t9, $t9, 0x3068
/* 00B6B8 8000AAB8 24010014 */  li    $at, 20
/* 00B6BC 8000AABC 15C10038 */  bne   $t6, $at, .L8000ABA0
/* 00B6C0 8000AAC0 01394021 */   addu  $t0, $t1, $t9
/* 00B6C4 8000AAC4 8FAA0034 */  lw    $t2, 0x34($sp)
/* 00B6C8 8000AAC8 3C028016 */  lui   $v0, %hi(D_80163410) # 0x8016
/* 00B6CC 8000AACC 24010003 */  li    $at, 3
/* 00B6D0 8000AAD0 004A1021 */  addu  $v0, $v0, $t2
/* 00B6D4 8000AAD4 84423410 */  lh    $v0, %lo(D_80163410)($v0) # 0x3410($v0)
/* 00B6D8 8000AAD8 3C078016 */  lui   $a3, %hi(gOffsetPosition) # $a3, 0x8016
/* 00B6DC 8000AADC 24E72FA0 */  addiu $a3, %lo(gOffsetPosition) # addiu $a3, $a3, 0x2fa0
/* 00B6E0 8000AAE0 10410005 */  beq   $v0, $at, .L8000AAF8
/* 00B6E4 8000AAE4 24010004 */   li    $at, 4
/* 00B6E8 8000AAE8 1041000C */  beq   $v0, $at, .L8000AB1C
/* 00B6EC 8000AAEC 8FAD0024 */   lw    $t5, 0x24($sp)
/* 00B6F0 8000AAF0 1000002B */  b     .L8000ABA0
/* 00B6F4 8000AAF4 00000000 */   nop
.L8000AAF8:
/* 00B6F8 8000AAF8 3C018016 */  lui   $at, %hi(D_80163418)
/* 00B6FC 8000AAFC 00290821 */  addu  $at, $at, $t1
/* 00B700 8000AB00 C4243418 */  lwc1  $f4, %lo(D_80163418)($at)
/* 00B704 8000AB04 3C018016 */  lui   $at, %hi(D_80163438)
/* 00B708 8000AB08 00290821 */  addu  $at, $at, $t1
/* 00B70C 8000AB0C E4E40000 */  swc1  $f4, ($a3)
/* 00B710 8000AB10 C4263438 */  lwc1  $f6, %lo(D_80163438)($at)
/* 00B714 8000AB14 10000022 */  b     .L8000ABA0
/* 00B718 8000AB18 E4E60008 */   swc1  $f6, 8($a3)
.L8000AB1C:
/* 00B71C 8000AB1C 8FAC0034 */  lw    $t4, 0x34($sp)
/* 00B720 8000AB20 3C188016 */  lui   $t8, %hi(gPathCountByPathIndex) # 0x8016
/* 00B724 8000AB24 95AF0000 */  lhu   $t7, ($t5)
/* 00B728 8000AB28 030CC021 */  addu  $t8, $t8, $t4
/* 00B72C 8000AB2C 971845C8 */  lhu   $t8, %lo(gPathCountByPathIndex)($t8) # 0x45c8($t8)
/* 00B730 8000AB30 25EB000A */  addiu $t3, $t7, 0xa
/* 00B734 8000AB34 3C0A8016 */  lui   $t2, %hi(gTrackPath) # 0x8016
/* 00B738 8000AB38 0178001A */  div   $zero, $t3, $t8
/* 00B73C 8000AB3C 01495021 */  addu  $t2, $t2, $t1
/* 00B740 8000AB40 8D4A4550 */  lw    $t2, %lo(gTrackPath)($t2) # 0x4550($t2)
/* 00B744 8000AB44 0000C810 */  mfhi  $t9
/* 00B748 8000AB48 001970C0 */  sll   $t6, $t9, 3
/* 00B74C 8000AB4C 01CA1021 */  addu  $v0, $t6, $t2
/* 00B750 8000AB50 844D0000 */  lh    $t5, ($v0)
/* 00B754 8000AB54 3C078016 */  lui   $a3, %hi(gOffsetPosition) # $a3, 0x8016
/* 00B758 8000AB58 24E72FA0 */  addiu $a3, %lo(gOffsetPosition) # addiu $a3, $a3, 0x2fa0
/* 00B75C 8000AB5C 448D9000 */  mtc1  $t5, $f18
/* 00B760 8000AB60 17000002 */  bnez  $t8, .L8000AB6C
/* 00B764 8000AB64 00000000 */   nop
/* 00B768 8000AB68 0007000D */  break 7
.L8000AB6C:
/* 00B76C 8000AB6C 2401FFFF */  li    $at, -1
/* 00B770 8000AB70 17010004 */  bne   $t8, $at, .L8000AB84
/* 00B774 8000AB74 3C018000 */   lui   $at, 0x8000
/* 00B778 8000AB78 15610002 */  bne   $t3, $at, .L8000AB84
/* 00B77C 8000AB7C 00000000 */   nop
/* 00B780 8000AB80 0006000D */  break 6
.L8000AB84:
/* 00B784 8000AB84 46809220 */  cvt.s.w $f8, $f18
/* 00B788 8000AB88 E4E80000 */  swc1  $f8, ($a3)
/* 00B78C 8000AB8C 844F0004 */  lh    $t7, 4($v0)
/* 00B790 8000AB90 448F5000 */  mtc1  $t7, $f10
/* 00B794 8000AB94 00000000 */  nop
/* 00B798 8000AB98 46805420 */  cvt.s.w $f16, $f10
/* 00B79C 8000AB9C E4F00008 */  swc1  $f16, 8($a3)
.L8000ABA0:
/* 00B7A0 8000ABA0 3C0C8016 */  lui   $t4, %hi(D_80163178) # $t4, 0x8016
/* 00B7A4 8000ABA4 3C078016 */  lui   $a3, %hi(gOffsetPosition) # 0x8016
/* 00B7A8 8000ABA8 258C3178 */  addiu $t4, %lo(D_80163178) # addiu $t4, $t4, 0x3178
/* 00B7AC 8000ABAC 24E52FA0 */  addiu $a1, $a3, %lo(gOffsetPosition) # 0x2fa0
/* 00B7B0 8000ABB0 012C1021 */  addu  $v0, $t1, $t4
/* 00B7B4 8000ABB4 C4460000 */  lwc1  $f6, ($v0)
/* 00B7B8 8000ABB8 C4A40000 */  lwc1  $f4, ($a1)
/* 00B7BC 8000ABBC 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 00B7C0 8000ABC0 44810000 */  mtc1  $at, $f0
/* 00B7C4 8000ABC4 46062480 */  add.s $f18, $f4, $f6
/* 00B7C8 8000ABC8 3C0B8016 */  lui   $t3, %hi(D_801631A0) # $t3, 0x8016
/* 00B7CC 8000ABCC 256B31A0 */  addiu $t3, %lo(D_801631A0) # addiu $t3, $t3, 0x31a0
/* 00B7D0 8000ABD0 012B1821 */  addu  $v1, $t1, $t3
/* 00B7D4 8000ABD4 46009202 */  mul.s $f8, $f18, $f0
/* 00B7D8 8000ABD8 C4AA0008 */  lwc1  $f10, 8($a1)
/* 00B7DC 8000ABDC E4A80000 */  swc1  $f8, ($a1)
/* 00B7E0 8000ABE0 C4700000 */  lwc1  $f16, ($v1)
/* 00B7E4 8000ABE4 C4B20000 */  lwc1  $f18, ($a1)
/* 00B7E8 8000ABE8 46105100 */  add.s $f4, $f10, $f16
/* 00B7EC 8000ABEC 46002182 */  mul.s $f6, $f4, $f0
/* 00B7F0 8000ABF0 E4A60008 */  swc1  $f6, 8($a1)
/* 00B7F4 8000ABF4 E4520000 */  swc1  $f18, ($v0)
/* 00B7F8 8000ABF8 C4A80008 */  lwc1  $f8, 8($a1)
/* 00B7FC 8000ABFC AFA80020 */  sw    $t0, 0x20($sp)
/* 00B800 8000AC00 8FA4001C */  lw    $a0, 0x1c($sp)
/* 00B804 8000AC04 0C0AD489 */  jal   get_angle_between_two_vectors
/* 00B808 8000AC08 E4680000 */   swc1  $f8, ($v1)
/* 00B80C 8000AC0C 3C013FC0 */  li    $at, 0x3FC00000 # 1.500000
/* 00B810 8000AC10 44810000 */  mtc1  $at, $f0
/* 00B814 8000AC14 3C014336 */  li    $at, 0x43360000 # 182.000000
/* 00B818 8000AC18 44816000 */  mtc1  $at, $f12
/* 00B81C 8000AC1C 46000407 */  neg.s $f16, $f0
/* 00B820 8000AC20 8FA70040 */  lw    $a3, 0x40($sp)
/* 00B824 8000AC24 460C0082 */  mul.s $f2, $f0, $f12
/* 00B828 8000AC28 00027023 */  negu  $t6, $v0
/* 00B82C 8000AC2C 84E4002E */  lh    $a0, 0x2e($a3)
/* 00B830 8000AC30 460C8102 */  mul.s $f4, $f16, $f12
/* 00B834 8000AC34 8FA80020 */  lw    $t0, 0x20($sp)
/* 00B838 8000AC38 01C41823 */  subu  $v1, $t6, $a0
/* 00B83C 8000AC3C 00033400 */  sll   $a2, $v1, 0x10
/* 00B840 8000AC40 00035C00 */  sll   $t3, $v1, 0x10
/* 00B844 8000AC44 00065403 */  sra   $t2, $a2, 0x10
/* 00B848 8000AC48 4600128D */  trunc.w.s $f10, $f2
/* 00B84C 8000AC4C 000BC403 */  sra   $t8, $t3, 0x10
/* 00B850 8000AC50 01403025 */  move  $a2, $t2
/* 00B854 8000AC54 4600218D */  trunc.w.s $f6, $f4
/* 00B858 8000AC58 44055000 */  mfc1  $a1, $f10
/* 00B85C 8000AC5C 3C0B800E */  lui   $t3, %hi(gCurrentCourseId)
/* 00B860 8000AC60 3C03800E */  lui   $v1, %hi(gKartAISteeringSensitivity)
/* 00B864 8000AC64 00057C00 */  sll   $t7, $a1, 0x10
/* 00B868 8000AC68 44023000 */  mfc1  $v0, $f6
/* 00B86C 8000AC6C 000F6403 */  sra   $t4, $t7, 0x10
/* 00B870 8000AC70 0198082A */  slt   $at, $t4, $t8
/* 00B874 8000AC74 10200004 */  beqz  $at, .L8000AC88
/* 00B878 8000AC78 00025400 */   sll   $t2, $v0, 0x10
/* 00B87C 8000AC7C 00053400 */  sll   $a2, $a1, 0x10
/* 00B880 8000AC80 0006CC03 */  sra   $t9, $a2, 0x10
/* 00B884 8000AC84 03203025 */  move  $a2, $t9
.L8000AC88:
/* 00B888 8000AC88 000A6C03 */  sra   $t5, $t2, 0x10
/* 00B88C 8000AC8C 00CD082A */  slt   $at, $a2, $t5
/* 00B890 8000AC90 10200004 */  beqz  $at, .L8000ACA4
/* 00B894 8000AC94 3C188016 */   lui   $t8, %hi(gCurrentTrackSectionTypesPath) # $t8, 0x8016
/* 00B898 8000AC98 00023400 */  sll   $a2, $v0, 0x10
/* 00B89C 8000AC9C 00067C03 */  sra   $t7, $a2, 0x10
/* 00B8A0 8000ACA0 01E03025 */  move  $a2, $t7
.L8000ACA4:
/* 00B8A4 8000ACA4 8F1831D8 */  lw    $t8, %lo(gCurrentTrackSectionTypesPath)($t8)
/* 00B8A8 8000ACA8 8FB90034 */  lw    $t9, 0x34($sp)
/* 00B8AC 8000ACAC 856BC5A0 */  lh    $t3, %lo(gCurrentCourseId)($t3)
/* 00B8B0 8000ACB0 24010002 */  li    $at, 2
/* 00B8B4 8000ACB4 03197021 */  addu  $t6, $t8, $t9
/* 00B8B8 8000ACB8 85C20000 */  lh    $v0, ($t6)
/* 00B8BC 8000ACBC 000B6040 */  sll   $t4, $t3, 1
/* 00B8C0 8000ACC0 006C1821 */  addu  $v1, $v1, $t4
/* 00B8C4 8000ACC4 10410006 */  beq   $v0, $at, .L8000ACE0
/* 00B8C8 8000ACC8 8463CA20 */   lh    $v1, %lo(gKartAISteeringSensitivity)($v1)
/* 00B8CC 8000ACCC 24010003 */  li    $at, 3
/* 00B8D0 8000ACD0 50410014 */  beql  $v0, $at, .L8000AD24
/* 00B8D4 8000ACD4 3C013F00 */   lui   $at, 0x3f00
/* 00B8D8 8000ACD8 10000021 */  b     .L8000AD60
/* 00B8DC 8000ACDC 8FAA0034 */   lw    $t2, 0x34($sp)
.L8000ACE0:
/* 00B8E0 8000ACE0 3C013F00 */  li    $at, 0x3F000000 # 0.500000
/* 00B8E4 8000ACE4 44819000 */  mtc1  $at, $f18
/* 00B8E8 8000ACE8 C5000000 */  lwc1  $f0, ($t0)
/* 00B8EC 8000ACEC 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 00B8F0 8000ACF0 44814000 */  mtc1  $at, $f8
/* 00B8F4 8000ACF4 4600903C */  c.lt.s $f18, $f0
/* 00B8F8 8000ACF8 00000000 */  nop
/* 00B8FC 8000ACFC 45020003 */  bc1fl .L8000AD0C
/* 00B900 8000AD00 4608003C */   c.lt.s $f0, $f8
/* 00B904 8000AD04 24030014 */  li    $v1, 20
/* 00B908 8000AD08 4608003C */  c.lt.s $f0, $f8
.L8000AD0C:
/* 00B90C 8000AD0C 00000000 */  nop
/* 00B910 8000AD10 45020013 */  bc1fl .L8000AD60
/* 00B914 8000AD14 8FAA0034 */   lw    $t2, 0x34($sp)
/* 00B918 8000AD18 10000010 */  b     .L8000AD5C
/* 00B91C 8000AD1C 24030035 */   li    $v1, 53
/* 00B920 8000AD20 3C013F00 */  li    $at, 0x3F000000 # 0.500000
.L8000AD24:
/* 00B924 8000AD24 44815000 */  mtc1  $at, $f10
/* 00B928 8000AD28 C5000000 */  lwc1  $f0, ($t0)
/* 00B92C 8000AD2C 3C01BF00 */  li    $at, 0xBF000000 # -0.500000
/* 00B930 8000AD30 44818000 */  mtc1  $at, $f16
/* 00B934 8000AD34 4600503C */  c.lt.s $f10, $f0
/* 00B938 8000AD38 00000000 */  nop
/* 00B93C 8000AD3C 45020003 */  bc1fl .L8000AD4C
/* 00B940 8000AD40 4610003C */   c.lt.s $f0, $f16
/* 00B944 8000AD44 24030035 */  li    $v1, 53
/* 00B948 8000AD48 4610003C */  c.lt.s $f0, $f16
.L8000AD4C:
/* 00B94C 8000AD4C 00000000 */  nop
/* 00B950 8000AD50 45020003 */  bc1fl .L8000AD60
/* 00B954 8000AD54 8FAA0034 */   lw    $t2, 0x34($sp)
/* 00B958 8000AD58 24030014 */  li    $v1, 20
.L8000AD5C:
/* 00B95C 8000AD5C 8FAA0034 */  lw    $t2, 0x34($sp)
.L8000AD60:
/* 00B960 8000AD60 3C0D8016 */  lui   $t5, %hi(gKartAIBehaviourState) # 0x8016
/* 00B964 8000AD64 24010002 */  li    $at, 2
/* 00B968 8000AD68 01AA6821 */  addu  $t5, $t5, $t2
/* 00B96C 8000AD6C 95AD32E8 */  lhu   $t5, %lo(gKartAIBehaviourState)($t5) # 0x32e8($t5)
/* 00B970 8000AD70 15A10013 */  bne   $t5, $at, .L8000ADC0
/* 00B974 8000AD74 3C01800F */   lui   $at, %hi(D_800ECFB8) # $at, 0x800f
/* 00B978 8000AD78 C424CFB8 */  lwc1  $f4, %lo(D_800ECFB8)($at)
/* 00B97C 8000AD7C C5000000 */  lwc1  $f0, ($t0)
/* 00B980 8000AD80 3C01800F */  lui   $at, %hi(D_800ECFBC) # $at, 0x800f
/* 00B984 8000AD84 8FAF002C */  lw    $t7, 0x2c($sp)
/* 00B988 8000AD88 4600203C */  c.lt.s $f4, $f0
/* 00B98C 8000AD8C 00000000 */  nop
/* 00B990 8000AD90 45030007 */  bc1tl .L8000ADB0
/* 00B994 8000AD94 A5E00000 */   sh    $zero, ($t7)
/* 00B998 8000AD98 C426CFBC */  lwc1  $f6, %lo(D_800ECFBC)($at)
/* 00B99C 8000AD9C 4606003C */  c.lt.s $f0, $f6
/* 00B9A0 8000ADA0 00000000 */  nop
/* 00B9A4 8000ADA4 45020007 */  bc1fl .L8000ADC4
/* 00B9A8 8000ADA8 8CE200BC */   lw    $v0, 0xbc($a3)
/* 00B9AC 8000ADAC A5E00000 */  sh    $zero, ($t7)
.L8000ADB0:
/* 00B9B0 8000ADB0 8CEB00BC */  lw    $t3, 0xbc($a3)
/* 00B9B4 8000ADB4 2401FFEF */  li    $at, -17
/* 00B9B8 8000ADB8 01616024 */  and   $t4, $t3, $at
/* 00B9BC 8000ADBC ACEC00BC */  sw    $t4, 0xbc($a3)
.L8000ADC0:
/* 00B9C0 8000ADC0 8CE200BC */  lw    $v0, 0xbc($a3)
.L8000ADC4:
/* 00B9C4 8000ADC4 8FB9002C */  lw    $t9, 0x2c($sp)
/* 00B9C8 8000ADC8 30580002 */  andi  $t8, $v0, 2
/* 00B9CC 8000ADCC 53000029 */  beql  $t8, $zero, .L8000AE74
/* 00B9D0 8000ADD0 3C011000 */   lui   $at, 0x1000
/* 00B9D4 8000ADD4 87220000 */  lh    $v0, ($t9)
/* 00B9D8 8000ADD8 2401FFFF */  li    $at, -1
/* 00B9DC 8000ADDC 2405FFCB */  li    $a1, -53
/* 00B9E0 8000ADE0 1041001F */  beq   $v0, $at, .L8000AE60
/* 00B9E4 8000ADE4 8FAA0034 */   lw    $t2, 0x34($sp)
/* 00B9E8 8000ADE8 24010001 */  li    $at, 1
/* 00B9EC 8000ADEC 10410017 */  beq   $v0, $at, .L8000AE4C
/* 00B9F0 8000ADF0 24050035 */   li    $a1, 53
/* 00B9F4 8000ADF4 00C30019 */  multu $a2, $v1
/* 00B9F8 8000ADF8 8FAE0034 */  lw    $t6, 0x34($sp)
/* 00B9FC 8000ADFC 3C0A8016 */  lui   $t2, %hi(D_80163050) # $t2, 0x8016
/* 00BA00 8000AE00 254A3050 */  addiu $t2, %lo(D_80163050) # addiu $t2, $t2, 0x3050
/* 00BA04 8000AE04 01CA1021 */  addu  $v0, $t6, $t2
/* 00BA08 8000AE08 844D0000 */  lh    $t5, ($v0)
/* 00BA0C 8000AE0C 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 00BA10 8000AE10 448D9000 */  mtc1  $t5, $f18
/* 00BA14 8000AE14 00007812 */  mflo  $t7
/* 00BA18 8000AE18 448F5000 */  mtc1  $t7, $f10
/* 00BA1C 8000AE1C 46809220 */  cvt.s.w $f8, $f18
/* 00BA20 8000AE20 44819000 */  mtc1  $at, $f18
/* 00BA24 8000AE24 46805420 */  cvt.s.w $f16, $f10
/* 00BA28 8000AE28 46028103 */  div.s $f4, $f16, $f2
/* 00BA2C 8000AE2C 46044180 */  add.s $f6, $f8, $f4
/* 00BA30 8000AE30 46123283 */  div.s $f10, $f6, $f18
/* 00BA34 8000AE34 4600540D */  trunc.w.s $f16, $f10
/* 00BA38 8000AE38 44058000 */  mfc1  $a1, $f16
/* 00BA3C 8000AE3C 00000000 */  nop
/* 00BA40 8000AE40 00056400 */  sll   $t4, $a1, 0x10
/* 00BA44 8000AE44 1000002A */  b     .L8000AEF0
/* 00BA48 8000AE48 000C2C03 */   sra   $a1, $t4, 0x10
.L8000AE4C:
/* 00BA4C 8000AE4C 8FB90034 */  lw    $t9, 0x34($sp)
/* 00BA50 8000AE50 3C0E8016 */  lui   $t6, %hi(D_80163050) # $t6, 0x8016
/* 00BA54 8000AE54 25CE3050 */  addiu $t6, %lo(D_80163050) # addiu $t6, $t6, 0x3050
/* 00BA58 8000AE58 10000025 */  b     .L8000AEF0
/* 00BA5C 8000AE5C 032E1021 */   addu  $v0, $t9, $t6
.L8000AE60:
/* 00BA60 8000AE60 3C0D8016 */  lui   $t5, %hi(D_80163050) # $t5, 0x8016
/* 00BA64 8000AE64 25AD3050 */  addiu $t5, %lo(D_80163050) # addiu $t5, $t5, 0x3050
/* 00BA68 8000AE68 10000021 */  b     .L8000AEF0
/* 00BA6C 8000AE6C 014D1021 */   addu  $v0, $t2, $t5
/* 00BA70 8000AE70 3C011000 */  lui   $at, (0x1000000C >> 16) # lui $at, 0x1000
.L8000AE74:
/* 00BA74 8000AE74 3421000C */  ori   $at, (0x1000000C & 0xFFFF) # ori $at, $at, 0xc
/* 00BA78 8000AE78 00417824 */  and   $t7, $v0, $at
/* 00BA7C 8000AE7C 11E00007 */  beqz  $t7, .L8000AE9C
/* 00BA80 8000AE80 00000000 */   nop
/* 00BA84 8000AE84 8FAB0034 */  lw    $t3, 0x34($sp)
/* 00BA88 8000AE88 3C0C8016 */  lui   $t4, %hi(D_80163050) # $t4, 0x8016
/* 00BA8C 8000AE8C 258C3050 */  addiu $t4, %lo(D_80163050) # addiu $t4, $t4, 0x3050
/* 00BA90 8000AE90 00002825 */  move  $a1, $zero
/* 00BA94 8000AE94 10000016 */  b     .L8000AEF0
/* 00BA98 8000AE98 016C1021 */   addu  $v0, $t3, $t4
.L8000AE9C:
/* 00BA9C 8000AE9C 00C30019 */  multu $a2, $v1
/* 00BAA0 8000AEA0 8FB80034 */  lw    $t8, 0x34($sp)
/* 00BAA4 8000AEA4 3C198016 */  lui   $t9, %hi(D_80163050) # $t9, 0x8016
/* 00BAA8 8000AEA8 27393050 */  addiu $t9, %lo(D_80163050) # addiu $t9, $t9, 0x3050
/* 00BAAC 8000AEAC 03191021 */  addu  $v0, $t8, $t9
/* 00BAB0 8000AEB0 844E0000 */  lh    $t6, ($v0)
/* 00BAB4 8000AEB4 3C014000 */  li    $at, 0x40000000 # 2.000000
/* 00BAB8 8000AEB8 448E4000 */  mtc1  $t6, $f8
/* 00BABC 8000AEBC 00005012 */  mflo  $t2
/* 00BAC0 8000AEC0 448A3000 */  mtc1  $t2, $f6
/* 00BAC4 8000AEC4 46804120 */  cvt.s.w $f4, $f8
/* 00BAC8 8000AEC8 44814000 */  mtc1  $at, $f8
/* 00BACC 8000AECC 468034A0 */  cvt.s.w $f18, $f6
/* 00BAD0 8000AED0 46029283 */  div.s $f10, $f18, $f2
/* 00BAD4 8000AED4 460A2400 */  add.s $f16, $f4, $f10
/* 00BAD8 8000AED8 46088183 */  div.s $f6, $f16, $f8
/* 00BADC 8000AEDC 4600348D */  trunc.w.s $f18, $f6
/* 00BAE0 8000AEE0 44059000 */  mfc1  $a1, $f18
/* 00BAE4 8000AEE4 00000000 */  nop
/* 00BAE8 8000AEE8 00057C00 */  sll   $t7, $a1, 0x10
/* 00BAEC 8000AEEC 000F2C03 */  sra   $a1, $t7, 0x10
.L8000AEF0:
/* 00BAF0 8000AEF0 00E02025 */  move  $a0, $a3
/* 00BAF4 8000AEF4 AFA2003C */  sw    $v0, 0x3c($sp)
/* 00BAF8 8000AEF8 A7A50094 */  sh    $a1, 0x94($sp)
/* 00BAFC 8000AEFC 0C00DA03 */  jal   func_8003680C
/* 00BB00 8000AF00 AFA80020 */   sw    $t0, 0x20($sp)
/* 00BB04 8000AF04 8FA2003C */  lw    $v0, 0x3c($sp)
/* 00BB08 8000AF08 87A50094 */  lh    $a1, 0x94($sp)
/* 00BB0C 8000AF0C 8FAC0028 */  lw    $t4, 0x28($sp)
/* 00BB10 8000AF10 24010001 */  li    $at, 1
/* 00BB14 8000AF14 A4450000 */  sh    $a1, ($v0)
/* 00BB18 8000AF18 8D980000 */  lw    $t8, ($t4)
/* 00BB1C 8000AF1C 8FA80020 */  lw    $t0, 0x20($sp)
/* 00BB20 8000AF20 1301000D */  beq   $t8, $at, .L8000AF58
/* 00BB24 8000AF24 00000000 */   nop
/* 00BB28 8000AF28 8FB9002C */  lw    $t9, 0x2c($sp)
/* 00BB2C 8000AF2C 24010001 */  li    $at, 1
/* 00BB30 8000AF30 87220000 */  lh    $v0, ($t9)
/* 00BB34 8000AF34 10410008 */  beq   $v0, $at, .L8000AF58
/* 00BB38 8000AF38 2401FFFF */   li    $at, -1
/* 00BB3C 8000AF3C 10410006 */  beq   $v0, $at, .L8000AF58
/* 00BB40 8000AF40 8FAE0040 */   lw    $t6, 0x40($sp)
/* 00BB44 8000AF44 8DCA00BC */  lw    $t2, 0xbc($t6)
/* 00BB48 8000AF48 3C011000 */  lui   $at, (0x1000000C >> 16) # lui $at, 0x1000
/* 00BB4C 8000AF4C 3421000C */  ori   $at, (0x1000000C & 0xFFFF) # ori $at, $at, 0xc
/* 00BB50 8000AF50 01416824 */  and   $t5, $t2, $at
/* 00BB54 8000AF54 11A00014 */  beqz  $t5, .L8000AFA8
.L8000AF58:
/* 00BB58 8000AF58 3C0F800E */   lui   $t7, %hi(gCurrentCourseId)
/* 00BB5C 8000AF5C 3C0C800E */  lui   $t4, %hi(gCCSelection)
/* 00BB60 8000AF60 8D8CC548 */  lw    $t4, %lo(gCCSelection)($t4)
/* 00BB64 8000AF64 85EFC5A0 */  lh    $t7, %lo(gCurrentCourseId)($t7)
/* 00BB68 8000AF68 3C0E0D01 */  lui   $t6, %hi(D_0D009418) # $t6, 0xd01
/* 00BB6C 8000AF6C 000CC080 */  sll   $t8, $t4, 2
/* 00BB70 8000AF70 000F5900 */  sll   $t3, $t7, 4
/* 00BB74 8000AF74 0178C821 */  addu  $t9, $t3, $t8
/* 00BB78 8000AF78 25CE9418 */  addiu $t6, %lo(D_0D009418) # addiu $t6, $t6, -0x6be8
/* 00BB7C 8000AF7C 032E2021 */  addu  $a0, $t9, $t6
/* 00BB80 8000AF80 0C026455 */  jal   segmented_to_virtual_dupe_2
/* 00BB84 8000AF84 AFA80020 */   sw    $t0, 0x20($sp)
/* 00BB88 8000AF88 8FAA0038 */  lw    $t2, 0x38($sp)
/* 00BB8C 8000AF8C 3C0D8016 */  lui   $t5, %hi(D_80163028) # $t5, 0x8016
/* 00BB90 8000AF90 C4440000 */  lwc1  $f4, ($v0)
/* 00BB94 8000AF94 25AD3028 */  addiu $t5, %lo(D_80163028) # addiu $t5, $t5, 0x3028
/* 00BB98 8000AF98 014D1821 */  addu  $v1, $t2, $t5
/* 00BB9C 8000AF9C 8FA80020 */  lw    $t0, 0x20($sp)
/* 00BBA0 8000AFA0 10000014 */  b     .L8000AFF4
/* 00BBA4 8000AFA4 E4640000 */   swc1  $f4, ($v1)
.L8000AFA8:
/* 00BBA8 8000AFA8 3C0F800E */  lui   $t7, %hi(gCurrentCourseId)
/* 00BBAC 8000AFAC 3C0B800E */  lui   $t3, %hi(gCCSelection)
/* 00BBB0 8000AFB0 8D6BC548 */  lw    $t3, %lo(gCCSelection)($t3)
/* 00BBB4 8000AFB4 85EFC5A0 */  lh    $t7, %lo(gCurrentCourseId)($t7)
/* 00BBB8 8000AFB8 3C0E0D01 */  lui   $t6, %hi(D_0D009568) # $t6, 0xd01
/* 00BBBC 8000AFBC 000BC080 */  sll   $t8, $t3, 2
/* 00BBC0 8000AFC0 000F6100 */  sll   $t4, $t7, 4
/* 00BBC4 8000AFC4 0198C821 */  addu  $t9, $t4, $t8
/* 00BBC8 8000AFC8 25CE9568 */  addiu $t6, %lo(D_0D009568) # addiu $t6, $t6, -0x6a98
/* 00BBCC 8000AFCC 032E2021 */  addu  $a0, $t9, $t6
/* 00BBD0 8000AFD0 0C026455 */  jal   segmented_to_virtual_dupe_2
/* 00BBD4 8000AFD4 AFA80020 */   sw    $t0, 0x20($sp)
/* 00BBD8 8000AFD8 8FAA0038 */  lw    $t2, 0x38($sp)
/* 00BBDC 8000AFDC C44A0000 */  lwc1  $f10, ($v0)
/* 00BBE0 8000AFE0 3C0D8016 */  lui   $t5, %hi(D_80163028) # $t5, 0x8016
/* 00BBE4 8000AFE4 25AD3028 */  addiu $t5, %lo(D_80163028) # addiu $t5, $t5, 0x3028
/* 00BBE8 8000AFE8 014D1821 */  addu  $v1, $t2, $t5
/* 00BBEC 8000AFEC 8FA80020 */  lw    $t0, 0x20($sp)
/* 00BBF0 8000AFF0 E46A0000 */  swc1  $f10, ($v1)
.L8000AFF4:
/* 00BBF4 8000AFF4 3C01800F */  lui   $at, %hi(D_800ECFC0) # $at, 0x800f
/* 00BBF8 8000AFF8 C430CFC0 */  lwc1  $f16, %lo(D_800ECFC0)($at)
/* 00BBFC 8000AFFC C5000000 */  lwc1  $f0, ($t0)
/* 00BC00 8000B000 3C0E0D01 */  lui   $t6, %hi(D_0D009808) # $t6, 0xd01
/* 00BC04 8000B004 3C01800F */  lui   $at, %hi(D_800ECFC4) # $at, 0x800f
/* 00BC08 8000B008 4600803C */  c.lt.s $f16, $f0
/* 00BC0C 8000B00C 25CE9808 */  addiu $t6, %lo(D_0D009808) # addiu $t6, $t6, -0x67f8
/* 00BC10 8000B010 3C0F800E */  lui   $t7, %hi(gCurrentCourseId)
/* 00BC14 8000B014 3C0C800E */  lui   $t4, %hi(gCCSelection)
/* 00BC18 8000B018 45010006 */  bc1t  .L8000B034
/* 00BC1C 8000B01C 00000000 */   nop
/* 00BC20 8000B020 C428CFC4 */  lwc1  $f8, %lo(D_800ECFC4)($at)
/* 00BC24 8000B024 4608003C */  c.lt.s $f0, $f8
/* 00BC28 8000B028 00000000 */  nop
/* 00BC2C 8000B02C 4500000C */  bc1f  .L8000B060
/* 00BC30 8000B030 00000000 */   nop
.L8000B034:
/* 00BC34 8000B034 85EFC5A0 */  lh    $t7, %lo(gCurrentCourseId)($t7)
/* 00BC38 8000B038 8D8CC548 */  lw    $t4, %lo(gCCSelection)($t4)
/* 00BC3C 8000B03C AFA30034 */  sw    $v1, 0x34($sp)
/* 00BC40 8000B040 000F5900 */  sll   $t3, $t7, 4
/* 00BC44 8000B044 000CC080 */  sll   $t8, $t4, 2
/* 00BC48 8000B048 0178C821 */  addu  $t9, $t3, $t8
/* 00BC4C 8000B04C 0C026455 */  jal   segmented_to_virtual_dupe_2
/* 00BC50 8000B050 032E2021 */   addu  $a0, $t9, $t6
/* 00BC54 8000B054 8FA30034 */  lw    $v1, 0x34($sp)
/* 00BC58 8000B058 C4460000 */  lwc1  $f6, ($v0)
/* 00BC5C 8000B05C E4660000 */  swc1  $f6, ($v1)
.L8000B060:
/* 00BC60 8000B060 3C0A8016 */  lui   $t2, %hi(D_80162FD0) # $t2, 0x8016
/* 00BC64 8000B064 854A2FD0 */  lh    $t2, %lo(D_80162FD0)($t2)
/* 00BC68 8000B068 24010001 */  li    $at, 1
/* 00BC6C 8000B06C 3C0D800E */  lui   $t5, %hi(gCurrentCourseId)
/* 00BC70 8000B070 1541000E */  bne   $t2, $at, .L8000B0AC
/* 00BC74 8000B074 3C0C800E */   lui   $t4, %hi(gCCSelection)
/* 00BC78 8000B078 85ADC5A0 */  lh    $t5, %lo(gCurrentCourseId)($t5)
/* 00BC7C 8000B07C 8D8CC548 */  lw    $t4, %lo(gCCSelection)($t4)
/* 00BC80 8000B080 3C190D01 */  lui   $t9, %hi(D_0D0096B8) # $t9, 0xd01
/* 00BC84 8000B084 000D7900 */  sll   $t7, $t5, 4
/* 00BC88 8000B088 000C5880 */  sll   $t3, $t4, 2
/* 00BC8C 8000B08C 01EBC021 */  addu  $t8, $t7, $t3
/* 00BC90 8000B090 273996B8 */  addiu $t9, %lo(D_0D0096B8) # addiu $t9, $t9, -0x6948
/* 00BC94 8000B094 03192021 */  addu  $a0, $t8, $t9
/* 00BC98 8000B098 0C026455 */  jal   segmented_to_virtual_dupe_2
/* 00BC9C 8000B09C AFA30034 */   sw    $v1, 0x34($sp)
/* 00BCA0 8000B0A0 8FA30034 */  lw    $v1, 0x34($sp)
/* 00BCA4 8000B0A4 C4520000 */  lwc1  $f18, ($v0)
/* 00BCA8 8000B0A8 E4720000 */  swc1  $f18, ($v1)
.L8000B0AC:
/* 00BCAC 8000B0AC 8FAE002C */  lw    $t6, 0x2c($sp)
/* 00BCB0 8000B0B0 24010002 */  li    $at, 2
/* 00BCB4 8000B0B4 85C20000 */  lh    $v0, ($t6)
/* 00BCB8 8000B0B8 10410004 */  beq   $v0, $at, .L8000B0CC
/* 00BCBC 8000B0BC 2401FFFE */   li    $at, -2
/* 00BCC0 8000B0C0 10410002 */  beq   $v0, $at, .L8000B0CC
/* 00BCC4 8000B0C4 24010003 */   li    $at, 3
/* 00BCC8 8000B0C8 14410003 */  bne   $v0, $at, .L8000B0D8
.L8000B0CC:
/* 00BCCC 8000B0CC 3C01800F */   lui   $at, %hi(D_800ECFC8) # $at, 0x800f
/* 00BCD0 8000B0D0 C424CFC8 */  lwc1  $f4, %lo(D_800ECFC8)($at)
/* 00BCD4 8000B0D4 E4640000 */  swc1  $f4, ($v1)
.L8000B0D8:
/* 00BCD8 8000B0D8 C46A0000 */  lwc1  $f10, ($v1)
/* 00BCDC 8000B0DC 8FAA0040 */  lw    $t2, 0x40($sp)
/* 00BCE0 8000B0E0 3C028016 */  lui   $v0, %hi(D_8016320C) # $v0, 0x8016
/* 00BCE4 8000B0E4 2442320C */  addiu $v0, %lo(D_8016320C) # addiu $v0, $v0, 0x320c
/* 00BCE8 8000B0E8 E44A0000 */  swc1  $f10, ($v0)
/* 00BCEC 8000B0EC 8D4D00BC */  lw    $t5, 0xbc($t2)
/* 00BCF0 8000B0F0 3C01FFDF */  lui   $at, (0xFFDFFFFF >> 16) # lui $at, 0xffdf
/* 00BCF4 8000B0F4 3421FFFF */  ori   $at, (0xFFDFFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 00BCF8 8000B0F8 01A16024 */  and   $t4, $t5, $at
/* 00BCFC 8000B0FC AD4C00BC */  sw    $t4, 0xbc($t2)
/* 00BD00 8000B100 8FAF0038 */  lw    $t7, 0x38($sp)
/* 00BD04 8000B104 C4500000 */  lwc1  $f16, ($v0)
/* 00BD08 8000B108 3C018016 */  lui   $at, %hi(D_80163210)
/* 00BD0C 8000B10C 002F0821 */  addu  $at, $at, $t7
/* 00BD10 8000B110 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00BD14 8000B114 0C004C77 */  jal   check_ai_crossing_distance
/* 00BD18 8000B118 E4303210 */   swc1  $f16, %lo(D_80163210)($at)
/* 00BD1C 8000B11C 3C058016 */  lui   $a1, %hi(D_8016320C) # $a1, 0x8016
/* 00BD20 8000B120 8CA5320C */  lw    $a1, %lo(D_8016320C)($a1)
/* 00BD24 8000B124 8FA400D0 */  lw    $a0, 0xd0($sp)
/* 00BD28 8000B128 0C002109 */  jal   func_80008424
/* 00BD2C 8000B12C 8FA60040 */   lw    $a2, 0x40($sp)
.L8000B130:
/* 00BD30 8000B130 8FBF0014 */  lw    $ra, 0x14($sp)
.L8000B134:
/* 00BD34 8000B134 27BD00D0 */  addiu $sp, $sp, 0xd0
/* 00BD38 8000B138 03E00008 */  jr    $ra
/* 00BD3C 8000B13C 00000000 */   nop
