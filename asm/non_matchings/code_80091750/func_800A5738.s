.section .rodata

glabel D_800F0C6C
.asciiz "'"

.balign 4
glabel D_800F0C70
.asciiz "\""

.balign 4
glabel D_800F0C74
.asciiz "'"

.balign 4
glabel D_800F0C78
.asciiz "\""

.section .late_rodata

glabel D_800F1DD8
.float 0.8

glabel jpt_800F1DDC
.word L800A5940, L800A5F90, L800A5F90, L800A5F90
.word L800A5F90, L800A5F90, L800A5F90, L800A5F90
.word L800A5F90, L800A5F90, L800A5940, L800A5940
.word L800A5940, L800A5940, L800A5940, L800A5940
.word L800A5F90, L800A5F90, L800A5F90, L800A5F90
.word L800A5BA8, L800A5BA8, L800A5BA8, L800A5BA8
.word L800A5BA8, L800A5BA8, L800A5F90, L800A5F90
.word L800A5F90, L800A5C18, L800A5C18, L800A5DA0
.word L800A5F90, L800A5F90, L800A5E00, L800A5E00
.word L800A5F90, L800A5F90, L800A5F90, L800A5ED4
.word L800A5F34

glabel D_800F1E80
.float 0.8

glabel D_800F1E84
.float 0.8

glabel D_800F1E88
.float 0.8

glabel D_800F1E8C
.float 0.8

glabel D_800F1E90
.float 0.8

glabel D_800F1E94
.float 0.8

glabel D_800F1E98
.float 0.8

glabel jpt_800F1E9C
.word L800A5FB4, L800A5FB4, L800A5FB4, L800A5FB4
.word L800A5FB4, L800A5FB4, L800A6014, L800A6014
.word L800A6014, L800A6014, L800A6014, L800A6014
.word L800A6014, L800A6014, L800A6014, L800A6014
.word L800A6014, L800A6014, L800A6014, L800A5FCC
.word L800A5FCC, L800A6014, L800A6014, L800A6014
.word L800A5FE4, L800A5FE4

.section .text

