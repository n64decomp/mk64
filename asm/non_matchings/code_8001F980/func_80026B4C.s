glabel func_80026B4C
/* 02774C 80026B4C 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 027750 80026B50 AFA50024 */  sw    $a1, 0x24($sp)
/* 027754 80026B54 83AF0027 */  lb    $t7, 0x27($sp)
/* 027758 80026B58 AFB00018 */  sw    $s0, 0x18($sp)
/* 02775C 80026B5C 00068600 */  sll   $s0, $a2, 0x18
/* 027760 80026B60 00107603 */  sra   $t6, $s0, 0x18
/* 027764 80026B64 AFBF001C */  sw    $ra, 0x1c($sp)
/* 027768 80026B68 AFA60028 */  sw    $a2, 0x28($sp)
/* 02776C 80026B6C AFA7002C */  sw    $a3, 0x2c($sp)
/* 027770 80026B70 8C8300BC */  lw    $v1, 0xbc($a0)
/* 027774 80026B74 000F1040 */  sll   $v0, $t7, 1
/* 027778 80026B78 000EC100 */  sll   $t8, $t6, 4
/* 02777C 80026B7C 000E5900 */  sll   $t3, $t6, 4
/* 027780 80026B80 0302C821 */  addu  $t9, $t8, $v0
/* 027784 80026B84 3C088016 */  lui   $t0, %hi(D_801650D0) # 0x8016
/* 027788 80026B88 01626021 */  addu  $t4, $t3, $v0
/* 02778C 80026B8C 3C098016 */  lui   $t1, %hi(D_80165110) # 0x8016
/* 027790 80026B90 01194021 */  addu  $t0, $t0, $t9
/* 027794 80026B94 012C4821 */  addu  $t1, $t1, $t4
/* 027798 80026B98 24014000 */  li    $at, 16384
/* 02779C 80026B9C 306D4000 */  andi  $t5, $v1, 0x4000
/* 0277A0 80026BA0 01C08025 */  move  $s0, $t6
/* 0277A4 80026BA4 850850D0 */  lh    $t0, %lo(D_801650D0)($t0) # 0x50d0
/* 0277A8 80026BA8 85295110 */  lh    $t1, %lo(D_80165110)($t1) # 0x5110
/* 0277AC 80026BAC 15A1008E */  bne   $t5, $at, .L80026DE8
/* 0277B0 80026BB0 848A0242 */   lh    $t2, 0x242($a0)
/* 0277B4 80026BB4 948E0000 */  lhu   $t6, ($a0)
/* 0277B8 80026BB8 30790080 */  andi  $t9, $v1, 0x80
/* 0277BC 80026BBC 24010080 */  li    $at, 128
/* 0277C0 80026BC0 31D82000 */  andi  $t8, $t6, 0x2000
/* 0277C4 80026BC4 57000089 */  bnel  $t8, $zero, .L80026DEC
/* 0277C8 80026BC8 30780080 */   andi  $t8, $v1, 0x80
/* 0277CC 80026BCC 1321004D */  beq   $t9, $at, .L80026D04
/* 0277D0 80026BD0 306B0040 */   andi  $t3, $v1, 0x40
/* 0277D4 80026BD4 24010040 */  li    $at, 64
/* 0277D8 80026BD8 1161004A */  beq   $t3, $at, .L80026D04
/* 0277DC 80026BDC 3C020002 */   lui   $v0, 2
/* 0277E0 80026BE0 00626024 */  and   $t4, $v1, $v0
/* 0277E4 80026BE4 104C0047 */  beq   $v0, $t4, .L80026D04
/* 0277E8 80026BE8 3C020008 */   lui   $v0, 8
/* 0277EC 80026BEC 00626824 */  and   $t5, $v1, $v0
/* 0277F0 80026BF0 104D0044 */  beq   $v0, $t5, .L80026D04
/* 0277F4 80026BF4 3C020080 */   lui   $v0, 0x80
/* 0277F8 80026BF8 00627024 */  and   $t6, $v1, $v0
/* 0277FC 80026BFC 104E0041 */  beq   $v0, $t6, .L80026D04
/* 027800 80026C00 00000000 */   nop   
/* 027804 80026C04 84980044 */  lh    $t8, 0x44($a0)
/* 027808 80026C08 29010015 */  slti  $at, $t0, 0x15
/* 02780C 80026C0C 33190800 */  andi  $t9, $t8, 0x800
/* 027810 80026C10 1720003C */  bnez  $t9, .L80026D04
/* 027814 80026C14 00000000 */   nop   
/* 027818 80026C18 1020001C */  beqz  $at, .L80026C8C
/* 02781C 80026C1C 3C0B800E */   lui   $t3, %hi(D_800DDE54)
/* 027820 80026C20 948B0254 */  lhu   $t3, 0x254($a0)
/* 027824 80026C24 3C0D800E */  lui   $t5, %hi(D_800DDE34)
/* 027828 80026C28 00097080 */  sll   $t6, $t1, 2
/* 02782C 80026C2C 000B6080 */  sll   $t4, $t3, 2
/* 027830 80026C30 01AC6821 */  addu  $t5, $t5, $t4
/* 027834 80026C34 8DADDE34 */  lw    $t5, %lo(D_800DDE34)($t5)
/* 027838 80026C38 000A5A03 */  sra   $t3, $t2, 8
/* 02783C 80026C3C 000B61C0 */  sll   $t4, $t3, 7
/* 027840 80026C40 01AEC021 */  addu  $t8, $t5, $t6
/* 027844 80026C44 8F190000 */  lw    $t9, ($t8)
/* 027848 80026C48 00086A40 */  sll   $t5, $t0, 9
/* 02784C 80026C4C 0010C300 */  sll   $t8, $s0, 0xc
/* 027850 80026C50 032D7021 */  addu  $t6, $t9, $t5
/* 027854 80026C54 83B9002F */  lb    $t9, 0x2f($sp)
/* 027858 80026C58 01CC2821 */  addu  $a1, $t6, $t4
/* 02785C 80026C5C 000F6240 */  sll   $t4, $t7, 9
/* 027860 80026C60 00196B80 */  sll   $t5, $t9, 0xe
/* 027864 80026C64 01B85821 */  addu  $t3, $t5, $t8
/* 027868 80026C68 016CC821 */  addu  $t9, $t3, $t4
/* 02786C 80026C6C 3C18802F */  lui   $t8, %hi(D_802F1F80) # $t8, 0x802f
/* 027870 80026C70 27181F80 */  addiu $t8, %lo(D_802F1F80) # addiu $t8, $t8, 0x1f80
/* 027874 80026C74 272D0180 */  addiu $t5, $t9, 0x180
/* 027878 80026C78 01B83021 */  addu  $a2, $t5, $t8
/* 02787C 80026C7C 0C009F1D */  jal   func_80027C74
/* 027880 80026C80 24070080 */   li    $a3, 128
/* 027884 80026C84 100000E1 */  b     .L8002700C
/* 027888 80026C88 8FBF001C */   lw    $ra, 0x1c($sp)
.L80026C8C:
/* 02788C 80026C8C 948F0254 */  lhu   $t7, 0x254($a0)
/* 027890 80026C90 00096080 */  sll   $t4, $t1, 2
/* 027894 80026C94 000AC203 */  sra   $t8, $t2, 8
/* 027898 80026C98 000F7080 */  sll   $t6, $t7, 2
/* 02789C 80026C9C 016E5821 */  addu  $t3, $t3, $t6
/* 0278A0 80026CA0 8D6BDE54 */  lw    $t3, %lo(D_800DDE54)($t3)
/* 0278A4 80026CA4 00087A00 */  sll   $t7, $t0, 8
/* 0278A8 80026CA8 25EEEB00 */  addiu $t6, $t7, -0x1500
/* 0278AC 80026CAC 016CC821 */  addu  $t9, $t3, $t4
/* 0278B0 80026CB0 8F2D0000 */  lw    $t5, ($t9)
/* 0278B4 80026CB4 000E5840 */  sll   $t3, $t6, 1
/* 0278B8 80026CB8 83AE002F */  lb    $t6, 0x2f($sp)
/* 0278BC 80026CBC 01AB6021 */  addu  $t4, $t5, $t3
/* 0278C0 80026CC0 001879C0 */  sll   $t7, $t8, 7
/* 0278C4 80026CC4 018F2821 */  addu  $a1, $t4, $t7
/* 0278C8 80026CC8 83AC0027 */  lb    $t4, 0x27($sp)
/* 0278CC 80026CCC 00105B00 */  sll   $t3, $s0, 0xc
/* 0278D0 80026CD0 000E6B80 */  sll   $t5, $t6, 0xe
/* 0278D4 80026CD4 01ABC821 */  addu  $t9, $t5, $t3
/* 0278D8 80026CD8 000C7A40 */  sll   $t7, $t4, 9
/* 0278DC 80026CDC 032F7021 */  addu  $t6, $t9, $t7
/* 0278E0 80026CE0 3C0B802F */  lui   $t3, %hi(D_802F1F80) # $t3, 0x802f
/* 0278E4 80026CE4 256B1F80 */  addiu $t3, %lo(D_802F1F80) # addiu $t3, $t3, 0x1f80
/* 0278E8 80026CE8 25CD0180 */  addiu $t5, $t6, 0x180
/* 0278EC 80026CEC 01AB3021 */  addu  $a2, $t5, $t3
/* 0278F0 80026CF0 24A50C00 */  addiu $a1, $a1, 0xc00
/* 0278F4 80026CF4 0C009F1D */  jal   func_80027C74
/* 0278F8 80026CF8 24070080 */   li    $a3, 128
/* 0278FC 80026CFC 100000C3 */  b     .L8002700C
/* 027900 80026D00 8FBF001C */   lw    $ra, 0x1c($sp)
.L80026D04:
/* 027904 80026D04 1500001D */  bnez  $t0, .L80026D7C
/* 027908 80026D08 3C0F800E */   lui   $t7, %hi(D_800DDE54)
/* 02790C 80026D0C 94980254 */  lhu   $t8, 0x254($a0)
/* 027910 80026D10 3C19800E */  lui   $t9, %hi(D_800DDE34)
/* 027914 80026D14 00097880 */  sll   $t7, $t1, 2
/* 027918 80026D18 00186080 */  sll   $t4, $t8, 2
/* 02791C 80026D1C 032CC821 */  addu  $t9, $t9, $t4
/* 027920 80026D20 8F39DE34 */  lw    $t9, %lo(D_800DDE34)($t9)
/* 027924 80026D24 00086240 */  sll   $t4, $t0, 9
/* 027928 80026D28 83B8002F */  lb    $t8, 0x2f($sp)
/* 02792C 80026D2C 032F7021 */  addu  $t6, $t9, $t7
/* 027930 80026D30 8DCD0000 */  lw    $t5, ($t6)
/* 027934 80026D34 000A7203 */  sra   $t6, $t2, 8
/* 027938 80026D38 000E59C0 */  sll   $t3, $t6, 7
/* 02793C 80026D3C 01ACC821 */  addu  $t9, $t5, $t4
/* 027940 80026D40 032B2821 */  addu  $a1, $t9, $t3
/* 027944 80026D44 83B90027 */  lb    $t9, 0x27($sp)
/* 027948 80026D48 00106300 */  sll   $t4, $s0, 0xc
/* 02794C 80026D4C 00186B80 */  sll   $t5, $t8, 0xe
/* 027950 80026D50 01AC7821 */  addu  $t7, $t5, $t4
/* 027954 80026D54 00195A40 */  sll   $t3, $t9, 9
/* 027958 80026D58 01EBC021 */  addu  $t8, $t7, $t3
/* 02795C 80026D5C 3C0C802F */  lui   $t4, %hi(D_802F1F80) # $t4, 0x802f
/* 027960 80026D60 258C1F80 */  addiu $t4, %lo(D_802F1F80) # addiu $t4, $t4, 0x1f80
/* 027964 80026D64 270D0180 */  addiu $t5, $t8, 0x180
/* 027968 80026D68 01AC3021 */  addu  $a2, $t5, $t4
/* 02796C 80026D6C 0C009F1D */  jal   func_80027C74
/* 027970 80026D70 24070080 */   li    $a3, 128
/* 027974 80026D74 100000A5 */  b     .L8002700C
/* 027978 80026D78 8FBF001C */   lw    $ra, 0x1c($sp)
.L80026D7C:
/* 02797C 80026D7C 948E0254 */  lhu   $t6, 0x254($a0)
/* 027980 80026D80 00095880 */  sll   $t3, $t1, 2
/* 027984 80026D84 24070080 */  li    $a3, 128
/* 027988 80026D88 000EC880 */  sll   $t9, $t6, 2
/* 02798C 80026D8C 01F97821 */  addu  $t7, $t7, $t9
/* 027990 80026D90 8DEFDE54 */  lw    $t7, %lo(D_800DDE54)($t7)
/* 027994 80026D94 0008CA40 */  sll   $t9, $t0, 9
/* 027998 80026D98 83AE002F */  lb    $t6, 0x2f($sp)
/* 02799C 80026D9C 01EBC021 */  addu  $t8, $t7, $t3
/* 0279A0 80026DA0 8F0D0000 */  lw    $t5, ($t8)
/* 0279A4 80026DA4 000AC203 */  sra   $t8, $t2, 8
/* 0279A8 80026DA8 001861C0 */  sll   $t4, $t8, 7
/* 0279AC 80026DAC 01B97821 */  addu  $t7, $t5, $t9
/* 0279B0 80026DB0 01EC2821 */  addu  $a1, $t7, $t4
/* 0279B4 80026DB4 83AF0027 */  lb    $t7, 0x27($sp)
/* 0279B8 80026DB8 0010CB00 */  sll   $t9, $s0, 0xc
/* 0279BC 80026DBC 000E6B80 */  sll   $t5, $t6, 0xe
/* 0279C0 80026DC0 01B95821 */  addu  $t3, $t5, $t9
/* 0279C4 80026DC4 000F6240 */  sll   $t4, $t7, 9
/* 0279C8 80026DC8 016C7021 */  addu  $t6, $t3, $t4
/* 0279CC 80026DCC 3C19802F */  lui   $t9, %hi(D_802F1F80) # $t9, 0x802f
/* 0279D0 80026DD0 27391F80 */  addiu $t9, %lo(D_802F1F80) # addiu $t9, $t9, 0x1f80
/* 0279D4 80026DD4 25CD0180 */  addiu $t5, $t6, 0x180
/* 0279D8 80026DD8 0C009F1D */  jal   func_80027C74
/* 0279DC 80026DDC 01B93021 */   addu  $a2, $t5, $t9
/* 0279E0 80026DE0 1000008A */  b     .L8002700C
/* 0279E4 80026DE4 8FBF001C */   lw    $ra, 0x1c($sp)
.L80026DE8:
/* 0279E8 80026DE8 30780080 */  andi  $t8, $v1, 0x80
.L80026DEC:
/* 0279EC 80026DEC 24010080 */  li    $at, 128
/* 0279F0 80026DF0 1301004E */  beq   $t8, $at, .L80026F2C
/* 0279F4 80026DF4 306F0040 */   andi  $t7, $v1, 0x40
/* 0279F8 80026DF8 24010040 */  li    $at, 64
/* 0279FC 80026DFC 11E1004B */  beq   $t7, $at, .L80026F2C
/* 027A00 80026E00 3C020008 */   lui   $v0, 8
/* 027A04 80026E04 00625824 */  and   $t3, $v1, $v0
/* 027A08 80026E08 104B0048 */  beq   $v0, $t3, .L80026F2C
/* 027A0C 80026E0C 3C020080 */   lui   $v0, 0x80
/* 027A10 80026E10 00626024 */  and   $t4, $v1, $v0
/* 027A14 80026E14 104C0045 */  beq   $v0, $t4, .L80026F2C
/* 027A18 80026E18 3C020002 */   lui   $v0, 2
/* 027A1C 80026E1C 00627024 */  and   $t6, $v1, $v0
/* 027A20 80026E20 104E0042 */  beq   $v0, $t6, .L80026F2C
/* 027A24 80026E24 00000000 */   nop   
/* 027A28 80026E28 848D0044 */  lh    $t5, 0x44($a0)
/* 027A2C 80026E2C 29010015 */  slti  $at, $t0, 0x15
/* 027A30 80026E30 31B90800 */  andi  $t9, $t5, 0x800
/* 027A34 80026E34 1720003D */  bnez  $t9, .L80026F2C
/* 027A38 80026E38 00000000 */   nop   
/* 027A3C 80026E3C 1020001D */  beqz  $at, .L80026EB4
/* 027A40 80026E40 3C0C800E */   lui   $t4, %hi(D_800DDE54)
/* 027A44 80026E44 94980254 */  lhu   $t8, 0x254($a0)
/* 027A48 80026E48 3C0B800E */  lui   $t3, %hi(D_800DDE34)
/* 027A4C 80026E4C 00096080 */  sll   $t4, $t1, 2
/* 027A50 80026E50 00187880 */  sll   $t7, $t8, 2
/* 027A54 80026E54 016F5821 */  addu  $t3, $t3, $t7
/* 027A58 80026E58 8D6BDE34 */  lw    $t3, %lo(D_800DDE34)($t3)
/* 027A5C 80026E5C 00087A40 */  sll   $t7, $t0, 9
/* 027A60 80026E60 83B8002F */  lb    $t8, 0x2f($sp)
/* 027A64 80026E64 016C7021 */  addu  $t6, $t3, $t4
/* 027A68 80026E68 8DCD0000 */  lw    $t5, ($t6)
/* 027A6C 80026E6C 000A7203 */  sra   $t6, $t2, 8
/* 027A70 80026E70 000EC9C0 */  sll   $t9, $t6, 7
/* 027A74 80026E74 01AF5821 */  addu  $t3, $t5, $t7
/* 027A78 80026E78 01792821 */  addu  $a1, $t3, $t9
/* 027A7C 80026E7C 83AB0027 */  lb    $t3, 0x27($sp)
/* 027A80 80026E80 00107B00 */  sll   $t7, $s0, 0xc
/* 027A84 80026E84 00186B80 */  sll   $t5, $t8, 0xe
/* 027A88 80026E88 01AF6021 */  addu  $t4, $t5, $t7
/* 027A8C 80026E8C 000BCA40 */  sll   $t9, $t3, 9
/* 027A90 80026E90 0199C021 */  addu  $t8, $t4, $t9
/* 027A94 80026E94 3C0F802F */  lui   $t7, %hi(D_802F1F80) # $t7, 0x802f
/* 027A98 80026E98 25EF1F80 */  addiu $t7, %lo(D_802F1F80) # addiu $t7, $t7, 0x1f80
/* 027A9C 80026E9C 270D0180 */  addiu $t5, $t8, 0x180
/* 027AA0 80026EA0 01AF3021 */  addu  $a2, $t5, $t7
/* 027AA4 80026EA4 0C009F1D */  jal   func_80027C74
/* 027AA8 80026EA8 24070080 */   li    $a3, 128
/* 027AAC 80026EAC 10000057 */  b     .L8002700C
/* 027AB0 80026EB0 8FBF001C */   lw    $ra, 0x1c($sp)
.L80026EB4:
/* 027AB4 80026EB4 948E0254 */  lhu   $t6, 0x254($a0)
/* 027AB8 80026EB8 0009C880 */  sll   $t9, $t1, 2
/* 027ABC 80026EBC 000A7A03 */  sra   $t7, $t2, 8
/* 027AC0 80026EC0 000E5880 */  sll   $t3, $t6, 2
/* 027AC4 80026EC4 018B6021 */  addu  $t4, $t4, $t3
/* 027AC8 80026EC8 8D8CDE54 */  lw    $t4, %lo(D_800DDE54)($t4)
/* 027ACC 80026ECC 00087200 */  sll   $t6, $t0, 8
/* 027AD0 80026ED0 25CBEB00 */  addiu $t3, $t6, -0x1500
/* 027AD4 80026ED4 0199C021 */  addu  $t8, $t4, $t9
/* 027AD8 80026ED8 8F0D0000 */  lw    $t5, ($t8)
/* 027ADC 80026EDC 000B6040 */  sll   $t4, $t3, 1
/* 027AE0 80026EE0 83AB002F */  lb    $t3, 0x2f($sp)
/* 027AE4 80026EE4 01ACC821 */  addu  $t9, $t5, $t4
/* 027AE8 80026EE8 000F71C0 */  sll   $t6, $t7, 7
/* 027AEC 80026EEC 032E2821 */  addu  $a1, $t9, $t6
/* 027AF0 80026EF0 83B90027 */  lb    $t9, 0x27($sp)
/* 027AF4 80026EF4 00106300 */  sll   $t4, $s0, 0xc
/* 027AF8 80026EF8 000B6B80 */  sll   $t5, $t3, 0xe
/* 027AFC 80026EFC 01ACC021 */  addu  $t8, $t5, $t4
/* 027B00 80026F00 00197240 */  sll   $t6, $t9, 9
/* 027B04 80026F04 030E5821 */  addu  $t3, $t8, $t6
/* 027B08 80026F08 3C0C802F */  lui   $t4, %hi(D_802F1F80) # $t4, 0x802f
/* 027B0C 80026F0C 258C1F80 */  addiu $t4, %lo(D_802F1F80) # addiu $t4, $t4, 0x1f80
/* 027B10 80026F10 256D0180 */  addiu $t5, $t3, 0x180
/* 027B14 80026F14 01AC3021 */  addu  $a2, $t5, $t4
/* 027B18 80026F18 24A50C00 */  addiu $a1, $a1, 0xc00
/* 027B1C 80026F1C 0C009F1D */  jal   func_80027C74
/* 027B20 80026F20 24070080 */   li    $a3, 128
/* 027B24 80026F24 10000039 */  b     .L8002700C
/* 027B28 80026F28 8FBF001C */   lw    $ra, 0x1c($sp)
.L80026F2C:
/* 027B2C 80026F2C 1500001D */  bnez  $t0, .L80026FA4
/* 027B30 80026F30 3C0E800E */   lui   $t6, %hi(D_800DDE54)
/* 027B34 80026F34 948F0254 */  lhu   $t7, 0x254($a0)
/* 027B38 80026F38 3C18800E */  lui   $t8, %hi(D_800DDE34)
/* 027B3C 80026F3C 00097080 */  sll   $t6, $t1, 2
/* 027B40 80026F40 000FC880 */  sll   $t9, $t7, 2
/* 027B44 80026F44 0319C021 */  addu  $t8, $t8, $t9
/* 027B48 80026F48 8F18DE34 */  lw    $t8, %lo(D_800DDE34)($t8)
/* 027B4C 80026F4C 0008CA40 */  sll   $t9, $t0, 9
/* 027B50 80026F50 83AF002F */  lb    $t7, 0x2f($sp)
/* 027B54 80026F54 030E5821 */  addu  $t3, $t8, $t6
/* 027B58 80026F58 8D6D0000 */  lw    $t5, ($t3)
/* 027B5C 80026F5C 000A5A03 */  sra   $t3, $t2, 8
/* 027B60 80026F60 000B61C0 */  sll   $t4, $t3, 7
/* 027B64 80026F64 01B9C021 */  addu  $t8, $t5, $t9
/* 027B68 80026F68 030C2821 */  addu  $a1, $t8, $t4
/* 027B6C 80026F6C 83B80027 */  lb    $t8, 0x27($sp)
/* 027B70 80026F70 0010CB00 */  sll   $t9, $s0, 0xc
/* 027B74 80026F74 000F6B80 */  sll   $t5, $t7, 0xe
/* 027B78 80026F78 01B97021 */  addu  $t6, $t5, $t9
/* 027B7C 80026F7C 00186240 */  sll   $t4, $t8, 9
/* 027B80 80026F80 01CC7821 */  addu  $t7, $t6, $t4
/* 027B84 80026F84 3C19802F */  lui   $t9, %hi(D_802F1F80) # $t9, 0x802f
/* 027B88 80026F88 27391F80 */  addiu $t9, %lo(D_802F1F80) # addiu $t9, $t9, 0x1f80
/* 027B8C 80026F8C 25ED0180 */  addiu $t5, $t7, 0x180
/* 027B90 80026F90 01B93021 */  addu  $a2, $t5, $t9
/* 027B94 80026F94 0C009F1D */  jal   func_80027C74
/* 027B98 80026F98 24070080 */   li    $a3, 128
/* 027B9C 80026F9C 1000001B */  b     .L8002700C
/* 027BA0 80026FA0 8FBF001C */   lw    $ra, 0x1c($sp)
.L80026FA4:
/* 027BA4 80026FA4 948B0254 */  lhu   $t3, 0x254($a0)
/* 027BA8 80026FA8 00096080 */  sll   $t4, $t1, 2
/* 027BAC 80026FAC 24070080 */  li    $a3, 128
/* 027BB0 80026FB0 000BC080 */  sll   $t8, $t3, 2
/* 027BB4 80026FB4 01D87021 */  addu  $t6, $t6, $t8
/* 027BB8 80026FB8 8DCEDE54 */  lw    $t6, %lo(D_800DDE54)($t6)
/* 027BBC 80026FBC 0008C240 */  sll   $t8, $t0, 9
/* 027BC0 80026FC0 83AB002F */  lb    $t3, 0x2f($sp)
/* 027BC4 80026FC4 01CC7821 */  addu  $t7, $t6, $t4
/* 027BC8 80026FC8 8DED0000 */  lw    $t5, ($t7)
/* 027BCC 80026FCC 000A7A03 */  sra   $t7, $t2, 8
/* 027BD0 80026FD0 000FC9C0 */  sll   $t9, $t7, 7
/* 027BD4 80026FD4 01B87021 */  addu  $t6, $t5, $t8
/* 027BD8 80026FD8 01D92821 */  addu  $a1, $t6, $t9
/* 027BDC 80026FDC 83AE0027 */  lb    $t6, 0x27($sp)
/* 027BE0 80026FE0 0010C300 */  sll   $t8, $s0, 0xc
/* 027BE4 80026FE4 000B6B80 */  sll   $t5, $t3, 0xe
/* 027BE8 80026FE8 01B86021 */  addu  $t4, $t5, $t8
/* 027BEC 80026FEC 000ECA40 */  sll   $t9, $t6, 9
/* 027BF0 80026FF0 01995821 */  addu  $t3, $t4, $t9
/* 027BF4 80026FF4 3C18802F */  lui   $t8, %hi(D_802F1F80) # $t8, 0x802f
/* 027BF8 80026FF8 27181F80 */  addiu $t8, %lo(D_802F1F80) # addiu $t8, $t8, 0x1f80
/* 027BFC 80026FFC 256D0180 */  addiu $t5, $t3, 0x180
/* 027C00 80027000 0C009F1D */  jal   func_80027C74
/* 027C04 80027004 01B83021 */   addu  $a2, $t5, $t8
/* 027C08 80027008 8FBF001C */  lw    $ra, 0x1c($sp)
.L8002700C:
/* 027C0C 8002700C 8FB00018 */  lw    $s0, 0x18($sp)
/* 027C10 80027010 27BD0020 */  addiu $sp, $sp, 0x20
/* 027C14 80027014 03E00008 */  jr    $ra
/* 027C18 80027018 00000000 */   nop   

/* 027C1C 8002701C 03E00008 */  jr    $ra
/* 027C20 80027020 00000000 */   nop   

/* 027C24 80027024 AFA40000 */  sw    $a0, ($sp)
/* 027C28 80027028 AFA50004 */  sw    $a1, 4($sp)
/* 027C2C 8002702C 03E00008 */  jr    $ra
/* 027C30 80027030 AFA60008 */   sw    $a2, 8($sp)

/* 027C34 80027034 00000000 */  nop   
/* 027C38 80027038 00000000 */  nop   
