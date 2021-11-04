glabel render_royal_raceway
/* 0FCE50 80293840 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FCE54 80293844 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FCE58 80293848 8C620000 */  lw    $v0, ($v1)
/* 0FCE5C 8029384C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0FCE60 80293850 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0FCE64 80293854 244E0008 */  addiu $t6, $v0, 8
/* 0FCE68 80293858 AFA40018 */  sw    $a0, 0x18($sp)
/* 0FCE6C 8029385C AC6E0000 */  sw    $t6, ($v1)
/* 0FCE70 80293860 3C0FBB00 */  lui   $t7, (0xBB000001 >> 16) # lui $t7, 0xbb00
/* 0FCE74 80293864 35EF0001 */  ori   $t7, (0xBB000001 & 0xFFFF) # ori $t7, $t7, 1
/* 0FCE78 80293868 2418FFFF */  li    $t8, -1
/* 0FCE7C 8029386C AC580004 */  sw    $t8, 4($v0)
/* 0FCE80 80293870 AC4F0000 */  sw    $t7, ($v0)
/* 0FCE84 80293874 8C620000 */  lw    $v0, ($v1)
/* 0FCE88 80293878 3C0CB700 */  lui   $t4, 0xb700
/* 0FCE8C 8029387C 240D0200 */  li    $t5, 512
/* 0FCE90 80293880 24590008 */  addiu $t9, $v0, 8
/* 0FCE94 80293884 AC790000 */  sw    $t9, ($v1)
/* 0FCE98 80293888 AC4D0004 */  sw    $t5, 4($v0)
/* 0FCE9C 8029388C AC4C0000 */  sw    $t4, ($v0)
/* 0FCEA0 80293890 8C620000 */  lw    $v0, ($v1)
/* 0FCEA4 80293894 3C0FB600 */  lui   $t7, 0xb600
/* 0FCEA8 80293898 3C180002 */  lui   $t8, 2
/* 0FCEAC 8029389C 244E0008 */  addiu $t6, $v0, 8
/* 0FCEB0 802938A0 AC6E0000 */  sw    $t6, ($v1)
/* 0FCEB4 802938A4 AC580004 */  sw    $t8, 4($v0)
/* 0FCEB8 802938A8 AC4F0000 */  sw    $t7, ($v0)
/* 0FCEBC 802938AC 8FB90018 */  lw    $t9, 0x18($sp)
/* 0FCEC0 802938B0 0C0A4308 */  jal   func_80290C20
/* 0FCEC4 802938B4 8F240004 */   lw    $a0, 4($t9)
/* 0FCEC8 802938B8 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FCECC 802938BC 24010001 */  li    $at, 1
/* 0FCED0 802938C0 1441001B */  bne   $v0, $at, .L80293930
/* 0FCED4 802938C4 24630298 */   addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FCED8 802938C8 8C620000 */  lw    $v0, ($v1)
/* 0FCEDC 802938CC 3C0DFCFF */  lui   $t5, (0xFCFFFFFF >> 16) # lui $t5, 0xfcff
/* 0FCEE0 802938D0 3C0EFFFE */  lui   $t6, (0xFFFE793C >> 16) # lui $t6, 0xfffe
/* 0FCEE4 802938D4 244C0008 */  addiu $t4, $v0, 8
/* 0FCEE8 802938D8 AC6C0000 */  sw    $t4, ($v1)
/* 0FCEEC 802938DC 35CE793C */  ori   $t6, (0xFFFE793C & 0xFFFF) # ori $t6, $t6, 0x793c
/* 0FCEF0 802938E0 35ADFFFF */  ori   $t5, (0xFCFFFFFF & 0xFFFF) # ori $t5, $t5, 0xffff
/* 0FCEF4 802938E4 AC4D0000 */  sw    $t5, ($v0)
/* 0FCEF8 802938E8 AC4E0004 */  sw    $t6, 4($v0)
/* 0FCEFC 802938EC 8C620000 */  lw    $v0, ($v1)
/* 0FCF00 802938F0 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 0FCF04 802938F4 3C190055 */  lui   $t9, (0x00552078 >> 16) # lui $t9, 0x55
/* 0FCF08 802938F8 244F0008 */  addiu $t7, $v0, 8
/* 0FCF0C 802938FC AC6F0000 */  sw    $t7, ($v1)
/* 0FCF10 80293900 37392078 */  ori   $t9, (0x00552078 & 0xFFFF) # ori $t9, $t9, 0x2078
/* 0FCF14 80293904 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 0FCF18 80293908 AC580000 */  sw    $t8, ($v0)
/* 0FCF1C 8029390C AC590004 */  sw    $t9, 4($v0)
/* 0FCF20 80293910 8C620000 */  lw    $v0, ($v1)
/* 0FCF24 80293914 3C0E0700 */  lui   $t6, (0x0700B030 >> 16) # lui $t6, 0x700
/* 0FCF28 80293918 35CEB030 */  ori   $t6, (0x0700B030 & 0xFFFF) # ori $t6, $t6, 0xb030
/* 0FCF2C 8029391C 244C0008 */  addiu $t4, $v0, 8
/* 0FCF30 80293920 AC6C0000 */  sw    $t4, ($v1)
/* 0FCF34 80293924 3C0D0600 */  lui   $t5, 0x600
/* 0FCF38 80293928 AC4D0000 */  sw    $t5, ($v0)
/* 0FCF3C 8029392C AC4E0004 */  sw    $t6, 4($v0)
.L80293930:
/* 0FCF40 80293930 8C620000 */  lw    $v0, ($v1)
/* 0FCF44 80293934 3C18B700 */  lui   $t8, 0xb700
/* 0FCF48 80293938 24192000 */  li    $t9, 8192
/* 0FCF4C 8029393C 244F0008 */  addiu $t7, $v0, 8
/* 0FCF50 80293940 AC6F0000 */  sw    $t7, ($v1)
/* 0FCF54 80293944 AC590004 */  sw    $t9, 4($v0)
/* 0FCF58 80293948 AC580000 */  sw    $t8, ($v0)
/* 0FCF5C 8029394C 8C620000 */  lw    $v0, ($v1)
/* 0FCF60 80293950 3C0DFC12 */  lui   $t5, (0xFC121824 >> 16) # lui $t5, 0xfc12
/* 0FCF64 80293954 3C0EFF33 */  lui   $t6, (0xFF33FFFF >> 16) # lui $t6, 0xff33
/* 0FCF68 80293958 244C0008 */  addiu $t4, $v0, 8
/* 0FCF6C 8029395C AC6C0000 */  sw    $t4, ($v1)
/* 0FCF70 80293960 35CEFFFF */  ori   $t6, (0xFF33FFFF & 0xFFFF) # ori $t6, $t6, 0xffff
/* 0FCF74 80293964 35AD1824 */  ori   $t5, (0xFC121824 & 0xFFFF) # ori $t5, $t5, 0x1824
/* 0FCF78 80293968 AC4D0000 */  sw    $t5, ($v0)
/* 0FCF7C 8029396C AC4E0004 */  sw    $t6, 4($v0)
/* 0FCF80 80293970 8C620000 */  lw    $v0, ($v1)
/* 0FCF84 80293974 3C18B900 */  lui   $t8, (0xB900031D >> 16) # lui $t8, 0xb900
/* 0FCF88 80293978 3C190055 */  lui   $t9, (0x00552078 >> 16) # lui $t9, 0x55
/* 0FCF8C 8029397C 244F0008 */  addiu $t7, $v0, 8
/* 0FCF90 80293980 AC6F0000 */  sw    $t7, ($v1)
/* 0FCF94 80293984 37392078 */  ori   $t9, (0x00552078 & 0xFFFF) # ori $t9, $t9, 0x2078
/* 0FCF98 80293988 3718031D */  ori   $t8, (0xB900031D & 0xFFFF) # ori $t8, $t8, 0x31d
/* 0FCF9C 8029398C AC580000 */  sw    $t8, ($v0)
/* 0FCFA0 80293990 AC590004 */  sw    $t9, 4($v0)
/* 0FCFA4 80293994 8C620000 */  lw    $v0, ($v1)
/* 0FCFA8 80293998 3C0E0700 */  lui   $t6, (0x0700A648 >> 16) # lui $t6, 0x700
/* 0FCFAC 8029399C 35CEA648 */  ori   $t6, (0x0700A648 & 0xFFFF) # ori $t6, $t6, 0xa648
/* 0FCFB0 802939A0 244C0008 */  addiu $t4, $v0, 8
/* 0FCFB4 802939A4 AC6C0000 */  sw    $t4, ($v1)
/* 0FCFB8 802939A8 3C0D0600 */  lui   $t5, 0x600
/* 0FCFBC 802939AC 3C040900 */  lui   $a0, %hi(royal_raceway_dls) # $a0, 0x900
/* 0FCFC0 802939B0 AC4D0000 */  sw    $t5, ($v0)
/* 0FCFC4 802939B4 AC4E0004 */  sw    $t6, 4($v0)
/* 0FCFC8 802939B8 8FA50018 */  lw    $a1, 0x18($sp)
/* 0FCFCC 802939BC 0C0A436B */  jal   load_surface_map
/* 0FCFD0 802939C0 248402C0 */   addiu $a0, %lo(royal_raceway_dls) # addiu $a0, $a0, 0x2c0
/* 0FCFD4 802939C4 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 0FCFD8 802939C8 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 0FCFDC 802939CC 8C620000 */  lw    $v0, ($v1)
/* 0FCFE0 802939D0 3C180700 */  lui   $t8, (0x070011A8 >> 16) # lui $t8, 0x700
/* 0FCFE4 802939D4 3C0A0600 */  lui   $t2, 0x600
/* 0FCFE8 802939D8 244F0008 */  addiu $t7, $v0, 8
/* 0FCFEC 802939DC AC6F0000 */  sw    $t7, ($v1)
/* 0FCFF0 802939E0 371811A8 */  ori   $t8, (0x070011A8 & 0xFFFF) # ori $t8, $t8, 0x11a8
/* 0FCFF4 802939E4 AC580004 */  sw    $t8, 4($v0)
/* 0FCFF8 802939E8 AC4A0000 */  sw    $t2, ($v0)
/* 0FCFFC 802939EC 8C620000 */  lw    $v0, ($v1)
/* 0FD000 802939F0 3C0CFC12 */  lui   $t4, (0xFC127E24 >> 16) # lui $t4, 0xfc12
/* 0FD004 802939F4 358C7E24 */  ori   $t4, (0xFC127E24 & 0xFFFF) # ori $t4, $t4, 0x7e24
/* 0FD008 802939F8 24590008 */  addiu $t9, $v0, 8
/* 0FD00C 802939FC AC790000 */  sw    $t9, ($v1)
/* 0FD010 80293A00 240DF3F9 */  li    $t5, -3079
/* 0FD014 80293A04 AC4D0004 */  sw    $t5, 4($v0)
/* 0FD018 80293A08 AC4C0000 */  sw    $t4, ($v0)
/* 0FD01C 80293A0C 8C620000 */  lw    $v0, ($v1)
/* 0FD020 80293A10 3C180055 */  lui   $t8, (0x00553078 >> 16) # lui $t8, 0x55
/* 0FD024 80293A14 3C0FB900 */  lui   $t7, (0xB900031D >> 16) # lui $t7, 0xb900
/* 0FD028 80293A18 244E0008 */  addiu $t6, $v0, 8
/* 0FD02C 80293A1C AC6E0000 */  sw    $t6, ($v1)
/* 0FD030 80293A20 35EF031D */  ori   $t7, (0xB900031D & 0xFFFF) # ori $t7, $t7, 0x31d
/* 0FD034 80293A24 37183078 */  ori   $t8, (0x00553078 & 0xFFFF) # ori $t8, $t8, 0x3078
/* 0FD038 80293A28 AC580004 */  sw    $t8, 4($v0)
/* 0FD03C 80293A2C AC4F0000 */  sw    $t7, ($v0)
/* 0FD040 80293A30 8C620000 */  lw    $v0, ($v1)
/* 0FD044 80293A34 240B2000 */  li    $t3, 8192
/* 0FD048 80293A38 3C0CB600 */  lui   $t4, 0xb600
/* 0FD04C 80293A3C 24590008 */  addiu $t9, $v0, 8
/* 0FD050 80293A40 AC790000 */  sw    $t9, ($v1)
/* 0FD054 80293A44 AC4B0004 */  sw    $t3, 4($v0)
/* 0FD058 80293A48 AC4C0000 */  sw    $t4, ($v0)
/* 0FD05C 80293A4C 8C620000 */  lw    $v0, ($v1)
/* 0FD060 80293A50 3C0E0700 */  lui   $t6, (0x070008A0 >> 16) # lui $t6, 0x700
/* 0FD064 80293A54 35CE08A0 */  ori   $t6, (0x070008A0 & 0xFFFF) # ori $t6, $t6, 0x8a0
/* 0FD068 80293A58 244D0008 */  addiu $t5, $v0, 8
/* 0FD06C 80293A5C AC6D0000 */  sw    $t5, ($v1)
/* 0FD070 80293A60 AC4E0004 */  sw    $t6, 4($v0)
/* 0FD074 80293A64 AC4A0000 */  sw    $t2, ($v0)
/* 0FD078 80293A68 8C620000 */  lw    $v0, ($v1)
/* 0FD07C 80293A6C 3C18B700 */  lui   $t8, 0xb700
/* 0FD080 80293A70 244F0008 */  addiu $t7, $v0, 8
/* 0FD084 80293A74 AC6F0000 */  sw    $t7, ($v1)
/* 0FD088 80293A78 AC4B0004 */  sw    $t3, 4($v0)
/* 0FD08C 80293A7C AC580000 */  sw    $t8, ($v0)
/* 0FD090 80293A80 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0FD094 80293A84 27BD0018 */  addiu $sp, $sp, 0x18
/* 0FD098 80293A88 03E00008 */  jr    $ra
/* 0FD09C 80293A8C 00000000 */   nop   