glabel func_800A5738
/* 0A6338 800A5738 27BDFF60 */  addiu $sp, $sp, -0xa0
/* 0A633C 800A573C AFBF0044 */  sw    $ra, 0x44($sp)
/* 0A6340 800A5740 AFB30040 */  sw    $s3, 0x40($sp)
/* 0A6344 800A5744 AFB2003C */  sw    $s2, 0x3c($sp)
/* 0A6348 800A5748 AFB10038 */  sw    $s1, 0x38($sp)
/* 0A634C 800A574C AFB00034 */  sw    $s0, 0x34($sp)
/* 0A6350 800A5750 F7B40028 */  sdc1  $f20, 0x28($sp)
/* 0A6354 800A5754 8C830004 */  lw    $v1, 4($a0)
/* 0A6358 800A5758 00809825 */  move  $s3, $a0
/* 0A635C 800A575C 24010001 */  li    $at, 1
/* 0A6360 800A5760 14600037 */  bnez  $v1, .L800A5840
/* 0A6364 800A5764 3C108015 */   lui   $s0, %hi(gDisplayListHead) # 0x8015
/* 0A6368 800A5768 8C8E001C */  lw    $t6, 0x1c($a0)
/* 0A636C 800A576C 3C0F800E */  lui   $t7, %hi(gGlobalTimer) # $t7, 0x800e
/* 0A6370 800A5770 29C1001E */  slti  $at, $t6, 0x1e
/* 0A6374 800A5774 54200228 */  bnel  $at, $zero, .L800A6018
/* 0A6378 800A5778 8FBF0044 */   lw    $ra, 0x44($sp)
/* 0A637C 800A577C 8DEFC54C */  lw    $t7, %lo(gGlobalTimer)($t7)
/* 0A6380 800A5780 3C11800E */  lui   $s1, %hi(gTextPauseButton) # $s1, 0x800e
/* 0A6384 800A5784 2631775C */  addiu $s1, %lo(gTextPauseButton) # addiu $s1, $s1, 0x775c
/* 0A6388 800A5788 05E10003 */  bgez  $t7, .L800A5798
/* 0A638C 800A578C 000FC103 */   sra   $t8, $t7, 4
/* 0A6390 800A5790 25E1000F */  addiu $at, $t7, 0xf
/* 0A6394 800A5794 0001C103 */  sra   $t8, $at, 4
.L800A5798:
/* 0A6398 800A5798 07010004 */  bgez  $t8, .L800A57AC
/* 0A639C 800A579C 33190001 */   andi  $t9, $t8, 1
/* 0A63A0 800A57A0 13200002 */  beqz  $t9, .L800A57AC
/* 0A63A4 800A57A4 00000000 */   nop   
/* 0A63A8 800A57A8 2739FFFE */  addiu $t9, $t9, -2
.L800A57AC:
/* 0A63AC 800A57AC 5320021A */  beql  $t9, $zero, .L800A6018
/* 0A63B0 800A57B0 8FBF0044 */   lw    $ra, 0x44($sp)
/* 0A63B4 800A57B4 0C024C0D */  jal   get_string_width
/* 0A63B8 800A57B8 8E240014 */   lw    $a0, 0x14($s1)
/* 0A63BC 800A57BC 44822000 */  mtc1  $v0, $f4
/* 0A63C0 800A57C0 3C01800F */  lui   $at, %hi(D_800F1DD8) # $at, 0x800f
/* 0A63C4 800A57C4 C4341DD8 */  lwc1  $f20, %lo(D_800F1DD8)($at)
/* 0A63C8 800A57C8 468021A0 */  cvt.s.w $f6, $f4
/* 0A63CC 800A57CC 3C108015 */  lui   $s0, %hi(gDisplayListHead) # $s0, 0x8015
/* 0A63D0 800A57D0 26100298 */  addiu $s0, %lo(gDisplayListHead) # addiu $s0, $s0, 0x298
/* 0A63D4 800A57D4 24090032 */  li    $t1, 50
/* 0A63D8 800A57D8 240A0096 */  li    $t2, 150
/* 0A63DC 800A57DC AFAA0020 */  sw    $t2, 0x20($sp)
/* 0A63E0 800A57E0 46143202 */  mul.s $f8, $f6, $f20
/* 0A63E4 800A57E4 AFA90010 */  sw    $t1, 0x10($sp)
/* 0A63E8 800A57E8 8E040000 */  lw    $a0, ($s0)
/* 0A63EC 800A57EC 240500C0 */  li    $a1, 192
/* 0A63F0 800A57F0 24060021 */  li    $a2, 33
/* 0A63F4 800A57F4 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A63F8 800A57F8 AFA00018 */  sw    $zero, 0x18($sp)
/* 0A63FC 800A57FC 4600428D */  trunc.w.s $f10, $f8
/* 0A6400 800A5800 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A6404 800A5804 44075000 */  mfc1  $a3, $f10
/* 0A6408 800A5808 0C02637E */  jal   draw_box
/* 0A640C 800A580C 24E700C6 */   addiu $a3, $a3, 0xc6
/* 0A6410 800A5810 AE020000 */  sw    $v0, ($s0)
/* 0A6414 800A5814 0C024C36 */  jal   set_text_color
/* 0A6418 800A5818 24040001 */   li    $a0, 1
/* 0A641C 800A581C 240400BF */  li    $a0, 191
/* 0A6420 800A5820 24050030 */  li    $a1, 48
/* 0A6424 800A5824 8E260014 */  lw    $a2, 0x14($s1)
/* 0A6428 800A5828 00003825 */  move  $a3, $zero
/* 0A642C 800A582C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6430 800A5830 0C024CC9 */  jal   func_80093324
/* 0A6434 800A5834 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A6438 800A5838 100001F7 */  b     .L800A6018
/* 0A643C 800A583C 8FBF0044 */   lw    $ra, 0x44($sp)
.L800A5840:
/* 0A6440 800A5840 14610009 */  bne   $v1, $at, .L800A5868
/* 0A6444 800A5844 26100298 */   addiu $s0, $s0, %lo(gDisplayListHead) # 0x298
/* 0A6448 800A5848 8E71001C */  lw    $s1, 0x1c($s3)
/* 0A644C 800A584C 2401008C */  li    $at, 140
/* 0A6450 800A5850 00119200 */  sll   $s2, $s1, 8
/* 0A6454 800A5854 02519023 */  subu  $s2, $s2, $s1
/* 0A6458 800A5858 0241001A */  div   $zero, $s2, $at
/* 0A645C 800A585C 00009012 */  mflo  $s2
/* 0A6460 800A5860 10000004 */  b     .L800A5874
/* 0A6464 800A5864 240C00EF */   li    $t4, 239
.L800A5868:
/* 0A6468 800A5868 2411008C */  li    $s1, 140
/* 0A646C 800A586C 241200FF */  li    $s2, 255
/* 0A6470 800A5870 240C00EF */  li    $t4, 239
.L800A5874:
/* 0A6474 800A5874 AFAC0010 */  sw    $t4, 0x10($sp)
/* 0A6478 800A5878 8E040000 */  lw    $a0, ($s0)
/* 0A647C 800A587C 00002825 */  move  $a1, $zero
/* 0A6480 800A5880 00003025 */  move  $a2, $zero
/* 0A6484 800A5884 2407013F */  li    $a3, 319
/* 0A6488 800A5888 AFA00014 */  sw    $zero, 0x14($sp)
/* 0A648C 800A588C AFA00018 */  sw    $zero, 0x18($sp)
/* 0A6490 800A5890 AFA0001C */  sw    $zero, 0x1c($sp)
/* 0A6494 800A5894 0C02637E */  jal   draw_box
/* 0A6498 800A5898 AFB10020 */   sw    $s1, 0x20($sp)
/* 0A649C 800A589C AE020000 */  sw    $v0, ($s0)
/* 0A64A0 800A58A0 244D0008 */  addiu $t5, $v0, 8
/* 0A64A4 800A58A4 AE0D0000 */  sw    $t5, ($s0)
/* 0A64A8 800A58A8 3C0EFA00 */  lui   $t6, 0xfa00
/* 0A64AC 800A58AC 324F00FF */  andi  $t7, $s2, 0xff
/* 0A64B0 800A58B0 AC4F0004 */  sw    $t7, 4($v0)
/* 0A64B4 800A58B4 AC4E0000 */  sw    $t6, ($v0)
/* 0A64B8 800A58B8 0C024C36 */  jal   set_text_color
/* 0A64BC 800A58BC 24040003 */   li    $a0, 3
/* 0A64C0 800A58C0 3C188019 */  lui   $t8, %hi(gCupSelection) # $t8, 0x8019
/* 0A64C4 800A58C4 3C088019 */  lui   $t0, %hi(gCupCourseSelection) # $t0, 0x8019
/* 0A64C8 800A58C8 8108EE0B */  lb    $t0, %lo(gCupCourseSelection)($t0)
/* 0A64CC 800A58CC 8318EE09 */  lb    $t8, %lo(gCupSelection)($t8)
/* 0A64D0 800A58D0 3C0B800F */  lui   $t3, %hi(gCupCourseOrder)
/* 0A64D4 800A58D4 00084840 */  sll   $t1, $t0, 1
/* 0A64D8 800A58D8 0018C8C0 */  sll   $t9, $t8, 3
/* 0A64DC 800A58DC 03295021 */  addu  $t2, $t9, $t1
/* 0A64E0 800A58E0 016A5821 */  addu  $t3, $t3, $t2
/* 0A64E4 800A58E4 856B2BB4 */  lh    $t3, %lo(gCupCourseOrder)($t3)
/* 0A64E8 800A58E8 3C013F80 */  li    $at, 0x3F800000 # 1.000000
/* 0A64EC 800A58EC 44810000 */  mtc1  $at, $f0
/* 0A64F0 800A58F0 3C06800E */  lui   $a2, %hi(D_800E7574)
/* 0A64F4 800A58F4 000B6080 */  sll   $t4, $t3, 2
/* 0A64F8 800A58F8 00CC3021 */  addu  $a2, $a2, $t4
/* 0A64FC 800A58FC 8CC67574 */  lw    $a2, %lo(D_800E7574)($a2)
/* 0A6500 800A5900 240400A0 */  li    $a0, 160
/* 0A6504 800A5904 24050050 */  li    $a1, 80
/* 0A6508 800A5908 00003825 */  move  $a3, $zero
/* 0A650C 800A590C E7A00010 */  swc1  $f0, 0x10($sp)
/* 0A6510 800A5910 0C024DD5 */  jal   func_80093754
/* 0A6514 800A5914 E7A00014 */   swc1  $f0, 0x14($sp)
/* 0A6518 800A5918 8E630004 */  lw    $v1, 4($s3)
/* 0A651C 800A591C 246DFFFF */  addiu $t5, $v1, -1
/* 0A6520 800A5920 2DA10029 */  sltiu $at, $t5, 0x29
/* 0A6524 800A5924 1020019A */  beqz  $at, .L800A5F90
/* 0A6528 800A5928 000D6880 */   sll   $t5, $t5, 2
/* 0A652C 800A592C 3C01800F */  lui   $at, %hi(jpt_800F1DDC)
/* 0A6530 800A5930 002D0821 */  addu  $at, $at, $t5
/* 0A6534 800A5934 8C2D1DDC */  lw    $t5, %lo(jpt_800F1DDC)($at)
/* 0A6538 800A5938 01A00008 */  jr    $t5
/* 0A653C 800A593C 00000000 */   nop   
glabel L800A5940
/* 0A6540 800A5940 0C024C36 */  jal   set_text_color
/* 0A6544 800A5944 24040002 */   li    $a0, 2
/* 0A6548 800A5948 3C01800F */  lui   $at, %hi(D_800F1E80) # $at, 0x800f
/* 0A654C 800A594C C4341E80 */  lwc1  $f20, %lo(D_800F1E80)($at)
/* 0A6550 800A5950 3C12800E */  lui   $s2, %hi(D_800E7728) # $s2, 0x800e
/* 0A6554 800A5954 26527728 */  addiu $s2, %lo(D_800E7728) # addiu $s2, $s2, 0x7728
/* 0A6558 800A5958 8E460000 */  lw    $a2, ($s2)
/* 0A655C 800A595C 2404009D */  li    $a0, 157
/* 0A6560 800A5960 24050060 */  li    $a1, 96
/* 0A6564 800A5964 00003825 */  move  $a3, $zero
/* 0A6568 800A5968 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A656C 800A596C 0C024DD5 */  jal   func_80093754
/* 0A6570 800A5970 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A6574 800A5974 0C02D389 */  jal   func_800B4E24
/* 0A6578 800A5978 00002025 */   move  $a0, $zero
/* 0A657C 800A597C 3C01000F */  lui   $at, (0x000FFFFF >> 16) # lui $at, 0xf
/* 0A6580 800A5980 3421FFFF */  ori   $at, (0x000FFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0A6584 800A5984 27B00084 */  addiu $s0, $sp, 0x84
/* 0A6588 800A5988 00412024 */  and   $a0, $v0, $at
/* 0A658C 800A598C 00808825 */  move  $s1, $a0
/* 0A6590 800A5990 0C029E3D */  jal   get_time_record_minutes
/* 0A6594 800A5994 02002825 */   move  $a1, $s0
/* 0A6598 800A5998 2404007F */  li    $a0, 127
/* 0A659C 800A599C 2405006D */  li    $a1, 109
/* 0A65A0 800A59A0 02003025 */  move  $a2, $s0
/* 0A65A4 800A59A4 00003825 */  move  $a3, $zero
/* 0A65A8 800A59A8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A65AC 800A59AC 0C024E7F */  jal   text_draw
/* 0A65B0 800A59B0 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A65B4 800A59B4 3C06800F */  lui   $a2, %hi(D_800F0C6C) # $a2, 0x800f
/* 0A65B8 800A59B8 24C60C6C */  addiu $a2, %lo(D_800F0C6C) # addiu $a2, $a2, 0xc6c
/* 0A65BC 800A59BC 2404008E */  li    $a0, 142
/* 0A65C0 800A59C0 2405006D */  li    $a1, 109
/* 0A65C4 800A59C4 00003825 */  move  $a3, $zero
/* 0A65C8 800A59C8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A65CC 800A59CC 0C024CD6 */  jal   func_80093358
/* 0A65D0 800A59D0 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A65D4 800A59D4 02202025 */  move  $a0, $s1
/* 0A65D8 800A59D8 0C029E51 */  jal   get_time_record_seconds
/* 0A65DC 800A59DC 02002825 */   move  $a1, $s0
/* 0A65E0 800A59E0 24040098 */  li    $a0, 152
/* 0A65E4 800A59E4 2405006D */  li    $a1, 109
/* 0A65E8 800A59E8 02003025 */  move  $a2, $s0
/* 0A65EC 800A59EC 00003825 */  move  $a3, $zero
/* 0A65F0 800A59F0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A65F4 800A59F4 0C024E7F */  jal   text_draw
/* 0A65F8 800A59F8 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A65FC 800A59FC 3C06800F */  lui   $a2, %hi(D_800F0C70) # $a2, 0x800f
/* 0A6600 800A5A00 24C60C70 */  addiu $a2, %lo(D_800F0C70) # addiu $a2, $a2, 0xc70
/* 0A6604 800A5A04 240400A7 */  li    $a0, 167
/* 0A6608 800A5A08 2405006D */  li    $a1, 109
/* 0A660C 800A5A0C 00003825 */  move  $a3, $zero
/* 0A6610 800A5A10 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6614 800A5A14 0C024CD6 */  jal   func_80093358
/* 0A6618 800A5A18 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A661C 800A5A1C 02202025 */  move  $a0, $s1
/* 0A6620 800A5A20 0C029E69 */  jal   get_time_record_centiseconds
/* 0A6624 800A5A24 02002825 */   move  $a1, $s0
/* 0A6628 800A5A28 240400B3 */  li    $a0, 179
/* 0A662C 800A5A2C 2405006D */  li    $a1, 109
/* 0A6630 800A5A30 02003025 */  move  $a2, $s0
/* 0A6634 800A5A34 00003825 */  move  $a3, $zero
/* 0A6638 800A5A38 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A663C 800A5A3C 0C024E7F */  jal   text_draw
/* 0A6640 800A5A40 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A6644 800A5A44 2404009D */  li    $a0, 157
/* 0A6648 800A5A48 2405007C */  li    $a1, 124
/* 0A664C 800A5A4C 8E460004 */  lw    $a2, 4($s2)
/* 0A6650 800A5A50 00003825 */  move  $a3, $zero
/* 0A6654 800A5A54 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6658 800A5A58 0C024DD5 */  jal   func_80093754
/* 0A665C 800A5A5C E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A6660 800A5A60 0C02D3CB */  jal   func_800B4F2C
/* 0A6664 800A5A64 00000000 */   nop   
/* 0A6668 800A5A68 3C01000F */  lui   $at, (0x000FFFFF >> 16) # lui $at, 0xf
/* 0A666C 800A5A6C 3421FFFF */  ori   $at, (0x000FFFFF & 0xFFFF) # ori $at, $at, 0xffff
/* 0A6670 800A5A70 00412024 */  and   $a0, $v0, $at
/* 0A6674 800A5A74 00808825 */  move  $s1, $a0
/* 0A6678 800A5A78 0C029E3D */  jal   get_time_record_minutes
/* 0A667C 800A5A7C 02002825 */   move  $a1, $s0
/* 0A6680 800A5A80 2404007F */  li    $a0, 127
/* 0A6684 800A5A84 24050089 */  li    $a1, 137
/* 0A6688 800A5A88 02003025 */  move  $a2, $s0
/* 0A668C 800A5A8C 00003825 */  move  $a3, $zero
/* 0A6690 800A5A90 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6694 800A5A94 0C024E7F */  jal   text_draw
/* 0A6698 800A5A98 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A669C 800A5A9C 3C06800F */  lui   $a2, %hi(D_800F0C74) # $a2, 0x800f
/* 0A66A0 800A5AA0 24C60C74 */  addiu $a2, %lo(D_800F0C74) # addiu $a2, $a2, 0xc74
/* 0A66A4 800A5AA4 2404008E */  li    $a0, 142
/* 0A66A8 800A5AA8 24050089 */  li    $a1, 137
/* 0A66AC 800A5AAC 00003825 */  move  $a3, $zero
/* 0A66B0 800A5AB0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A66B4 800A5AB4 0C024CD6 */  jal   func_80093358
/* 0A66B8 800A5AB8 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A66BC 800A5ABC 02202025 */  move  $a0, $s1
/* 0A66C0 800A5AC0 0C029E51 */  jal   get_time_record_seconds
/* 0A66C4 800A5AC4 02002825 */   move  $a1, $s0
/* 0A66C8 800A5AC8 24040098 */  li    $a0, 152
/* 0A66CC 800A5ACC 24050089 */  li    $a1, 137
/* 0A66D0 800A5AD0 02003025 */  move  $a2, $s0
/* 0A66D4 800A5AD4 00003825 */  move  $a3, $zero
/* 0A66D8 800A5AD8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A66DC 800A5ADC 0C024E7F */  jal   text_draw
/* 0A66E0 800A5AE0 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A66E4 800A5AE4 3C06800F */  lui   $a2, %hi(D_800F0C78) # $a2, 0x800f
/* 0A66E8 800A5AE8 24C60C78 */  addiu $a2, %lo(D_800F0C78) # addiu $a2, $a2, 0xc78
/* 0A66EC 800A5AEC 240400A7 */  li    $a0, 167
/* 0A66F0 800A5AF0 24050089 */  li    $a1, 137
/* 0A66F4 800A5AF4 00003825 */  move  $a3, $zero
/* 0A66F8 800A5AF8 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A66FC 800A5AFC 0C024CD6 */  jal   func_80093358
/* 0A6700 800A5B00 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A6704 800A5B04 02202025 */  move  $a0, $s1
/* 0A6708 800A5B08 0C029E69 */  jal   get_time_record_centiseconds
/* 0A670C 800A5B0C 02002825 */   move  $a1, $s0
/* 0A6710 800A5B10 240400B3 */  li    $a0, 179
/* 0A6714 800A5B14 24050089 */  li    $a1, 137
/* 0A6718 800A5B18 02003025 */  move  $a2, $s0
/* 0A671C 800A5B1C 00003825 */  move  $a3, $zero
/* 0A6720 800A5B20 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6724 800A5B24 0C024E7F */  jal   text_draw
/* 0A6728 800A5B28 E7B40014 */   swc1  $f20, 0x14($sp)
/* 0A672C 800A5B2C 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 0A6730 800A5B30 3C02800E */  lui   $v0, %hi(gTextPauseButton) # $v0, 0x800e
/* 0A6734 800A5B34 4481A000 */  mtc1  $at, $f20
/* 0A6738 800A5B38 2442775C */  addiu $v0, %lo(gTextPauseButton) # addiu $v0, $v0, 0x775c
/* 0A673C 800A5B3C 00008825 */  move  $s1, $zero
/* 0A6740 800A5B40 00008025 */  move  $s0, $zero
/* 0A6744 800A5B44 24120006 */  li    $s2, 6
.L800A5B48:
/* 0A6748 800A5B48 8E640004 */  lw    $a0, 4($s3)
/* 0A674C 800A5B4C AFA20050 */  sw    $v0, 0x50($sp)
/* 0A6750 800A5B50 02202825 */  move  $a1, $s1
/* 0A6754 800A5B54 24060001 */  li    $a2, 1
/* 0A6758 800A5B58 0C024870 */  jal   set_text_color_rainbow_if_selected_and_detect_kind_menu
/* 0A675C 800A5B5C 2484FFF5 */   addiu $a0, $a0, -0xb
/* 0A6760 800A5B60 3C0E800F */  lui   $t6, %hi(D_800E8538 + 2) # $t6, 0x800f
/* 0A6764 800A5B64 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A6768 800A5B68 85CE853A */  lh    $t6, %lo(D_800E8538 + 2)($t6)
/* 0A676C 800A5B6C 3C04800F */  lui   $a0, %hi(D_800E8538) # $a0, 0x800f
/* 0A6770 800A5B70 84848538 */  lh    $a0, %lo(D_800E8538)($a0)
/* 0A6774 800A5B74 00003825 */  move  $a3, $zero
/* 0A6778 800A5B78 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A677C 800A5B7C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A6780 800A5B80 8C460004 */  lw    $a2, 4($v0)
/* 0A6784 800A5B84 0C024CD6 */  jal   func_80093358
/* 0A6788 800A5B88 01D02821 */   addu  $a1, $t6, $s0
/* 0A678C 800A5B8C 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A6790 800A5B90 26310001 */  addiu $s1, $s1, 1
/* 0A6794 800A5B94 2610000D */  addiu $s0, $s0, 0xd
/* 0A6798 800A5B98 1632FFEB */  bne   $s1, $s2, .L800A5B48
/* 0A679C 800A5B9C 24420004 */   addiu $v0, $v0, 4
/* 0A67A0 800A5BA0 100000FB */  b     .L800A5F90
/* 0A67A4 800A5BA4 8E630004 */   lw    $v1, 4($s3)
glabel L800A5BA8
/* 0A67A8 800A5BA8 0C024C36 */  jal   set_text_color
/* 0A67AC 800A5BAC 24040003 */   li    $a0, 3
/* 0A67B0 800A5BB0 8E630004 */  lw    $v1, 4($s3)
/* 0A67B4 800A5BB4 3C08800E */  lui   $t0, %hi(D_800E798C) # $t0, 0x800e
/* 0A67B8 800A5BB8 2508798C */  addiu $t0, %lo(D_800E798C) # addiu $t0, $t0, 0x798c
/* 0A67BC 800A5BBC 2463FFEB */  addiu $v1, $v1, -0x15
/* 0A67C0 800A5BC0 000378C0 */  sll   $t7, $v1, 3
/* 0A67C4 800A5BC4 01E37823 */  subu  $t7, $t7, $v1
/* 0A67C8 800A5BC8 000FC080 */  sll   $t8, $t7, 2
/* 0A67CC 800A5BCC 3C01800F */  lui   $at, %hi(D_800F1E84) # $at, 0x800f
/* 0A67D0 800A5BD0 C4341E84 */  lwc1  $f20, %lo(D_800F1E84)($at)
/* 0A67D4 800A5BD4 03081021 */  addu  $v0, $t8, $t0
/* 0A67D8 800A5BD8 2410006E */  li    $s0, 110
/* 0A67DC 800A5BDC 241100C9 */  li    $s1, 201
.L800A5BE0:
/* 0A67E0 800A5BE0 2404004D */  li    $a0, 77
/* 0A67E4 800A5BE4 02002825 */  move  $a1, $s0
/* 0A67E8 800A5BE8 8C460000 */  lw    $a2, ($v0)
/* 0A67EC 800A5BEC 00003825 */  move  $a3, $zero
/* 0A67F0 800A5BF0 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A67F4 800A5BF4 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A67F8 800A5BF8 0C024CC9 */  jal   func_80093324
/* 0A67FC 800A5BFC AFA20050 */   sw    $v0, 0x50($sp)
/* 0A6800 800A5C00 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A6804 800A5C04 2610000D */  addiu $s0, $s0, 0xd
/* 0A6808 800A5C08 1611FFF5 */  bne   $s0, $s1, .L800A5BE0
/* 0A680C 800A5C0C 24420004 */   addiu $v0, $v0, 4
/* 0A6810 800A5C10 100000DF */  b     .L800A5F90
/* 0A6814 800A5C14 8E630004 */   lw    $v1, 4($s3)
glabel L800A5C18
/* 0A6818 800A5C18 0C024C36 */  jal   set_text_color
/* 0A681C 800A5C1C 24040001 */   li    $a0, 1
/* 0A6820 800A5C20 3C02800E */  lui   $v0, %hi(D_800E7A3C) # $v0, 0x800e
/* 0A6824 800A5C24 3C01800F */  lui   $at, %hi(D_800F1E88) # $at, 0x800f
/* 0A6828 800A5C28 3C11800E */  lui   $s1, %hi(D_800E7A44) # $s1, 0x800e
/* 0A682C 800A5C2C 26317A44 */  addiu $s1, %lo(D_800E7A44) # addiu $s1, $s1, 0x7a44
/* 0A6830 800A5C30 C4341E88 */  lwc1  $f20, %lo(D_800F1E88)($at)
/* 0A6834 800A5C34 24427A3C */  addiu $v0, %lo(D_800E7A3C) # addiu $v0, $v0, 0x7a3c
/* 0A6838 800A5C38 00008025 */  move  $s0, $zero
/* 0A683C 800A5C3C 8E790010 */  lw    $t9, 0x10($s3)
.L800A5C40:
/* 0A6840 800A5C40 AFA20050 */  sw    $v0, 0x50($sp)
/* 0A6844 800A5C44 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A6848 800A5C48 03302821 */  addu  $a1, $t9, $s0
/* 0A684C 800A5C4C 24A5006E */  addiu $a1, $a1, 0x6e
/* 0A6850 800A5C50 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6854 800A5C54 2404005A */  li    $a0, 90
/* 0A6858 800A5C58 8C460000 */  lw    $a2, ($v0)
/* 0A685C 800A5C5C 0C024CC9 */  jal   func_80093324
/* 0A6860 800A5C60 00003825 */   move  $a3, $zero
/* 0A6864 800A5C64 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A6868 800A5C68 2610000D */  addiu $s0, $s0, 0xd
/* 0A686C 800A5C6C 24420004 */  addiu $v0, $v0, 4
/* 0A6870 800A5C70 0051082B */  sltu  $at, $v0, $s1
/* 0A6874 800A5C74 5420FFF2 */  bnel  $at, $zero, .L800A5C40
/* 0A6878 800A5C78 8E790010 */   lw    $t9, 0x10($s3)
/* 0A687C 800A5C7C 3C013F40 */  li    $at, 0x3F400000 # 0.750000
/* 0A6880 800A5C80 3C128019 */  lui   $s2, %hi(D_8018EE10) # $s2, 0x8019
/* 0A6884 800A5C84 4481A000 */  mtc1  $at, $f20
/* 0A6888 800A5C88 2652EE10 */  addiu $s2, %lo(D_8018EE10) # addiu $s2, $s2, -0x11f0
/* 0A688C 800A5C8C 00008825 */  move  $s1, $zero
/* 0A6890 800A5C90 24100096 */  li    $s0, 150
.L800A5C94:
/* 0A6894 800A5C94 8E640004 */  lw    $a0, 4($s3)
/* 0A6898 800A5C98 02202825 */  move  $a1, $s1
/* 0A689C 800A5C9C 24060001 */  li    $a2, 1
/* 0A68A0 800A5CA0 0C024870 */  jal   set_text_color_rainbow_if_selected_and_detect_kind_menu
/* 0A68A4 800A5CA4 2484FFE2 */   addiu $a0, $a0, -0x1e
/* 0A68A8 800A5CA8 26240001 */  addiu $a0, $s1, 1
/* 0A68AC 800A5CAC AFA40054 */  sw    $a0, 0x54($sp)
/* 0A68B0 800A5CB0 0C029E25 */  jal   convert_number_to_ascii
/* 0A68B4 800A5CB4 27A5005C */   addiu $a1, $sp, 0x5c
/* 0A68B8 800A5CB8 8E69000C */  lw    $t1, 0xc($s3)
/* 0A68BC 800A5CBC 240A005A */  li    $t2, 90
/* 0A68C0 800A5CC0 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A68C4 800A5CC4 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A68C8 800A5CC8 02002825 */  move  $a1, $s0
/* 0A68CC 800A5CCC 27A6005D */  addiu $a2, $sp, 0x5d
/* 0A68D0 800A5CD0 00003825 */  move  $a3, $zero
/* 0A68D4 800A5CD4 0C024CC9 */  jal   func_80093324
/* 0A68D8 800A5CD8 01492023 */   subu  $a0, $t2, $t1
/* 0A68DC 800A5CDC 924B0004 */  lbu   $t3, 4($s2)
/* 0A68E0 800A5CE0 240F0069 */  li    $t7, 105
/* 0A68E4 800A5CE4 02002825 */  move  $a1, $s0
/* 0A68E8 800A5CE8 1560000D */  bnez  $t3, .L800A5D20
/* 0A68EC 800A5CEC 3C06800E */   lui   $a2, %hi(D_800E75C4)
/* 0A68F0 800A5CF0 8E6C000C */  lw    $t4, 0xc($s3)
/* 0A68F4 800A5CF4 240D0069 */  li    $t5, 105
/* 0A68F8 800A5CF8 3C06800E */  lui   $a2, %hi(D_800E7A44) # $a2, 0x800e
/* 0A68FC 800A5CFC 8CC67A44 */  lw    $a2, %lo(D_800E7A44)($a2)
/* 0A6900 800A5D00 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A6904 800A5D04 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6908 800A5D08 02002825 */  move  $a1, $s0
/* 0A690C 800A5D0C 00003825 */  move  $a3, $zero
/* 0A6910 800A5D10 0C024CC9 */  jal   func_80093324
/* 0A6914 800A5D14 01AC2023 */   subu  $a0, $t5, $t4
/* 0A6918 800A5D18 1000001B */  b     .L800A5D88
/* 0A691C 800A5D1C 8FB10054 */   lw    $s1, 0x54($sp)
.L800A5D20:
/* 0A6920 800A5D20 82420005 */  lb    $v0, 5($s2)
/* 0A6924 800A5D24 3C0B800F */  lui   $t3, %hi(gCupCourseOrder)
/* 0A6928 800A5D28 8E6E000C */  lw    $t6, 0xc($s3)
/* 0A692C 800A5D2C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A6930 800A5D30 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6934 800A5D34 00003825 */  move  $a3, $zero
/* 0A6938 800A5D38 01EE2023 */  subu  $a0, $t7, $t6
/* 0A693C 800A5D3C 04410003 */  bgez  $v0, .L800A5D4C
/* 0A6940 800A5D40 0002C083 */   sra   $t8, $v0, 2
/* 0A6944 800A5D44 24410003 */  addiu $at, $v0, 3
/* 0A6948 800A5D48 0001C083 */  sra   $t8, $at, 2
.L800A5D4C:
/* 0A694C 800A5D4C 001840C0 */  sll   $t0, $t8, 3
/* 0A6950 800A5D50 04410004 */  bgez  $v0, .L800A5D64
/* 0A6954 800A5D54 30590003 */   andi  $t9, $v0, 3
/* 0A6958 800A5D58 13200002 */  beqz  $t9, .L800A5D64
/* 0A695C 800A5D5C 00000000 */   nop   
/* 0A6960 800A5D60 2739FFFC */  addiu $t9, $t9, -4
.L800A5D64:
/* 0A6964 800A5D64 00195040 */  sll   $t2, $t9, 1
/* 0A6968 800A5D68 010A4821 */  addu  $t1, $t0, $t2
/* 0A696C 800A5D6C 01695821 */  addu  $t3, $t3, $t1
/* 0A6970 800A5D70 856B2BB4 */  lh    $t3, %lo(gCupCourseOrder)($t3)
/* 0A6974 800A5D74 000B6880 */  sll   $t5, $t3, 2
/* 0A6978 800A5D78 00CD3021 */  addu  $a2, $a2, $t5
/* 0A697C 800A5D7C 0C024CC9 */  jal   func_80093324
/* 0A6980 800A5D80 8CC675C4 */   lw    $a2, %lo(D_800E75C4)($a2)
/* 0A6984 800A5D84 8FB10054 */  lw    $s1, 0x54($sp)
.L800A5D88:
/* 0A6988 800A5D88 24010002 */  li    $at, 2
/* 0A698C 800A5D8C 26100014 */  addiu $s0, $s0, 0x14
/* 0A6990 800A5D90 1621FFC0 */  bne   $s1, $at, .L800A5C94
/* 0A6994 800A5D94 26520080 */   addiu $s2, $s2, 0x80
/* 0A6998 800A5D98 1000007D */  b     .L800A5F90
/* 0A699C 800A5D9C 8E630004 */   lw    $v1, 4($s3)
glabel L800A5DA0
/* 0A69A0 800A5DA0 0C024C36 */  jal   set_text_color
/* 0A69A4 800A5DA4 24040003 */   li    $a0, 3
/* 0A69A8 800A5DA8 3C02800E */  lui   $v0, %hi(D_800E7A48) # $v0, 0x800e
/* 0A69AC 800A5DAC 3C01800F */  lui   $at, %hi(D_800F1E8C) # $at, 0x800f
/* 0A69B0 800A5DB0 3C11800E */  lui   $s1, %hi(D_800E7A54) # $s1, 0x800e
/* 0A69B4 800A5DB4 26317A54 */  addiu $s1, %lo(D_800E7A54) # addiu $s1, $s1, 0x7a54
/* 0A69B8 800A5DB8 C4341E8C */  lwc1  $f20, %lo(D_800F1E8C)($at)
/* 0A69BC 800A5DBC 24427A48 */  addiu $v0, %lo(D_800E7A48) # addiu $v0, $v0, 0x7a48
/* 0A69C0 800A5DC0 2410006E */  li    $s0, 110
/* 0A69C4 800A5DC4 24040064 */  li    $a0, 100
.L800A5DC8:
/* 0A69C8 800A5DC8 02002825 */  move  $a1, $s0
/* 0A69CC 800A5DCC 8C460000 */  lw    $a2, ($v0)
/* 0A69D0 800A5DD0 00003825 */  move  $a3, $zero
/* 0A69D4 800A5DD4 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A69D8 800A5DD8 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A69DC 800A5DDC 0C024CC9 */  jal   func_80093324
/* 0A69E0 800A5DE0 AFA20050 */   sw    $v0, 0x50($sp)
/* 0A69E4 800A5DE4 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A69E8 800A5DE8 2610000D */  addiu $s0, $s0, 0xd
/* 0A69EC 800A5DEC 24420004 */  addiu $v0, $v0, 4
/* 0A69F0 800A5DF0 5451FFF5 */  bnel  $v0, $s1, .L800A5DC8
/* 0A69F4 800A5DF4 24040064 */   li    $a0, 100
/* 0A69F8 800A5DF8 10000065 */  b     .L800A5F90
/* 0A69FC 800A5DFC 8E630004 */   lw    $v1, 4($s3)
glabel L800A5E00
/* 0A6A00 800A5E00 0C024C36 */  jal   set_text_color
/* 0A6A04 800A5E04 24040003 */   li    $a0, 3
/* 0A6A08 800A5E08 3C02800E */  lui   $v0, %hi(D_800E7A60) # $v0, 0x800e
/* 0A6A0C 800A5E0C 3C01800F */  lui   $at, %hi(D_800F1E90) # $at, 0x800f
/* 0A6A10 800A5E10 3C11800E */  lui   $s1, %hi(D_800E7A6C) # $s1, 0x800e
/* 0A6A14 800A5E14 26317A6C */  addiu $s1, %lo(D_800E7A6C) # addiu $s1, $s1, 0x7a6c
/* 0A6A18 800A5E18 C4341E90 */  lwc1  $f20, %lo(D_800F1E90)($at)
/* 0A6A1C 800A5E1C 24427A60 */  addiu $v0, %lo(D_800E7A60) # addiu $v0, $v0, 0x7a60
/* 0A6A20 800A5E20 00008025 */  move  $s0, $zero
/* 0A6A24 800A5E24 8E6C0010 */  lw    $t4, 0x10($s3)
.L800A5E28:
/* 0A6A28 800A5E28 AFA20050 */  sw    $v0, 0x50($sp)
/* 0A6A2C 800A5E2C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A6A30 800A5E30 01902821 */  addu  $a1, $t4, $s0
/* 0A6A34 800A5E34 24A5006E */  addiu $a1, $a1, 0x6e
/* 0A6A38 800A5E38 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6A3C 800A5E3C 24040055 */  li    $a0, 85
/* 0A6A40 800A5E40 8C460000 */  lw    $a2, ($v0)
/* 0A6A44 800A5E44 0C024CC9 */  jal   func_80093324
/* 0A6A48 800A5E48 00003825 */   move  $a3, $zero
/* 0A6A4C 800A5E4C 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A6A50 800A5E50 2610000D */  addiu $s0, $s0, 0xd
/* 0A6A54 800A5E54 24420004 */  addiu $v0, $v0, 4
/* 0A6A58 800A5E58 0051082B */  sltu  $at, $v0, $s1
/* 0A6A5C 800A5E5C 5420FFF2 */  bnel  $at, $zero, .L800A5E28
/* 0A6A60 800A5E60 8E6C0010 */   lw    $t4, 0x10($s3)
/* 0A6A64 800A5E64 3C02800E */  lui   $v0, %hi(D_800E7A6C) # $v0, 0x800e
/* 0A6A68 800A5E68 24427A6C */  addiu $v0, %lo(D_800E7A6C) # addiu $v0, $v0, 0x7a6c
/* 0A6A6C 800A5E6C 00008825 */  move  $s1, $zero
/* 0A6A70 800A5E70 2410009B */  li    $s0, 155
/* 0A6A74 800A5E74 2412007D */  li    $s2, 125
.L800A5E78:
/* 0A6A78 800A5E78 8E640004 */  lw    $a0, 4($s3)
/* 0A6A7C 800A5E7C AFA20050 */  sw    $v0, 0x50($sp)
/* 0A6A80 800A5E80 02202825 */  move  $a1, $s1
/* 0A6A84 800A5E84 24060001 */  li    $a2, 1
/* 0A6A88 800A5E88 0C024870 */  jal   set_text_color_rainbow_if_selected_and_detect_kind_menu
/* 0A6A8C 800A5E8C 2484FFDD */   addiu $a0, $a0, -0x23
/* 0A6A90 800A5E90 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A6A94 800A5E94 8E6F000C */  lw    $t7, 0xc($s3)
/* 0A6A98 800A5E98 E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A6A9C 800A5E9C E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6AA0 800A5EA0 02002825 */  move  $a1, $s0
/* 0A6AA4 800A5EA4 00003825 */  move  $a3, $zero
/* 0A6AA8 800A5EA8 8C460000 */  lw    $a2, ($v0)
/* 0A6AAC 800A5EAC 0C024CC9 */  jal   func_80093324
/* 0A6AB0 800A5EB0 024F2023 */   subu  $a0, $s2, $t7
/* 0A6AB4 800A5EB4 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A6AB8 800A5EB8 26310001 */  addiu $s1, $s1, 1
/* 0A6ABC 800A5EBC 24010002 */  li    $at, 2
/* 0A6AC0 800A5EC0 2610000F */  addiu $s0, $s0, 0xf
/* 0A6AC4 800A5EC4 1621FFEC */  bne   $s1, $at, .L800A5E78
/* 0A6AC8 800A5EC8 24420004 */   addiu $v0, $v0, 4
/* 0A6ACC 800A5ECC 10000030 */  b     .L800A5F90
/* 0A6AD0 800A5ED0 8E630004 */   lw    $v1, 4($s3)
glabel L800A5ED4
/* 0A6AD4 800A5ED4 0C024C36 */  jal   set_text_color
/* 0A6AD8 800A5ED8 24040003 */   li    $a0, 3
/* 0A6ADC 800A5EDC 3C02800E */  lui   $v0, %hi(D_800E7A74) # $v0, 0x800e
/* 0A6AE0 800A5EE0 3C01800F */  lui   $at, %hi(D_800F1E94) # $at, 0x800f
/* 0A6AE4 800A5EE4 3C11800E */  lui   $s1, %hi(D_800E7A80) # $s1, 0x800e
/* 0A6AE8 800A5EE8 26317A80 */  addiu $s1, %lo(D_800E7A80) # addiu $s1, $s1, 0x7a80
/* 0A6AEC 800A5EEC C4341E94 */  lwc1  $f20, %lo(D_800F1E94)($at)
/* 0A6AF0 800A5EF0 24427A74 */  addiu $v0, %lo(D_800E7A74) # addiu $v0, $v0, 0x7a74
/* 0A6AF4 800A5EF4 2410006E */  li    $s0, 110
/* 0A6AF8 800A5EF8 24040055 */  li    $a0, 85
.L800A5EFC:
/* 0A6AFC 800A5EFC 02002825 */  move  $a1, $s0
/* 0A6B00 800A5F00 8C460000 */  lw    $a2, ($v0)
/* 0A6B04 800A5F04 00003825 */  move  $a3, $zero
/* 0A6B08 800A5F08 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6B0C 800A5F0C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A6B10 800A5F10 0C024CC9 */  jal   func_80093324
/* 0A6B14 800A5F14 AFA20050 */   sw    $v0, 0x50($sp)
/* 0A6B18 800A5F18 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A6B1C 800A5F1C 2610000D */  addiu $s0, $s0, 0xd
/* 0A6B20 800A5F20 24420004 */  addiu $v0, $v0, 4
/* 0A6B24 800A5F24 5451FFF5 */  bnel  $v0, $s1, .L800A5EFC
/* 0A6B28 800A5F28 24040055 */   li    $a0, 85
/* 0A6B2C 800A5F2C 10000018 */  b     .L800A5F90
/* 0A6B30 800A5F30 8E630004 */   lw    $v1, 4($s3)
glabel L800A5F34
/* 0A6B34 800A5F34 0C024C36 */  jal   set_text_color
/* 0A6B38 800A5F38 24040003 */   li    $a0, 3
/* 0A6B3C 800A5F3C 3C02800E */  lui   $v0, %hi(D_800E7A80) # $v0, 0x800e
/* 0A6B40 800A5F40 3C01800F */  lui   $at, %hi(D_800F1E98) # $at, 0x800f
/* 0A6B44 800A5F44 3C11800E */  lui   $s1, %hi(D_800E7A88) # $s1, 0x800e
/* 0A6B48 800A5F48 26317A88 */  addiu $s1, %lo(D_800E7A88) # addiu $s1, $s1, 0x7a88
/* 0A6B4C 800A5F4C C4341E98 */  lwc1  $f20, %lo(D_800F1E98)($at)
/* 0A6B50 800A5F50 24427A80 */  addiu $v0, %lo(D_800E7A80) # addiu $v0, $v0, 0x7a80
/* 0A6B54 800A5F54 2410006E */  li    $s0, 110
/* 0A6B58 800A5F58 2404005D */  li    $a0, 93
.L800A5F5C:
/* 0A6B5C 800A5F5C 02002825 */  move  $a1, $s0
/* 0A6B60 800A5F60 8C460000 */  lw    $a2, ($v0)
/* 0A6B64 800A5F64 00003825 */  move  $a3, $zero
/* 0A6B68 800A5F68 E7B40010 */  swc1  $f20, 0x10($sp)
/* 0A6B6C 800A5F6C E7B40014 */  swc1  $f20, 0x14($sp)
/* 0A6B70 800A5F70 0C024CC9 */  jal   func_80093324
/* 0A6B74 800A5F74 AFA20050 */   sw    $v0, 0x50($sp)
/* 0A6B78 800A5F78 8FA20050 */  lw    $v0, 0x50($sp)
/* 0A6B7C 800A5F7C 2610000D */  addiu $s0, $s0, 0xd
/* 0A6B80 800A5F80 24420004 */  addiu $v0, $v0, 4
/* 0A6B84 800A5F84 5451FFF5 */  bnel  $v0, $s1, .L800A5F5C
/* 0A6B88 800A5F88 2404005D */   li    $a0, 93
/* 0A6B8C 800A5F8C 8E630004 */  lw    $v1, 4($s3)
.L800A5F90:
glabel L800A5F90
/* 0A6B90 800A5F90 246EFFF5 */  addiu $t6, $v1, -0xb
/* 0A6B94 800A5F94 2DC1001A */  sltiu $at, $t6, 0x1a
/* 0A6B98 800A5F98 1020001E */  beqz  $at, .L800A6014
/* 0A6B9C 800A5F9C 000E7080 */   sll   $t6, $t6, 2
/* 0A6BA0 800A5FA0 3C01800F */  lui   $at, %hi(jpt_800F1E9C)
/* 0A6BA4 800A5FA4 002E0821 */  addu  $at, $at, $t6
/* 0A6BA8 800A5FA8 8C2E1E9C */  lw    $t6, %lo(jpt_800F1E9C)($at)
/* 0A6BAC 800A5FAC 01C00008 */  jr    $t6
/* 0A6BB0 800A5FB0 00000000 */   nop   
glabel L800A5FB4
/* 0A6BB4 800A5FB4 0003C0C0 */  sll   $t8, $v1, 3
/* 0A6BB8 800A5FB8 3C08800E */  lui   $t0, %hi(D_800E73E0) # $t0, 0x800e
/* 0A6BBC 800A5FBC 250873E0 */  addiu $t0, %lo(D_800E73E0) # addiu $t0, $t0, 0x73e0
/* 0A6BC0 800A5FC0 2719FFA8 */  addiu $t9, $t8, -0x58
/* 0A6BC4 800A5FC4 1000000C */  b     .L800A5FF8
/* 0A6BC8 800A5FC8 03281021 */   addu  $v0, $t9, $t0
glabel L800A5FCC
/* 0A6BCC 800A5FCC 000350C0 */  sll   $t2, $v1, 3
/* 0A6BD0 800A5FD0 3C0B800E */  lui   $t3, %hi(D_800E7410) # $t3, 0x800e
/* 0A6BD4 800A5FD4 256B7410 */  addiu $t3, %lo(D_800E7410) # addiu $t3, $t3, 0x7410
/* 0A6BD8 800A5FD8 2549FF10 */  addiu $t1, $t2, -0xf0
/* 0A6BDC 800A5FDC 10000006 */  b     .L800A5FF8
/* 0A6BE0 800A5FE0 012B1021 */   addu  $v0, $t1, $t3
glabel L800A5FE4
/* 0A6BE4 800A5FE4 000368C0 */  sll   $t5, $v1, 3
/* 0A6BE8 800A5FE8 3C0F800E */  lui   $t7, %hi(D_800E7420) # $t7, 0x800e
/* 0A6BEC 800A5FEC 25EF7420 */  addiu $t7, %lo(D_800E7420) # addiu $t7, $t7, 0x7420
/* 0A6BF0 800A5FF0 25ACFEE8 */  addiu $t4, $t5, -0x118
/* 0A6BF4 800A5FF4 018F1021 */  addu  $v0, $t4, $t7
.L800A5FF8:
/* 0A6BF8 800A5FF8 844E0000 */  lh    $t6, ($v0)
/* 0A6BFC 800A5FFC 02602025 */  move  $a0, $s3
/* 0A6C00 800A6000 27A50098 */  addiu $a1, $sp, 0x98
/* 0A6C04 800A6004 A7AE0098 */  sh    $t6, 0x98($sp)
/* 0A6C08 800A6008 84580002 */  lh    $t8, 2($v0)
/* 0A6C0C 800A600C 0C0299AA */  jal   func_800A66A8
/* 0A6C10 800A6010 A7B8009A */   sh    $t8, 0x9a($sp)
.L800A6014:
glabel L800A6014
/* 0A6C14 800A6014 8FBF0044 */  lw    $ra, 0x44($sp)
.L800A6018:
/* 0A6C18 800A6018 D7B40028 */  ldc1  $f20, 0x28($sp)
/* 0A6C1C 800A601C 8FB00034 */  lw    $s0, 0x34($sp)
/* 0A6C20 800A6020 8FB10038 */  lw    $s1, 0x38($sp)
/* 0A6C24 800A6024 8FB2003C */  lw    $s2, 0x3c($sp)
/* 0A6C28 800A6028 8FB30040 */  lw    $s3, 0x40($sp)
/* 0A6C2C 800A602C 03E00008 */  jr    $ra
/* 0A6C30 800A6030 27BD00A0 */   addiu $sp, $sp, 0xa0
