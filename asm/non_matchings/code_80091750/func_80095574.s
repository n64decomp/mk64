glabel func_80095574
/* 096174 80095574 3C0E8019 */  lui   $t6, %hi(D_8018EE0C) # $t6, 0x8019
/* 096178 80095578 81CEEE0C */  lb    $t6, %lo(D_8018EE0C)($t6)
/* 09617C 8009557C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 096180 80095580 AFBF0014 */  sw    $ra, 0x14($sp)
/* 096184 80095584 29C10003 */  slti  $at, $t6, 3
/* 096188 80095588 14200004 */  bnez  $at, .L8009559C
/* 09618C 8009558C 3C0F8019 */   lui   $t7, %hi(D_8018E7B0) # $t7, 0x8019
/* 096190 80095590 81EFE7B0 */  lb    $t7, %lo(D_8018E7B0)($t7)
/* 096194 80095594 11E00003 */  beqz  $t7, .L800955A4
/* 096198 80095598 00000000 */   nop   
.L8009559C:
/* 09619C 8009559C 0C02A08C */  jal   func_800A8230
/* 0961A0 800955A0 00000000 */   nop   
.L800955A4:
/* 0961A4 800955A4 3C028019 */  lui   $v0, %hi(gDebugMenuSelection) # $v0, 0x8019
/* 0961A8 800955A8 8042EDEF */  lb    $v0, %lo(gDebugMenuSelection)($v0)
/* 0961AC 800955AC 28410002 */  slti  $at, $v0, 2
/* 0961B0 800955B0 5420009F */  bnel  $at, $zero, .L80095830
/* 0961B4 800955B4 24010001 */   li    $at, 1
/* 0961B8 800955B8 0C015DC4 */  jal   load_debug_font
/* 0961BC 800955BC 00000000 */   nop   
/* 0961C0 800955C0 3C06800F */  lui   $a2, %hi(D_800F0B58) # $a2, 0x800f
/* 0961C4 800955C4 24C60B58 */  addiu $a2, %lo(D_800F0B58) # addiu $a2, $a2, 0xb58
/* 0961C8 800955C8 24040050 */  li    $a0, 80
/* 0961CC 800955CC 0C015DE9 */  jal   debug_print_str2
/* 0961D0 800955D0 24050064 */   li    $a1, 100
/* 0961D4 800955D4 3C188019 */  lui   $t8, %hi(gDebugMenuSelection) # $t8, 0x8019
/* 0961D8 800955D8 8318EDEF */  lb    $t8, %lo(gDebugMenuSelection)($t8)
/* 0961DC 800955DC 2719FFFE */  addiu $t9, $t8, -2
/* 0961E0 800955E0 2F210006 */  sltiu $at, $t9, 6
/* 0961E4 800955E4 1020002E */  beqz  $at, .L800956A0
/* 0961E8 800955E8 0019C880 */   sll   $t9, $t9, 2
/* 0961EC 800955EC 3C01800F */  lui   $at, %hi(jpt_800F1048)
/* 0961F0 800955F0 00390821 */  addu  $at, $at, $t9
/* 0961F4 800955F4 8C391048 */  lw    $t9, %lo(jpt_800F1048)($at)
/* 0961F8 800955F8 03200008 */  jr    $t9
/* 0961FC 800955FC 00000000 */   nop   
glabel L80095600
/* 096200 80095600 3C06800F */  lui   $a2, %hi(D_800F0B64) # $a2, 0x800f
/* 096204 80095604 24C60B64 */  addiu $a2, %lo(D_800F0B64) # addiu $a2, $a2, 0xb64
/* 096208 80095608 24040046 */  li    $a0, 70
/* 09620C 8009560C 0C015DE9 */  jal   debug_print_str2
/* 096210 80095610 24050064 */   li    $a1, 100
/* 096214 80095614 10000022 */  b     .L800956A0
/* 096218 80095618 00000000 */   nop   
glabel L8009561C
/* 09621C 8009561C 3C06800F */  lui   $a2, %hi(D_800F0B68) # $a2, 0x800f
/* 096220 80095620 24C60B68 */  addiu $a2, %lo(D_800F0B68) # addiu $a2, $a2, 0xb68
/* 096224 80095624 24040046 */  li    $a0, 70
/* 096228 80095628 0C015DE9 */  jal   debug_print_str2
/* 09622C 8009562C 2405006E */   li    $a1, 110
/* 096230 80095630 1000001B */  b     .L800956A0
/* 096234 80095634 00000000 */   nop   
glabel L80095638
/* 096238 80095638 3C06800F */  lui   $a2, %hi(D_800F0B6C) # $a2, 0x800f
/* 09623C 8009563C 24C60B6C */  addiu $a2, %lo(D_800F0B6C) # addiu $a2, $a2, 0xb6c
/* 096240 80095640 24040046 */  li    $a0, 70
/* 096244 80095644 0C015DE9 */  jal   debug_print_str2
/* 096248 80095648 24050078 */   li    $a1, 120
/* 09624C 8009564C 10000014 */  b     .L800956A0
/* 096250 80095650 00000000 */   nop   
glabel L80095654
/* 096254 80095654 3C06800F */  lui   $a2, %hi(D_800F0B70) # $a2, 0x800f
/* 096258 80095658 24C60B70 */  addiu $a2, %lo(D_800F0B70) # addiu $a2, $a2, 0xb70
/* 09625C 8009565C 24040046 */  li    $a0, 70
/* 096260 80095660 0C015DE9 */  jal   debug_print_str2
/* 096264 80095664 24050082 */   li    $a1, 130
/* 096268 80095668 1000000D */  b     .L800956A0
/* 09626C 8009566C 00000000 */   nop   
glabel L80095670
/* 096270 80095670 3C06800F */  lui   $a2, %hi(D_800F0B74) # $a2, 0x800f
/* 096274 80095674 24C60B74 */  addiu $a2, %lo(D_800F0B74) # addiu $a2, $a2, 0xb74
/* 096278 80095678 24040046 */  li    $a0, 70
/* 09627C 8009567C 0C015DE9 */  jal   debug_print_str2
/* 096280 80095680 2405008C */   li    $a1, 140
/* 096284 80095684 10000006 */  b     .L800956A0
/* 096288 80095688 00000000 */   nop   
glabel L8009568C
/* 09628C 8009568C 3C06800F */  lui   $a2, %hi(D_800F0B78) # $a2, 0x800f
/* 096290 80095690 24C60B78 */  addiu $a2, %lo(D_800F0B78) # addiu $a2, $a2, 0xb78
/* 096294 80095694 24040046 */  li    $a0, 70
/* 096298 80095698 0C015DE9 */  jal   debug_print_str2
/* 09629C 8009569C 24050096 */   li    $a1, 150
.L800956A0:
/* 0962A0 800956A0 3C08800E */  lui   $t0, %hi(gEnableDebugMode) # $t0, 0x800e
/* 0962A4 800956A4 9508C520 */  lhu   $t0, %lo(gEnableDebugMode)($t0)
/* 0962A8 800956A8 11000007 */  beqz  $t0, .L800956C8
/* 0962AC 800956AC 3C06800F */   lui   $a2, %hi(D_800F0B7C) # $a2, 0x800f
/* 0962B0 800956B0 24C60B7C */  addiu $a2, %lo(D_800F0B7C) # addiu $a2, $a2, 0xb7c
/* 0962B4 800956B4 240400AA */  li    $a0, 170
/* 0962B8 800956B8 0C015DE9 */  jal   debug_print_str2
/* 0962BC 800956BC 24050064 */   li    $a1, 100
/* 0962C0 800956C0 10000006 */  b     .L800956DC
/* 0962C4 800956C4 00000000 */   nop   
.L800956C8:
/* 0962C8 800956C8 3C06800F */  lui   $a2, %hi(D_800F0B80) # $a2, 0x800f
/* 0962CC 800956CC 24C60B80 */  addiu $a2, %lo(D_800F0B80) # addiu $a2, $a2, 0xb80
/* 0962D0 800956D0 240400AA */  li    $a0, 170
/* 0962D4 800956D4 0C015DE9 */  jal   debug_print_str2
/* 0962D8 800956D8 24050064 */   li    $a1, 100
.L800956DC:
/* 0962DC 800956DC 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 0962E0 800956E0 2442C5A0 */  addiu $v0, %lo(gCurrentCourseId) # addiu $v0, $v0, -0x3a60
/* 0962E4 800956E4 84470000 */  lh    $a3, ($v0)
/* 0962E8 800956E8 24040050 */  li    $a0, 80
/* 0962EC 800956EC 2405006E */  li    $a1, 110
/* 0962F0 800956F0 28E10014 */  slti  $at, $a3, 0x14
/* 0962F4 800956F4 10200003 */  beqz  $at, .L80095704
/* 0962F8 800956F8 3C06800F */   lui   $a2, %hi(D_800F0B84) # $a2, 0x800f
/* 0962FC 800956FC 04E10003 */  bgez  $a3, .L8009570C
/* 096300 80095700 00000000 */   nop   
.L80095704:
/* 096304 80095704 A4400000 */  sh    $zero, ($v0)
/* 096308 80095708 84470000 */  lh    $a3, ($v0)
.L8009570C:
/* 09630C 8009570C 0C015DF4 */  jal   print_str_num
/* 096310 80095710 24C60B84 */   addiu $a2, %lo(D_800F0B84) # addiu $a2, $a2, 0xb84
/* 096314 80095714 3C02800E */  lui   $v0, %hi(gCurrentCourseId) # $v0, 0x800e
/* 096318 80095718 2442C5A0 */  addiu $v0, %lo(gCurrentCourseId) # addiu $v0, $v0, -0x3a60
/* 09631C 8009571C 84470000 */  lh    $a3, ($v0)
/* 096320 80095720 2405006E */  li    $a1, 110
/* 096324 80095724 3C06800E */  lui   $a2, %hi(gDebugCourseNames)
/* 096328 80095728 28E1000A */  slti  $at, $a3, 0xa
/* 09632C 8009572C 10200003 */  beqz  $at, .L8009573C
/* 096330 80095730 00074880 */   sll   $t1, $a3, 2
/* 096334 80095734 10000002 */  b     .L80095740
/* 096338 80095738 00001025 */   move  $v0, $zero
.L8009573C:
/* 09633C 8009573C 24020008 */  li    $v0, 8
.L80095740:
/* 096340 80095740 00C93021 */  addu  $a2, $a2, $t1
/* 096344 80095744 8CC67614 */  lw    $a2, %lo(gDebugCourseNames)($a2)
/* 096348 80095748 0C015DE9 */  jal   debug_print_str2
/* 09634C 8009574C 244400B9 */   addiu $a0, $v0, 0xb9
/* 096350 80095750 3C06800F */  lui   $a2, %hi(D_800F0B90) # $a2, 0x800f
/* 096354 80095754 24C60B90 */  addiu $a2, %lo(D_800F0B90) # addiu $a2, $a2, 0xb90
/* 096358 80095758 24040050 */  li    $a0, 80
/* 09635C 8009575C 0C015DE9 */  jal   debug_print_str2
/* 096360 80095760 24050078 */   li    $a1, 120
/* 096364 80095764 3C0A8019 */  lui   $t2, %hi(D_8018EDF1) # $t2, 0x8019
/* 096368 80095768 814AEDF1 */  lb    $t2, %lo(D_8018EDF1)($t2)
/* 09636C 8009576C 3C06800E */  lui   $a2, %hi(gDebugScreenModeNames)
/* 096370 80095770 240400AA */  li    $a0, 170
/* 096374 80095774 000A5880 */  sll   $t3, $t2, 2
/* 096378 80095778 00CB3021 */  addu  $a2, $a2, $t3
/* 09637C 8009577C 8CC676EC */  lw    $a2, %lo(gDebugScreenModeNames)($a2)
/* 096380 80095780 0C015DE9 */  jal   debug_print_str2
/* 096384 80095784 24050078 */   li    $a1, 120
/* 096388 80095788 3C06800F */  lui   $a2, %hi(D_800F0B9C) # $a2, 0x800f
/* 09638C 8009578C 24C60B9C */  addiu $a2, %lo(D_800F0B9C) # addiu $a2, $a2, 0xb9c
/* 096390 80095790 24040050 */  li    $a0, 80
/* 096394 80095794 0C015DE9 */  jal   debug_print_str2
/* 096398 80095798 24050082 */   li    $a1, 130
/* 09639C 8009579C 3C0C800F */  lui   $t4, %hi(D_800E86A8) # $t4, 0x800f
/* 0963A0 800957A0 818C86A8 */  lb    $t4, %lo(D_800E86A8)($t4)
/* 0963A4 800957A4 3C06800E */  lui   $a2, %hi(gDebugCharacterNames)
/* 0963A8 800957A8 240400AA */  li    $a0, 170
/* 0963AC 800957AC 000C6880 */  sll   $t5, $t4, 2
/* 0963B0 800957B0 00CD3021 */  addu  $a2, $a2, $t5
/* 0963B4 800957B4 8CC67688 */  lw    $a2, %lo(gDebugCharacterNames)($a2)
/* 0963B8 800957B8 0C015DE9 */  jal   debug_print_str2
/* 0963BC 800957BC 24050082 */   li    $a1, 130
/* 0963C0 800957C0 3C06800F */  lui   $a2, %hi(D_800F0BA4) # $a2, 0x800f
/* 0963C4 800957C4 24C60BA4 */  addiu $a2, %lo(D_800F0BA4) # addiu $a2, $a2, 0xba4
/* 0963C8 800957C8 24040050 */  li    $a0, 80
/* 0963CC 800957CC 0C015DE9 */  jal   debug_print_str2
/* 0963D0 800957D0 2405008C */   li    $a1, 140
/* 0963D4 800957D4 3C0E8019 */  lui   $t6, %hi(gSoundMode) # $t6, 0x8019
/* 0963D8 800957D8 91CEEDF2 */  lbu   $t6, %lo(gSoundMode)($t6)
/* 0963DC 800957DC 3C06800E */  lui   $a2, %hi(gDebugSoundModeNames)
/* 0963E0 800957E0 240400AA */  li    $a0, 170
/* 0963E4 800957E4 000E7880 */  sll   $t7, $t6, 2
/* 0963E8 800957E8 00CF3021 */  addu  $a2, $a2, $t7
/* 0963EC 800957EC 8CC67700 */  lw    $a2, %lo(gDebugSoundModeNames)($a2)
/* 0963F0 800957F0 0C015DE9 */  jal   debug_print_str2
/* 0963F4 800957F4 2405008C */   li    $a1, 140
/* 0963F8 800957F8 3C188019 */  lui   $t8, %hi(gDebugMenuSelection) # $t8, 0x8019
/* 0963FC 800957FC 8318EDEF */  lb    $t8, %lo(gDebugMenuSelection)($t8)
/* 096400 80095800 24010007 */  li    $at, 7
/* 096404 80095804 24040050 */  li    $a0, 80
/* 096408 80095808 17010004 */  bne   $t8, $at, .L8009581C
/* 09640C 8009580C 24050096 */   li    $a1, 150
/* 096410 80095810 3C06800F */  lui   $a2, %hi(D_800F0BB0) # $a2, 0x800f
/* 096414 80095814 0C015DE9 */  jal   debug_print_str2
/* 096418 80095818 24C60BB0 */   addiu $a2, %lo(D_800F0BB0) # addiu $a2, $a2, 0xbb0
.L8009581C:
/* 09641C 8009581C 0C015DDE */  jal   func_80057778
/* 096420 80095820 00000000 */   nop   
/* 096424 80095824 3C028019 */  lui   $v0, %hi(gDebugMenuSelection) # $v0, 0x8019
/* 096428 80095828 8042EDEF */  lb    $v0, %lo(gDebugMenuSelection)($v0)
/* 09642C 8009582C 24010001 */  li    $at, 1
.L80095830:
/* 096430 80095830 14410007 */  bne   $v0, $at, .L80095850
/* 096434 80095834 3C038019 */   lui   $v1, %hi(gStartMenuCounterForDemos) # 0x8019
/* 096438 80095838 3C038019 */  lui   $v1, %hi(gStartMenuCounterForDemos) # $v1, 0x8019
/* 09643C 8009583C 2463EE00 */  addiu $v1, %lo(gStartMenuCounterForDemos) # addiu $v1, $v1, -0x1200
/* 096440 80095840 8C790000 */  lw    $t9, ($v1)
/* 096444 80095844 27280001 */  addiu $t0, $t9, 1
/* 096448 80095848 10000004 */  b     .L8009585C
/* 09644C 8009584C AC680000 */   sw    $t0, ($v1)
.L80095850:
/* 096450 80095850 2463EE00 */  addiu $v1, $v1, %lo(gStartMenuCounterForDemos) # -0x1200
/* 096454 80095854 24090003 */  li    $t1, 3
/* 096458 80095858 AC690000 */  sw    $t1, ($v1)
.L8009585C:
/* 09645C 8009585C 8C620000 */  lw    $v0, ($v1)
/* 096460 80095860 24010002 */  li    $at, 2
/* 096464 80095864 3C044900 */  lui   $a0, (0x49009009 >> 16) # lui $a0, 0x4900
/* 096468 80095868 54410006 */  bnel  $v0, $at, .L80095884
/* 09646C 8009586C 2841012D */   slti  $at, $v0, 0x12d
/* 096470 80095870 0C032384 */  jal   play_sound2
/* 096474 80095874 34849009 */   ori   $a0, (0x49009009 & 0xFFFF) # ori $a0, $a0, 0x9009
/* 096478 80095878 3C028019 */  lui   $v0, %hi(gStartMenuCounterForDemos) # $v0, 0x8019
/* 09647C 8009587C 8C42EE00 */  lw    $v0, %lo(gStartMenuCounterForDemos)($v0)
/* 096480 80095880 2841012D */  slti  $at, $v0, 0x12d
.L80095884:
/* 096484 80095884 14200005 */  bnez  $at, .L8009589C
/* 096488 80095888 00000000 */   nop   
/* 09648C 8009588C 0C02788C */  jal   func_8009E230
/* 096490 80095890 00000000 */   nop   
/* 096494 80095894 0C032828 */  jal   func_800CA0A0
/* 096498 80095898 00000000 */   nop   
.L8009589C:
/* 09649C 8009589C 3C048015 */  lui   $a0, %hi(gDisplayListHead) # $a0, 0x8015
/* 0964A0 800958A0 24840298 */  addiu $a0, %lo(gDisplayListHead) # addiu $a0, $a0, 0x298
/* 0964A4 800958A4 8C830000 */  lw    $v1, ($a0)
/* 0964A8 800958A8 3C0C0200 */  lui   $t4, %hi(D_020076E0) # $t4, 0x200
/* 0964AC 800958AC 258C76E0 */  addiu $t4, %lo(D_020076E0) # addiu $t4, $t4, 0x76e0
/* 0964B0 800958B0 246A0008 */  addiu $t2, $v1, 8
/* 0964B4 800958B4 AC8A0000 */  sw    $t2, ($a0)
/* 0964B8 800958B8 3C0B0600 */  lui   $t3, 0x600
/* 0964BC 800958BC AC6B0000 */  sw    $t3, ($v1)
/* 0964C0 800958C0 AC6C0004 */  sw    $t4, 4($v1)
/* 0964C4 800958C4 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0964C8 800958C8 27BD0018 */  addiu $sp, $sp, 0x18
/* 0964CC 800958CC 03E00008 */  jr    $ra
/* 0964D0 800958D0 00000000 */   nop   
