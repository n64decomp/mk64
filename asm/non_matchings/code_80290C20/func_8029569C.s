glabel func_8029569C
/* 0FECAC 8029569C 3C0E800E */  lui   $t6, %hi(gCurrentCourseId) # $t6, 0x800e
/* 0FECB0 802956A0 95CEC5A0 */  lhu   $t6, %lo(gCurrentCourseId)($t6)
/* 0FECB4 802956A4 2DC10014 */  sltiu $at, $t6, 0x14
/* 0FECB8 802956A8 102000E1 */  beqz  $at, .L80295A30
/* 0FECBC 802956AC 000E7080 */   sll   $t6, $t6, 2
/* 0FECC0 802956B0 3C01802C */  lui   $at, %hi(D_802B9404)
/* 0FECC4 802956B4 002E0821 */  addu  $at, $at, $t6
/* 0FECC8 802956B8 8C2E9404 */  lw    $t6, %lo(D_802B9404)($at)
/* 0FECCC 802956BC 01C00008 */  jr    $t6
/* 0FECD0 802956C0 00000000 */   nop   
glabel L802956C4
/* 0FECD4 802956C4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FECD8 802956C8 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FECDC 802956CC 8C620000 */  lw    $v0, ($v1)
/* 0FECE0 802956D0 3C190601 */  lui   $t9, %hi(D_06009348) # $t9, 0x601
/* 0FECE4 802956D4 27399348 */  addiu $t9, %lo(D_06009348) # addiu $t9, $t9, -0x6cb8
/* 0FECE8 802956D8 244F0008 */  addiu $t7, $v0, 8
/* 0FECEC 802956DC AC6F0000 */  sw    $t7, ($v1)
/* 0FECF0 802956E0 3C180600 */  lui   $t8, 0x600
/* 0FECF4 802956E4 AC580000 */  sw    $t8, ($v0)
/* 0FECF8 802956E8 03E00008 */  jr    $ra
/* 0FECFC 802956EC AC590004 */   sw    $t9, 4($v0)
glabel L802956F0
/* 0FED00 802956F0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FED04 802956F4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FED08 802956F8 8C620000 */  lw    $v0, ($v1)
/* 0FED0C 802956FC 3C0A0600 */  lui   $t2, %hi(D_060071B0) # $t2, 0x600
/* 0FED10 80295700 254A71B0 */  addiu $t2, %lo(D_060071B0) # addiu $t2, $t2, 0x71b0
/* 0FED14 80295704 24480008 */  addiu $t0, $v0, 8
/* 0FED18 80295708 AC680000 */  sw    $t0, ($v1)
/* 0FED1C 8029570C 3C090600 */  lui   $t1, 0x600
/* 0FED20 80295710 AC490000 */  sw    $t1, ($v0)
/* 0FED24 80295714 03E00008 */  jr    $ra
/* 0FED28 80295718 AC4A0004 */   sw    $t2, 4($v0)
glabel L8029571C
/* 0FED2C 8029571C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FED30 80295720 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FED34 80295724 8C620000 */  lw    $v0, ($v1)
/* 0FED38 80295728 3C0D0601 */  lui   $t5, %hi(D_06009148) # $t5, 0x601
/* 0FED3C 8029572C 25AD9148 */  addiu $t5, %lo(D_06009148) # addiu $t5, $t5, -0x6eb8
/* 0FED40 80295730 244B0008 */  addiu $t3, $v0, 8
/* 0FED44 80295734 AC6B0000 */  sw    $t3, ($v1)
/* 0FED48 80295738 3C0C0600 */  lui   $t4, 0x600
/* 0FED4C 8029573C AC4C0000 */  sw    $t4, ($v0)
/* 0FED50 80295740 03E00008 */  jr    $ra
/* 0FED54 80295744 AC4D0004 */   sw    $t5, 4($v0)
glabel L80295748
/* 0FED58 80295748 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FED5C 8029574C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FED60 80295750 8C620000 */  lw    $v0, ($v1)
/* 0FED64 80295754 3C180601 */  lui   $t8, %hi(D_0600B308) # $t8, 0x601
/* 0FED68 80295758 2718B308 */  addiu $t8, %lo(D_0600B308) # addiu $t8, $t8, -0x4cf8
/* 0FED6C 8029575C 244E0008 */  addiu $t6, $v0, 8
/* 0FED70 80295760 AC6E0000 */  sw    $t6, ($v1)
/* 0FED74 80295764 3C0F0600 */  lui   $t7, 0x600
/* 0FED78 80295768 AC4F0000 */  sw    $t7, ($v0)
/* 0FED7C 8029576C 03E00008 */  jr    $ra
/* 0FED80 80295770 AC580004 */   sw    $t8, 4($v0)
glabel L80295774
/* 0FED84 80295774 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FED88 80295778 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FED8C 8029577C 8C620000 */  lw    $v0, ($v1)
/* 0FED90 80295780 3C090602 */  lui   $t1, %hi(D_06018020) # $t1, 0x602
/* 0FED94 80295784 25298020 */  addiu $t1, %lo(D_06018020) # addiu $t1, $t1, -0x7fe0
/* 0FED98 80295788 24590008 */  addiu $t9, $v0, 8
/* 0FED9C 8029578C AC790000 */  sw    $t9, ($v1)
/* 0FEDA0 80295790 3C080600 */  lui   $t0, 0x600
/* 0FEDA4 80295794 AC480000 */  sw    $t0, ($v0)
/* 0FEDA8 80295798 03E00008 */  jr    $ra
/* 0FEDAC 8029579C AC490004 */   sw    $t1, 4($v0)
glabel L802957A0
/* 0FEDB0 802957A0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEDB4 802957A4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEDB8 802957A8 8C620000 */  lw    $v0, ($v1)
/* 0FEDBC 802957AC 3C0C0600 */  lui   $t4, %hi(D_060076A0) # $t4, 0x600
/* 0FEDC0 802957B0 258C76A0 */  addiu $t4, %lo(D_060076A0) # addiu $t4, $t4, 0x76a0
/* 0FEDC4 802957B4 244A0008 */  addiu $t2, $v0, 8
/* 0FEDC8 802957B8 AC6A0000 */  sw    $t2, ($v1)
/* 0FEDCC 802957BC 3C0B0600 */  lui   $t3, 0x600
/* 0FEDD0 802957C0 AC4B0000 */  sw    $t3, ($v0)
/* 0FEDD4 802957C4 03E00008 */  jr    $ra
/* 0FEDD8 802957C8 AC4C0004 */   sw    $t4, 4($v0)
glabel L802957CC
/* 0FEDDC 802957CC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEDE0 802957D0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEDE4 802957D4 8C620000 */  lw    $v0, ($v1)
/* 0FEDE8 802957D8 3C0F0602 */  lui   $t7, %hi(D_06018D68) # $t7, 0x602
/* 0FEDEC 802957DC 25EF8D68 */  addiu $t7, %lo(D_06018D68) # addiu $t7, $t7, -0x7298
/* 0FEDF0 802957E0 244D0008 */  addiu $t5, $v0, 8
/* 0FEDF4 802957E4 AC6D0000 */  sw    $t5, ($v1)
/* 0FEDF8 802957E8 3C0E0600 */  lui   $t6, 0x600
/* 0FEDFC 802957EC AC4E0000 */  sw    $t6, ($v0)
/* 0FEE00 802957F0 03E00008 */  jr    $ra
/* 0FEE04 802957F4 AC4F0004 */   sw    $t7, 4($v0)
glabel L802957F8
/* 0FEE08 802957F8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEE0C 802957FC 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEE10 80295800 8C620000 */  lw    $v0, ($v1)
/* 0FEE14 80295804 3C080601 */  lui   $t0, %hi(D_0600D8E8) # $t0, 0x601
/* 0FEE18 80295808 2508D8E8 */  addiu $t0, %lo(D_0600D8E8) # addiu $t0, $t0, -0x2718
/* 0FEE1C 8029580C 24580008 */  addiu $t8, $v0, 8
/* 0FEE20 80295810 AC780000 */  sw    $t8, ($v1)
/* 0FEE24 80295814 3C190600 */  lui   $t9, 0x600
/* 0FEE28 80295818 AC590000 */  sw    $t9, ($v0)
/* 0FEE2C 8029581C 03E00008 */  jr    $ra
/* 0FEE30 80295820 AC480004 */   sw    $t0, 4($v0)
glabel L80295824
/* 0FEE34 80295824 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEE38 80295828 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEE3C 8029582C 8C620000 */  lw    $v0, ($v1)
/* 0FEE40 80295830 3C0B0601 */  lui   $t3, %hi(D_0600FD40) # $t3, 0x601
/* 0FEE44 80295834 256BFD40 */  addiu $t3, %lo(D_0600FD40) # addiu $t3, $t3, -0x2c0
/* 0FEE48 80295838 24490008 */  addiu $t1, $v0, 8
/* 0FEE4C 8029583C AC690000 */  sw    $t1, ($v1)
/* 0FEE50 80295840 3C0A0600 */  lui   $t2, 0x600
/* 0FEE54 80295844 AC4A0000 */  sw    $t2, ($v0)
/* 0FEE58 80295848 03E00008 */  jr    $ra
/* 0FEE5C 8029584C AC4B0004 */   sw    $t3, 4($v0)
glabel L80295850
/* 0FEE60 80295850 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEE64 80295854 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEE68 80295858 8C620000 */  lw    $v0, ($v1)
/* 0FEE6C 8029585C 3C0E0601 */  lui   $t6, %hi(D_06014088) # $t6, 0x601
/* 0FEE70 80295860 25CE4088 */  addiu $t6, %lo(D_06014088) # addiu $t6, $t6, 0x4088
/* 0FEE74 80295864 244C0008 */  addiu $t4, $v0, 8
/* 0FEE78 80295868 AC6C0000 */  sw    $t4, ($v1)
/* 0FEE7C 8029586C 3C0D0600 */  lui   $t5, 0x600
/* 0FEE80 80295870 AC4D0000 */  sw    $t5, ($v0)
/* 0FEE84 80295874 03E00008 */  jr    $ra
/* 0FEE88 80295878 AC4E0004 */   sw    $t6, 4($v0)
glabel L8029587C
/* 0FEE8C 8029587C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEE90 80295880 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEE94 80295884 8C620000 */  lw    $v0, ($v1)
/* 0FEE98 80295888 3C190602 */  lui   $t9, %hi(D_06023930) # $t9, 0x602
/* 0FEE9C 8029588C 27393930 */  addiu $t9, %lo(D_06023930) # addiu $t9, $t9, 0x3930
/* 0FEEA0 80295890 244F0008 */  addiu $t7, $v0, 8
/* 0FEEA4 80295894 AC6F0000 */  sw    $t7, ($v1)
/* 0FEEA8 80295898 3C180600 */  lui   $t8, 0x600
/* 0FEEAC 8029589C AC580000 */  sw    $t8, ($v0)
/* 0FEEB0 802958A0 03E00008 */  jr    $ra
/* 0FEEB4 802958A4 AC590004 */   sw    $t9, 4($v0)
glabel L802958A8
/* 0FEEB8 802958A8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEEBC 802958AC 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEEC0 802958B0 8C620000 */  lw    $v0, ($v1)
/* 0FEEC4 802958B4 3C0A0602 */  lui   $t2, %hi(D_06022E00) # $t2, 0x602
/* 0FEEC8 802958B8 254A2E00 */  addiu $t2, %lo(D_06022E00) # addiu $t2, $t2, 0x2e00
/* 0FEECC 802958BC 24480008 */  addiu $t0, $v0, 8
/* 0FEED0 802958C0 AC680000 */  sw    $t0, ($v1)
/* 0FEED4 802958C4 3C090600 */  lui   $t1, 0x600
/* 0FEED8 802958C8 AC490000 */  sw    $t1, ($v0)
/* 0FEEDC 802958CC 03E00008 */  jr    $ra
/* 0FEEE0 802958D0 AC4A0004 */   sw    $t2, 4($v0)
glabel L802958D4
/* 0FEEE4 802958D4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEEE8 802958D8 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEEEC 802958DC 8C620000 */  lw    $v0, ($v1)
/* 0FEEF0 802958E0 3C0D0601 */  lui   $t5, %hi(D_06009AE8) # $t5, 0x601
/* 0FEEF4 802958E4 25AD9AE8 */  addiu $t5, %lo(D_06009AE8) # addiu $t5, $t5, -0x6518
/* 0FEEF8 802958E8 244B0008 */  addiu $t3, $v0, 8
/* 0FEEFC 802958EC AC6B0000 */  sw    $t3, ($v1)
/* 0FEF00 802958F0 3C0C0600 */  lui   $t4, 0x600
/* 0FEF04 802958F4 AC4C0000 */  sw    $t4, ($v0)
/* 0FEF08 802958F8 03E00008 */  jr    $ra
/* 0FEF0C 802958FC AC4D0004 */   sw    $t5, 4($v0)
glabel L80295900
/* 0FEF10 80295900 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEF14 80295904 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEF18 80295908 8C620000 */  lw    $v0, ($v1)
/* 0FEF1C 8029590C 3C180601 */  lui   $t8, %hi(D_06016220) # $t8, 0x601
/* 0FEF20 80295910 27186220 */  addiu $t8, %lo(D_06016220) # addiu $t8, $t8, 0x6220
/* 0FEF24 80295914 244E0008 */  addiu $t6, $v0, 8
/* 0FEF28 80295918 AC6E0000 */  sw    $t6, ($v1)
/* 0FEF2C 8029591C 3C0F0600 */  lui   $t7, 0x600
/* 0FEF30 80295920 AC4F0000 */  sw    $t7, ($v0)
/* 0FEF34 80295924 03E00008 */  jr    $ra
/* 0FEF38 80295928 AC580004 */   sw    $t8, 4($v0)
glabel L8029592C
/* 0FEF3C 8029592C 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEF40 80295930 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEF44 80295934 8C620000 */  lw    $v0, ($v1)
/* 0FEF48 80295938 3C090601 */  lui   $t1, %hi(D_0600CA78) # $t1, 0x601
/* 0FEF4C 8029593C 2529CA78 */  addiu $t1, %lo(D_0600CA78) # addiu $t1, $t1, -0x3588
/* 0FEF50 80295940 24590008 */  addiu $t9, $v0, 8
/* 0FEF54 80295944 AC790000 */  sw    $t9, ($v1)
/* 0FEF58 80295948 3C080600 */  lui   $t0, 0x600
/* 0FEF5C 8029594C AC480000 */  sw    $t0, ($v0)
/* 0FEF60 80295950 03E00008 */  jr    $ra
/* 0FEF64 80295954 AC490004 */   sw    $t1, 4($v0)
glabel L80295958
/* 0FEF68 80295958 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEF6C 8029595C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEF70 80295960 8C620000 */  lw    $v0, ($v1)
/* 0FEF74 80295964 3C0C0600 */  lui   $t4, 0x600
/* 0FEF78 80295968 258C0000 */  addiu $t4, $t4, 0
/* 0FEF7C 8029596C 244A0008 */  addiu $t2, $v0, 8
/* 0FEF80 80295970 AC6A0000 */  sw    $t2, ($v1)
/* 0FEF84 80295974 3C0B0600 */  lui   $t3, 0x600
/* 0FEF88 80295978 AC4B0000 */  sw    $t3, ($v0)
/* 0FEF8C 8029597C 03E00008 */  jr    $ra
/* 0FEF90 80295980 AC4C0004 */   sw    $t4, 4($v0)
glabel L80295984
/* 0FEF94 80295984 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEF98 80295988 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEF9C 8029598C 8C620000 */  lw    $v0, ($v1)
/* 0FEFA0 80295990 3C0F0600 */  lui   $t7, 0x600
/* 0FEFA4 80295994 25EF0000 */  addiu $t7, $t7, 0
/* 0FEFA8 80295998 244D0008 */  addiu $t5, $v0, 8
/* 0FEFAC 8029599C AC6D0000 */  sw    $t5, ($v1)
/* 0FEFB0 802959A0 3C0E0600 */  lui   $t6, 0x600
/* 0FEFB4 802959A4 AC4E0000 */  sw    $t6, ($v0)
/* 0FEFB8 802959A8 03E00008 */  jr    $ra
/* 0FEFBC 802959AC AC4F0004 */   sw    $t7, 4($v0)
glabel L802959B0
/* 0FEFC0 802959B0 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEFC4 802959B4 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEFC8 802959B8 8C620000 */  lw    $v0, ($v1)
/* 0FEFCC 802959BC 3C080600 */  lui   $t0, 0x600
/* 0FEFD0 802959C0 25080000 */  addiu $t0, $t0, 0
/* 0FEFD4 802959C4 24580008 */  addiu $t8, $v0, 8
/* 0FEFD8 802959C8 AC780000 */  sw    $t8, ($v1)
/* 0FEFDC 802959CC 3C190600 */  lui   $t9, 0x600
/* 0FEFE0 802959D0 AC590000 */  sw    $t9, ($v0)
/* 0FEFE4 802959D4 03E00008 */  jr    $ra
/* 0FEFE8 802959D8 AC480004 */   sw    $t0, 4($v0)
glabel L802959DC
/* 0FEFEC 802959DC 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FEFF0 802959E0 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FEFF4 802959E4 8C620000 */  lw    $v0, ($v1)
/* 0FEFF8 802959E8 3C0B0601 */  lui   $t3, %hi(D_06013C30) # $t3, 0x601
/* 0FEFFC 802959EC 256B3C30 */  addiu $t3, %lo(D_06013C30) # addiu $t3, $t3, 0x3c30
/* 0FF000 802959F0 24490008 */  addiu $t1, $v0, 8
/* 0FF004 802959F4 AC690000 */  sw    $t1, ($v1)
/* 0FF008 802959F8 3C0A0600 */  lui   $t2, 0x600
/* 0FF00C 802959FC AC4A0000 */  sw    $t2, ($v0)
/* 0FF010 80295A00 03E00008 */  jr    $ra
/* 0FF014 80295A04 AC4B0004 */   sw    $t3, 4($v0)
glabel L80295A08
/* 0FF018 80295A08 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FF01C 80295A0C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FF020 80295A10 8C620000 */  lw    $v0, ($v1)
/* 0FF024 80295A14 3C0E0600 */  lui   $t6, 0x600
/* 0FF028 80295A18 25CE0000 */  addiu $t6, $t6, 0
/* 0FF02C 80295A1C 244C0008 */  addiu $t4, $v0, 8
/* 0FF030 80295A20 AC6C0000 */  sw    $t4, ($v1)
/* 0FF034 80295A24 3C0D0600 */  lui   $t5, 0x600
/* 0FF038 80295A28 AC4D0000 */  sw    $t5, ($v0)
/* 0FF03C 80295A2C AC4E0004 */  sw    $t6, 4($v0)
.L80295A30:
/* 0FF040 80295A30 03E00008 */  jr    $ra
/* 0FF044 80295A34 00000000 */   nop   
