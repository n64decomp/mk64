glabel func_800BAD0C
/* 0BB90C 800BAD0C 27BDFFB8 */  addiu $sp, $sp, -0x48
/* 0BB910 800BAD10 AFB10028 */  sw    $s1, 0x28($sp)
/* 0BB914 800BAD14 AFB00024 */  sw    $s0, 0x24($sp)
/* 0BB918 800BAD18 00A08025 */  move  $s0, $a1
/* 0BB91C 800BAD1C 00808825 */  move  $s1, $a0
/* 0BB920 800BAD20 AFBF002C */  sw    $ra, 0x2c($sp)
/* 0BB924 800BAD24 AFA70054 */  sw    $a3, 0x54($sp)
/* 0BB928 800BAD28 14C00008 */  bnez  $a2, .L800BAD4C
/* 0BB92C 800BAD2C 00005825 */   move  $t3, $zero
/* 0BB930 800BAD30 3C05803B */  lui   $a1, %hi(sSampleDmaListSize1) # $a1, 0x803b
/* 0BB934 800BAD34 8CA56E5C */  lw    $a1, %lo(sSampleDmaListSize1)($a1)
/* 0BB938 800BAD38 90E20000 */  lbu   $v0, ($a3)
/* 0BB93C 800BAD3C 00001825 */  move  $v1, $zero
/* 0BB940 800BAD40 0045082B */  sltu  $at, $v0, $a1
/* 0BB944 800BAD44 14200055 */  bnez  $at, .L800BAE9C
/* 0BB948 800BAD48 00026900 */   sll   $t5, $v0, 4
.L800BAD4C:
/* 0BB94C 800BAD4C 3C03803B */  lui   $v1, %hi(sSampleDmaListSize1) # $v1, 0x803b
/* 0BB950 800BAD50 3C05803B */  lui   $a1, %hi(gSampleDmaNumListItems) # $a1, 0x803b
/* 0BB954 800BAD54 8CA56E58 */  lw    $a1, %lo(gSampleDmaNumListItems)($a1)
/* 0BB958 800BAD58 8C636E5C */  lw    $v1, %lo(sSampleDmaListSize1)($v1)
/* 0BB95C 800BAD5C 3C18803B */  lui   $t8, %hi(sSampleDmas) # $t8, 0x803b
/* 0BB960 800BAD60 27186758 */  addiu $t8, %lo(sSampleDmas) # addiu $t8, $t8, 0x6758
/* 0BB964 800BAD64 0065082B */  sltu  $at, $v1, $a1
/* 0BB968 800BAD68 10200034 */  beqz  $at, .L800BAE3C
/* 0BB96C 800BAD6C 00037900 */   sll   $t7, $v1, 4
/* 0BB970 800BAD70 01F82021 */  addu  $a0, $t7, $t8
.L800BAD74:
/* 0BB974 800BAD74 8C990004 */  lw    $t9, 4($a0)
/* 0BB978 800BAD78 00804025 */  move  $t0, $a0
/* 0BB97C 800BAD7C 02391023 */  subu  $v0, $s1, $t9
/* 0BB980 800BAD80 0442002A */  bltzl $v0, .L800BAE2C
/* 0BB984 800BAD84 24630001 */   addiu $v1, $v1, 1
/* 0BB988 800BAD88 948D000A */  lhu   $t5, 0xa($a0)
/* 0BB98C 800BAD8C 01B07023 */  subu  $t6, $t5, $s0
/* 0BB990 800BAD90 01C2082B */  sltu  $at, $t6, $v0
/* 0BB994 800BAD94 54200025 */  bnel  $at, $zero, .L800BAE2C
/* 0BB998 800BAD98 24630001 */   addiu $v1, $v1, 1
/* 0BB99C 800BAD9C 908F000E */  lbu   $t7, 0xe($a0)
/* 0BB9A0 800BADA0 3C09803B */  lui   $t1, %hi(sSampleDmaReuseQueueTail2) # $t1, 0x803b
/* 0BB9A4 800BADA4 25297069 */  addiu $t1, %lo(sSampleDmaReuseQueueTail2) # addiu $t1, $t1, 0x7069
/* 0BB9A8 800BADA8 15E00016 */  bnez  $t7, .L800BAE04
/* 0BB9AC 800BADAC 3C18803B */   lui   $t8, %hi(sSampleDmaReuseQueueHead2) # $t8, 0x803b
/* 0BB9B0 800BADB0 91250000 */  lbu   $a1, ($t1)
/* 0BB9B4 800BADB4 9318706B */  lbu   $t8, %lo(sSampleDmaReuseQueueHead2)($t8)
/* 0BB9B8 800BADB8 53050013 */  beql  $t8, $a1, .L800BAE08
/* 0BB9BC 800BADBC 8FB80054 */   lw    $t8, 0x54($sp)
/* 0BB9C0 800BADC0 9087000D */  lbu   $a3, 0xd($a0)
/* 0BB9C4 800BADC4 3C0C803B */  lui   $t4, %hi(sSampleDmaReuseQueue2) # $t4, 0x803b
/* 0BB9C8 800BADC8 258C6F68 */  addiu $t4, %lo(sSampleDmaReuseQueue2) # addiu $t4, $t4, 0x6f68
/* 0BB9CC 800BADCC 10A7000B */  beq   $a1, $a3, .L800BADFC
/* 0BB9D0 800BADD0 01851021 */   addu  $v0, $t4, $a1
/* 0BB9D4 800BADD4 90590000 */  lbu   $t9, ($v0)
/* 0BB9D8 800BADD8 01876821 */  addu  $t5, $t4, $a3
/* 0BB9DC 800BADDC 3C06803B */  lui   $a2, %hi(sSampleDmas) # $a2, 0x803b
/* 0BB9E0 800BADE0 A1B90000 */  sb    $t9, ($t5)
/* 0BB9E4 800BADE4 904F0000 */  lbu   $t7, ($v0)
/* 0BB9E8 800BADE8 908E000D */  lbu   $t6, 0xd($a0)
/* 0BB9EC 800BADEC 24C66758 */  addiu $a2, %lo(sSampleDmas) # addiu $a2, $a2, 0x6758
/* 0BB9F0 800BADF0 000FC100 */  sll   $t8, $t7, 4
/* 0BB9F4 800BADF4 00D8C821 */  addu  $t9, $a2, $t8
/* 0BB9F8 800BADF8 A32E000D */  sb    $t6, 0xd($t9)
.L800BADFC:
/* 0BB9FC 800BADFC 24AD0001 */  addiu $t5, $a1, 1
/* 0BBA00 800BAE00 A12D0000 */  sb    $t5, ($t1)
.L800BAE04:
/* 0BBA04 800BAE04 8FB80054 */  lw    $t8, 0x54($sp)
.L800BAE08:
/* 0BBA08 800BAE08 240F003C */  li    $t7, 60
/* 0BBA0C 800BAE0C A08F000E */  sb    $t7, 0xe($a0)
/* 0BBA10 800BAE10 A3030000 */  sb    $v1, ($t8)
/* 0BBA14 800BAE14 8C8E0000 */  lw    $t6, ($a0)
/* 0BBA18 800BAE18 8C8D0004 */  lw    $t5, 4($a0)
/* 0BBA1C 800BAE1C 01D1C821 */  addu  $t9, $t6, $s1
/* 0BBA20 800BAE20 1000007E */  b     .L800BB01C
/* 0BBA24 800BAE24 032D1023 */   subu  $v0, $t9, $t5
/* 0BBA28 800BAE28 24630001 */  addiu $v1, $v1, 1
.L800BAE2C:
/* 0BBA2C 800BAE2C 0065082B */  sltu  $at, $v1, $a1
/* 0BBA30 800BAE30 1420FFD0 */  bnez  $at, .L800BAD74
/* 0BBA34 800BAE34 24840010 */   addiu $a0, $a0, 0x10
/* 0BBA38 800BAE38 AFA80040 */  sw    $t0, 0x40($sp)
.L800BAE3C:
/* 0BBA3C 800BAE3C 3C09803B */  lui   $t1, %hi(sSampleDmaReuseQueueTail2) # $t1, 0x803b
/* 0BBA40 800BAE40 25297069 */  addiu $t1, %lo(sSampleDmaReuseQueueTail2) # addiu $t1, $t1, 0x7069
/* 0BBA44 800BAE44 3C0F803B */  lui   $t7, %hi(sSampleDmaReuseQueueHead2) # $t7, 0x803b
/* 0BBA48 800BAE48 91EF706B */  lbu   $t7, %lo(sSampleDmaReuseQueueHead2)($t7)
/* 0BBA4C 800BAE4C 91250000 */  lbu   $a1, ($t1)
/* 0BBA50 800BAE50 8FA80040 */  lw    $t0, 0x40($sp)
/* 0BBA54 800BAE54 11E5000E */  beq   $t7, $a1, .L800BAE90
/* 0BBA58 800BAE58 00000000 */   nop   
/* 0BBA5C 800BAE5C 10C0000C */  beqz  $a2, .L800BAE90
/* 0BBA60 800BAE60 3C0C803B */   lui   $t4, %hi(sSampleDmaReuseQueue2) # $t4, 0x803b
/* 0BBA64 800BAE64 258C6F68 */  addiu $t4, %lo(sSampleDmaReuseQueue2) # addiu $t4, $t4, 0x6f68
/* 0BBA68 800BAE68 0185C021 */  addu  $t8, $t4, $a1
/* 0BBA6C 800BAE6C 930A0000 */  lbu   $t2, ($t8)
/* 0BBA70 800BAE70 3C06803B */  lui   $a2, %hi(sSampleDmas) # $a2, 0x803b
/* 0BBA74 800BAE74 24C66758 */  addiu $a2, %lo(sSampleDmas) # addiu $a2, $a2, 0x6758
/* 0BBA78 800BAE78 24AE0001 */  addiu $t6, $a1, 1
/* 0BBA7C 800BAE7C 000AC900 */  sll   $t9, $t2, 4
/* 0BBA80 800BAE80 A12E0000 */  sb    $t6, ($t1)
/* 0BBA84 800BAE84 00D94021 */  addu  $t0, $a2, $t9
/* 0BBA88 800BAE88 240B0001 */  li    $t3, 1
/* 0BBA8C 800BAE8C AFAA0030 */  sw    $t2, 0x30($sp)
.L800BAE90:
/* 0BBA90 800BAE90 3C06803B */  lui   $a2, %hi(sSampleDmas) # $a2, 0x803b
/* 0BBA94 800BAE94 1000002F */  b     .L800BAF54
/* 0BBA98 800BAE98 24C66758 */   addiu $a2, %lo(sSampleDmas) # addiu $a2, $a2, 0x6758
.L800BAE9C:
/* 0BBA9C 800BAE9C 3C06803B */  lui   $a2, %hi(sSampleDmas) # $a2, 0x803b
/* 0BBAA0 800BAEA0 24C66758 */  addiu $a2, %lo(sSampleDmas) # addiu $a2, $a2, 0x6758
/* 0BBAA4 800BAEA4 10A0002B */  beqz  $a1, .L800BAF54
/* 0BBAA8 800BAEA8 00CD4021 */   addu  $t0, $a2, $t5
.L800BAEAC:
/* 0BBAAC 800BAEAC 8D040004 */  lw    $a0, 4($t0)
/* 0BBAB0 800BAEB0 0003C900 */  sll   $t9, $v1, 4
/* 0BBAB4 800BAEB4 24630001 */  addiu $v1, $v1, 1
/* 0BBAB8 800BAEB8 02241023 */  subu  $v0, $s1, $a0
/* 0BBABC 800BAEBC 04420023 */  bltzl $v0, .L800BAF4C
/* 0BBAC0 800BAEC0 0065082B */   sltu  $at, $v1, $a1
/* 0BBAC4 800BAEC4 950F000A */  lhu   $t7, 0xa($t0)
/* 0BBAC8 800BAEC8 01F0C023 */  subu  $t8, $t7, $s0
/* 0BBACC 800BAECC 0302082B */  sltu  $at, $t8, $v0
/* 0BBAD0 800BAED0 5420001E */  bnel  $at, $zero, .L800BAF4C
/* 0BBAD4 800BAED4 0065082B */   sltu  $at, $v1, $a1
/* 0BBAD8 800BAED8 910E000E */  lbu   $t6, 0xe($t0)
/* 0BBADC 800BAEDC 3C05803B */  lui   $a1, %hi(sSampleDmaReuseQueueTail1) # $a1, 0x803b
/* 0BBAE0 800BAEE0 24A57068 */  addiu $a1, %lo(sSampleDmaReuseQueueTail1) # addiu $a1, $a1, 0x7068
/* 0BBAE4 800BAEE4 55C00013 */  bnel  $t6, $zero, .L800BAF34
/* 0BBAE8 800BAEE8 8D0E0000 */   lw    $t6, ($t0)
/* 0BBAEC 800BAEEC 90A30000 */  lbu   $v1, ($a1)
/* 0BBAF0 800BAEF0 9104000D */  lbu   $a0, 0xd($t0)
/* 0BBAF4 800BAEF4 3C07803B */  lui   $a3, %hi(sSampleDmaReuseQueue1) # $a3, 0x803b
/* 0BBAF8 800BAEF8 24E76E68 */  addiu $a3, %lo(sSampleDmaReuseQueue1) # addiu $a3, $a3, 0x6e68
/* 0BBAFC 800BAEFC 10640009 */  beq   $v1, $a0, .L800BAF24
/* 0BBB00 800BAF00 00E31021 */   addu  $v0, $a3, $v1
/* 0BBB04 800BAF04 90590000 */  lbu   $t9, ($v0)
/* 0BBB08 800BAF08 00E46821 */  addu  $t5, $a3, $a0
/* 0BBB0C 800BAF0C A1B90000 */  sb    $t9, ($t5)
/* 0BBB10 800BAF10 90580000 */  lbu   $t8, ($v0)
/* 0BBB14 800BAF14 910F000D */  lbu   $t7, 0xd($t0)
/* 0BBB18 800BAF18 00187100 */  sll   $t6, $t8, 4
/* 0BBB1C 800BAF1C 00CEC821 */  addu  $t9, $a2, $t6
/* 0BBB20 800BAF20 A32F000D */  sb    $t7, 0xd($t9)
.L800BAF24:
/* 0BBB24 800BAF24 246D0001 */  addiu $t5, $v1, 1
/* 0BBB28 800BAF28 A0AD0000 */  sb    $t5, ($a1)
/* 0BBB2C 800BAF2C 8D040004 */  lw    $a0, 4($t0)
/* 0BBB30 800BAF30 8D0E0000 */  lw    $t6, ($t0)
.L800BAF34:
/* 0BBB34 800BAF34 24180002 */  li    $t8, 2
/* 0BBB38 800BAF38 A118000E */  sb    $t8, 0xe($t0)
/* 0BBB3C 800BAF3C 01D17821 */  addu  $t7, $t6, $s1
/* 0BBB40 800BAF40 10000036 */  b     .L800BB01C
/* 0BBB44 800BAF44 01E41023 */   subu  $v0, $t7, $a0
/* 0BBB48 800BAF48 0065082B */  sltu  $at, $v1, $a1
.L800BAF4C:
/* 0BBB4C 800BAF4C 1420FFD7 */  bnez  $at, .L800BAEAC
/* 0BBB50 800BAF50 00D94021 */   addu  $t0, $a2, $t9
.L800BAF54:
/* 0BBB54 800BAF54 1560000C */  bnez  $t3, .L800BAF88
/* 0BBB58 800BAF58 8FAA0030 */   lw    $t2, 0x30($sp)
/* 0BBB5C 800BAF5C 3C05803B */  lui   $a1, %hi(sSampleDmaReuseQueueTail1) # $a1, 0x803b
/* 0BBB60 800BAF60 24A57068 */  addiu $a1, %lo(sSampleDmaReuseQueueTail1) # addiu $a1, $a1, 0x7068
/* 0BBB64 800BAF64 90A30000 */  lbu   $v1, ($a1)
/* 0BBB68 800BAF68 3C07803B */  lui   $a3, %hi(sSampleDmaReuseQueue1) # $a3, 0x803b
/* 0BBB6C 800BAF6C 24E76E68 */  addiu $a3, %lo(sSampleDmaReuseQueue1) # addiu $a3, $a3, 0x6e68
/* 0BBB70 800BAF70 00E36821 */  addu  $t5, $a3, $v1
/* 0BBB74 800BAF74 91AA0000 */  lbu   $t2, ($t5)
/* 0BBB78 800BAF78 24780001 */  addiu $t8, $v1, 1
/* 0BBB7C 800BAF7C A0B80000 */  sb    $t8, ($a1)
/* 0BBB80 800BAF80 000A7100 */  sll   $t6, $t2, 4
/* 0BBB84 800BAF84 00CE4021 */  addu  $t0, $a2, $t6
.L800BAF88:
/* 0BBB88 800BAF88 9502000A */  lhu   $v0, 0xa($t0)
/* 0BBB8C 800BAF8C 2401FFF0 */  li    $at, -16
/* 0BBB90 800BAF90 3C09803B */  lui   $t1, %hi(gCurrAudioFrameDmaCount) # $t1, 0x803b
/* 0BBB94 800BAF94 240F0002 */  li    $t7, 2
/* 0BBB98 800BAF98 02218024 */  and   $s0, $s1, $at
/* 0BBB9C 800BAF9C 252970BC */  addiu $t1, %lo(gCurrAudioFrameDmaCount) # addiu $t1, $t1, 0x70bc
/* 0BBBA0 800BAFA0 A10F000E */  sb    $t7, 0xe($t0)
/* 0BBBA4 800BAFA4 AD100004 */  sw    $s0, 4($t0)
/* 0BBBA8 800BAFA8 A5020008 */  sh    $v0, 8($t0)
/* 0BBBAC 800BAFAC 8D230000 */  lw    $v1, ($t1)
/* 0BBBB0 800BAFB0 8D180000 */  lw    $t8, ($t0)
/* 0BBBB4 800BAFB4 3C0D803B */  lui   $t5, %hi(gCurrAudioFrameDmaIoMesgBufs) # $t5, 0x803b
/* 0BBBB8 800BAFB8 0003C880 */  sll   $t9, $v1, 2
/* 0BBBBC 800BAFBC 3C0E803B */  lui   $t6, %hi(gCurrAudioFrameDmaQueue) # $t6, 0x803b
/* 0BBBC0 800BAFC0 0323C823 */  subu  $t9, $t9, $v1
/* 0BBBC4 800BAFC4 0019C8C0 */  sll   $t9, $t9, 3
/* 0BBBC8 800BAFC8 25CE6008 */  addiu $t6, %lo(gCurrAudioFrameDmaQueue) # addiu $t6, $t6, 0x6008
/* 0BBBCC 800BAFCC 25AD6120 */  addiu $t5, %lo(gCurrAudioFrameDmaIoMesgBufs) # addiu $t5, $t5, 0x6120
/* 0BBBD0 800BAFD0 246F0001 */  addiu $t7, $v1, 1
/* 0BBBD4 800BAFD4 AD2F0000 */  sw    $t7, ($t1)
/* 0BBBD8 800BAFD8 032D2021 */  addu  $a0, $t9, $t5
/* 0BBBDC 800BAFDC AFAE0018 */  sw    $t6, 0x18($sp)
/* 0BBBE0 800BAFE0 AFAA0030 */  sw    $t2, 0x30($sp)
/* 0BBBE4 800BAFE4 AFA80040 */  sw    $t0, 0x40($sp)
/* 0BBBE8 800BAFE8 02003825 */  move  $a3, $s0
/* 0BBBEC 800BAFEC 00002825 */  move  $a1, $zero
/* 0BBBF0 800BAFF0 00003025 */  move  $a2, $zero
/* 0BBBF4 800BAFF4 AFA20014 */  sw    $v0, 0x14($sp)
/* 0BBBF8 800BAFF8 0C03370C */  jal   osPiStartDma
/* 0BBBFC 800BAFFC AFB80010 */   sw    $t8, 0x10($sp)
/* 0BBC00 800BB000 8FAA0030 */  lw    $t2, 0x30($sp)
/* 0BBC04 800BB004 8FB90054 */  lw    $t9, 0x54($sp)
/* 0BBC08 800BB008 8FA80040 */  lw    $t0, 0x40($sp)
/* 0BBC0C 800BB00C 02306823 */  subu  $t5, $s1, $s0
/* 0BBC10 800BB010 A32A0000 */  sb    $t2, ($t9)
/* 0BBC14 800BB014 8D180000 */  lw    $t8, ($t0)
/* 0BBC18 800BB018 01B81021 */  addu  $v0, $t5, $t8
.L800BB01C:
/* 0BBC1C 800BB01C 8FBF002C */  lw    $ra, 0x2c($sp)
/* 0BBC20 800BB020 8FB00024 */  lw    $s0, 0x24($sp)
/* 0BBC24 800BB024 8FB10028 */  lw    $s1, 0x28($sp)
/* 0BBC28 800BB028 03E00008 */  jr    $ra
/* 0BBC2C 800BB02C 27BD0048 */   addiu $sp, $sp, 0x48
