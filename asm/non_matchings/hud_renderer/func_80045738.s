glabel func_80045738
/* 046338 80045738 3C038015 */  lui   $v1, %hi(gDisplayListHead) # $v1, 0x8015
/* 04633C 8004573C 24630298 */  addiu $v1, %lo(gDisplayListHead) # addiu $v1, $v1, 0x298
/* 046340 80045740 8C680000 */  lw    $t0, ($v1)
/* 046344 80045744 27BDFFA0 */  addiu $sp, $sp, -0x60
/* 046348 80045748 AFA40060 */  sw    $a0, 0x60($sp)
/* 04634C 8004574C 250E0008 */  addiu $t6, $t0, 8
/* 046350 80045750 AFA60068 */  sw    $a2, 0x68($sp)
/* 046354 80045754 AFA7006C */  sw    $a3, 0x6c($sp)
/* 046358 80045758 AC6E0000 */  sw    $t6, ($v1)
/* 04635C 8004575C 3C0FFCFF */  lui   $t7, (0xFCFFFFFF >> 16) # lui $t7, 0xfcff
/* 046360 80045760 3C18FFFC */  lui   $t8, (0xFFFCF438 >> 16) # lui $t8, 0xfffc
/* 046364 80045764 3718F438 */  ori   $t8, (0xFFFCF438 & 0xFFFF) # ori $t8, $t8, 0xf438
/* 046368 80045768 35EFFFFF */  ori   $t7, (0xFCFFFFFF & 0xFFFF) # ori $t7, $t7, 0xffff
/* 04636C 8004576C AD0F0000 */  sw    $t7, ($t0)
/* 046370 80045770 AD180004 */  sw    $t8, 4($t0)
/* 046374 80045774 8C690000 */  lw    $t1, ($v1)
/* 046378 80045778 3C0EFD90 */  lui   $t6, 0xfd90
/* 04637C 8004577C 3C18F590 */  lui   $t8, (0xF5900100 >> 16) # lui $t8, 0xf590
/* 046380 80045780 25390008 */  addiu $t9, $t1, 8
/* 046384 80045784 AC790000 */  sw    $t9, ($v1)
/* 046388 80045788 AD250004 */  sw    $a1, 4($t1)
/* 04638C 8004578C AD2E0000 */  sw    $t6, ($t1)
/* 046390 80045790 8C620000 */  lw    $v0, ($v1)
/* 046394 80045794 3C19070C */  lui   $t9, (0x070C0300 >> 16) # lui $t9, 0x70c
/* 046398 80045798 37390300 */  ori   $t9, (0x070C0300 & 0xFFFF) # ori $t9, $t9, 0x300
/* 04639C 8004579C 244F0008 */  addiu $t7, $v0, 8
/* 0463A0 800457A0 AC6F0000 */  sw    $t7, ($v1)
/* 0463A4 800457A4 37180100 */  ori   $t8, (0xF5900100 & 0xFFFF) # ori $t8, $t8, 0x100
/* 0463A8 800457A8 AC580000 */  sw    $t8, ($v0)
/* 0463AC 800457AC AC590004 */  sw    $t9, 4($v0)
/* 0463B0 800457B0 8C620000 */  lw    $v0, ($v1)
/* 0463B4 800457B4 3C0FE600 */  lui   $t7, 0xe600
/* 0463B8 800457B8 3C19F300 */  lui   $t9, 0xf300
/* 0463BC 800457BC 244E0008 */  addiu $t6, $v0, 8
/* 0463C0 800457C0 AC6E0000 */  sw    $t6, ($v1)
/* 0463C4 800457C4 AC4F0000 */  sw    $t7, ($v0)
/* 0463C8 800457C8 AC400004 */  sw    $zero, 4($v0)
/* 0463CC 800457CC 8C620000 */  lw    $v0, ($v1)
/* 0463D0 800457D0 240C07FF */  li    $t4, 2047
/* 0463D4 800457D4 24580008 */  addiu $t8, $v0, 8
/* 0463D8 800457D8 AC780000 */  sw    $t8, ($v1)
/* 0463DC 800457DC AFA2004C */  sw    $v0, 0x4c($sp)
/* 0463E0 800457E0 AC590000 */  sw    $t9, ($v0)
/* 0463E4 800457E4 8FB8006C */  lw    $t8, 0x6c($sp)
/* 0463E8 800457E8 8FAF0068 */  lw    $t7, 0x68($sp)
/* 0463EC 800457EC 01F80019 */  multu $t7, $t8
/* 0463F0 800457F0 0000C812 */  mflo  $t9
/* 0463F4 800457F4 272D0001 */  addiu $t5, $t9, 1
/* 0463F8 800457F8 000D7043 */  sra   $t6, $t5, 1
/* 0463FC 800457FC 25CDFFFF */  addiu $t5, $t6, -1
/* 046400 80045800 29A107FF */  slti  $at, $t5, 0x7ff
/* 046404 80045804 10200003 */  beqz  $at, .L80045814
/* 046408 80045808 AFB9000C */   sw    $t9, 0xc($sp)
/* 04640C 8004580C 10000001 */  b     .L80045814
/* 046410 80045810 01A06025 */   move  $t4, $t5
.L80045814:
/* 046414 80045814 8FAD0068 */  lw    $t5, 0x68($sp)
/* 046418 80045818 05A10003 */  bgez  $t5, .L80045828
/* 04641C 8004581C 000D10C3 */   sra   $v0, $t5, 3
/* 046420 80045820 25A10007 */  addiu $at, $t5, 7
/* 046424 80045824 000110C3 */  sra   $v0, $at, 3
.L80045828:
/* 046428 80045828 1C400003 */  bgtz  $v0, .L80045838
/* 04642C 8004582C 00405825 */   move  $t3, $v0
/* 046430 80045830 10000001 */  b     .L80045838
/* 046434 80045834 240B0001 */   li    $t3, 1
.L80045838:
/* 046438 80045838 1C400003 */  bgtz  $v0, .L80045848
/* 04643C 8004583C 256F07FF */   addiu $t7, $t3, 0x7ff
/* 046440 80045840 10000002 */  b     .L8004584C
/* 046444 80045844 240A0001 */   li    $t2, 1
.L80045848:
/* 046448 80045848 00405025 */  move  $t2, $v0
.L8004584C:
/* 04644C 8004584C 01EA001A */  div   $zero, $t7, $t2
/* 046450 80045850 15400002 */  bnez  $t2, .L8004585C
/* 046454 80045854 00000000 */   nop
/* 046458 80045858 0007000D */  break 7
.L8004585C:
/* 04645C 8004585C 2401FFFF */  li    $at, -1
/* 046460 80045860 15410004 */  bne   $t2, $at, .L80045874
/* 046464 80045864 3C018000 */   lui   $at, 0x8000
/* 046468 80045868 15E10002 */  bne   $t7, $at, .L80045874
/* 04646C 8004586C 00000000 */   nop
/* 046470 80045870 0006000D */  break 6
.L80045874:
/* 046474 80045874 0000C012 */  mflo  $t8
/* 046478 80045878 33190FFF */  andi  $t9, $t8, 0xfff
/* 04647C 8004587C 318F0FFF */  andi  $t7, $t4, 0xfff
/* 046480 80045880 000FC300 */  sll   $t8, $t7, 0xc
/* 046484 80045884 8FAF004C */  lw    $t7, 0x4c($sp)
/* 046488 80045888 3C010700 */  lui   $at, 0x700
/* 04648C 8004588C 03217025 */  or    $t6, $t9, $at
/* 046490 80045890 01D8C825 */  or    $t9, $t6, $t8
/* 046494 80045894 ADF90004 */  sw    $t9, 4($t7)
/* 046498 80045898 8C620000 */  lw    $v0, ($v1)
/* 04649C 8004589C 3C18E700 */  lui   $t8, 0xe700
/* 0464A0 800458A0 25AF0007 */  addiu $t7, $t5, 7
/* 0464A4 800458A4 244E0008 */  addiu $t6, $v0, 8
/* 0464A8 800458A8 AC6E0000 */  sw    $t6, ($v1)
/* 0464AC 800458AC AC580000 */  sw    $t8, ($v0)
/* 0464B0 800458B0 AC400004 */  sw    $zero, 4($v0)
/* 0464B4 800458B4 8C620000 */  lw    $v0, ($v1)
/* 0464B8 800458B8 000F70C3 */  sra   $t6, $t7, 3
/* 0464BC 800458BC 31D801FF */  andi  $t8, $t6, 0x1ff
/* 0464C0 800458C0 24590008 */  addiu $t9, $v0, 8
/* 0464C4 800458C4 AC790000 */  sw    $t9, ($v1)
/* 0464C8 800458C8 0018CA40 */  sll   $t9, $t8, 9
/* 0464CC 800458CC 3C01F588 */  lui   $at, 0xf588
/* 0464D0 800458D0 03217825 */  or    $t7, $t9, $at
/* 0464D4 800458D4 3C18000C */  lui   $t8, (0x000C0300 >> 16) # lui $t8, 0xc
/* 0464D8 800458D8 37180300 */  ori   $t8, (0x000C0300 & 0xFFFF) # ori $t8, $t8, 0x300
/* 0464DC 800458DC 35EE0100 */  ori   $t6, $t7, 0x100
/* 0464E0 800458E0 AC4E0000 */  sw    $t6, ($v0)
/* 0464E4 800458E4 AC580004 */  sw    $t8, 4($v0)
/* 0464E8 800458E8 8C620000 */  lw    $v0, ($v1)
/* 0464EC 800458EC 3C0FF200 */  lui   $t7, 0xf200
/* 0464F0 800458F0 240C07FF */  li    $t4, 2047
/* 0464F4 800458F4 24590008 */  addiu $t9, $v0, 8
/* 0464F8 800458F8 AC790000 */  sw    $t9, ($v1)
/* 0464FC 800458FC AC4F0000 */  sw    $t7, ($v0)
/* 046500 80045900 8FAE0068 */  lw    $t6, 0x68($sp)
/* 046504 80045904 3C08F200 */  lui   $t0, 0xf200
/* 046508 80045908 25D8FFFF */  addiu $t8, $t6, -1
/* 04650C 8004590C 0018C880 */  sll   $t9, $t8, 2
/* 046510 80045910 8FB8006C */  lw    $t8, 0x6c($sp)
/* 046514 80045914 332F0FFF */  andi  $t7, $t9, 0xfff
/* 046518 80045918 000F7300 */  sll   $t6, $t7, 0xc
/* 04651C 8004591C 2719FFFF */  addiu $t9, $t8, -1
/* 046520 80045920 00197880 */  sll   $t7, $t9, 2
/* 046524 80045924 31F80FFF */  andi  $t8, $t7, 0xfff
/* 046528 80045928 AFB80000 */  sw    $t8, ($sp)
/* 04652C 8004592C 01D8C825 */  or    $t9, $t6, $t8
/* 046530 80045930 AFAE0004 */  sw    $t6, 4($sp)
/* 046534 80045934 AC590004 */  sw    $t9, 4($v0)
/* 046538 80045938 8C620000 */  lw    $v0, ($v1)
/* 04653C 8004593C 3C0EFD10 */  lui   $t6, 0xfd10
/* 046540 80045940 244F0008 */  addiu $t7, $v0, 8
/* 046544 80045944 AC6F0000 */  sw    $t7, ($v1)
/* 046548 80045948 AC4E0000 */  sw    $t6, ($v0)
/* 04654C 8004594C 8FB80060 */  lw    $t8, 0x60($sp)
/* 046550 80045950 3C0E070C */  lui   $t6, (0x070C0300 >> 16) # lui $t6, 0x70c
/* 046554 80045954 35CE0300 */  ori   $t6, (0x070C0300 & 0xFFFF) # ori $t6, $t6, 0x300
/* 046558 80045958 AC580004 */  sw    $t8, 4($v0)
/* 04655C 8004595C 8C620000 */  lw    $v0, ($v1)
/* 046560 80045960 3C0FF510 */  lui   $t7, 0xf510
/* 046564 80045964 24590008 */  addiu $t9, $v0, 8
/* 046568 80045968 AC790000 */  sw    $t9, ($v1)
/* 04656C 8004596C AC4F0000 */  sw    $t7, ($v0)
/* 046570 80045970 AC4E0004 */  sw    $t6, 4($v0)
/* 046574 80045974 8C620000 */  lw    $v0, ($v1)
/* 046578 80045978 3C19E600 */  lui   $t9, 0xe600
/* 04657C 8004597C 3C0EF300 */  lui   $t6, 0xf300
/* 046580 80045980 24580008 */  addiu $t8, $v0, 8
/* 046584 80045984 AC780000 */  sw    $t8, ($v1)
/* 046588 80045988 AC590000 */  sw    $t9, ($v0)
/* 04658C 8004598C AC400004 */  sw    $zero, 4($v0)
/* 046590 80045990 8C620000 */  lw    $v0, ($v1)
/* 046594 80045994 8FA90068 */  lw    $t1, 0x68($sp)
/* 046598 80045998 8FA70000 */  lw    $a3, ($sp)
/* 04659C 8004599C 244F0008 */  addiu $t7, $v0, 8
/* 0465A0 800459A0 AC6F0000 */  sw    $t7, ($v1)
/* 0465A4 800459A4 8FA60004 */  lw    $a2, 4($sp)
/* 0465A8 800459A8 AC4E0000 */  sw    $t6, ($v0)
/* 0465AC 800459AC 8FA4000C */  lw    $a0, 0xc($sp)
/* 0465B0 800459B0 00402825 */  move  $a1, $v0
/* 0465B4 800459B4 2484FFFF */  addiu $a0, $a0, -1
/* 0465B8 800459B8 288107FF */  slti  $at, $a0, 0x7ff
/* 0465BC 800459BC 10200003 */  beqz  $at, .L800459CC
/* 0465C0 800459C0 00000000 */   nop
/* 0465C4 800459C4 10000001 */  b     .L800459CC
/* 0465C8 800459C8 00806025 */   move  $t4, $a0
.L800459CC:
/* 0465CC 800459CC 00092040 */  sll   $a0, $t1, 1
/* 0465D0 800459D0 04810003 */  bgez  $a0, .L800459E0
/* 0465D4 800459D4 000410C3 */   sra   $v0, $a0, 3
/* 0465D8 800459D8 24810007 */  addiu $at, $a0, 7
/* 0465DC 800459DC 000110C3 */  sra   $v0, $at, 3
.L800459E0:
/* 0465E0 800459E0 1C400003 */  bgtz  $v0, .L800459F0
/* 0465E4 800459E4 00405825 */   move  $t3, $v0
/* 0465E8 800459E8 10000001 */  b     .L800459F0
/* 0465EC 800459EC 240B0001 */   li    $t3, 1
.L800459F0:
/* 0465F0 800459F0 1C400003 */  bgtz  $v0, .L80045A00
/* 0465F4 800459F4 257807FF */   addiu $t8, $t3, 0x7ff
/* 0465F8 800459F8 10000002 */  b     .L80045A04
/* 0465FC 800459FC 240A0001 */   li    $t2, 1
.L80045A00:
/* 046600 80045A00 00405025 */  move  $t2, $v0
.L80045A04:
/* 046604 80045A04 030A001A */  div   $zero, $t8, $t2
/* 046608 80045A08 15400002 */  bnez  $t2, .L80045A14
/* 04660C 80045A0C 00000000 */   nop
/* 046610 80045A10 0007000D */  break 7
.L80045A14:
/* 046614 80045A14 2401FFFF */  li    $at, -1
/* 046618 80045A18 15410004 */  bne   $t2, $at, .L80045A2C
/* 04661C 80045A1C 3C018000 */   lui   $at, 0x8000
/* 046620 80045A20 17010002 */  bne   $t8, $at, .L80045A2C
/* 046624 80045A24 00000000 */   nop
/* 046628 80045A28 0006000D */  break 6
.L80045A2C:
/* 04662C 80045A2C 0000C812 */  mflo  $t9
/* 046630 80045A30 332F0FFF */  andi  $t7, $t9, 0xfff
/* 046634 80045A34 3C010700 */  lui   $at, 0x700
/* 046638 80045A38 31980FFF */  andi  $t8, $t4, 0xfff
/* 04663C 80045A3C 0018CB00 */  sll   $t9, $t8, 0xc
/* 046640 80045A40 01E17025 */  or    $t6, $t7, $at
/* 046644 80045A44 01D97825 */  or    $t7, $t6, $t9
/* 046648 80045A48 ACAF0004 */  sw    $t7, 4($a1)
/* 04664C 80045A4C 8C620000 */  lw    $v0, ($v1)
/* 046650 80045A50 3C0EE700 */  lui   $t6, 0xe700
/* 046654 80045A54 248F0007 */  addiu $t7, $a0, 7
/* 046658 80045A58 24580008 */  addiu $t8, $v0, 8
/* 04665C 80045A5C AC780000 */  sw    $t8, ($v1)
/* 046660 80045A60 AC4E0000 */  sw    $t6, ($v0)
/* 046664 80045A64 AC400004 */  sw    $zero, 4($v0)
/* 046668 80045A68 00406825 */  move  $t5, $v0
/* 04666C 80045A6C 8C620000 */  lw    $v0, ($v1)
/* 046670 80045A70 000FC0C3 */  sra   $t8, $t7, 3
/* 046674 80045A74 330E01FF */  andi  $t6, $t8, 0x1ff
/* 046678 80045A78 24590008 */  addiu $t9, $v0, 8
/* 04667C 80045A7C AC790000 */  sw    $t9, ($v1)
/* 046680 80045A80 000ECA40 */  sll   $t9, $t6, 9
/* 046684 80045A84 3C0E000C */  lui   $t6, (0x000C0300 >> 16) # lui $t6, 0xc
/* 046688 80045A88 3C01F510 */  lui   $at, 0xf510
/* 04668C 80045A8C AFA20028 */  sw    $v0, 0x28($sp)
/* 046690 80045A90 03217825 */  or    $t7, $t9, $at
/* 046694 80045A94 35CE0300 */  ori   $t6, (0x000C0300 & 0xFFFF) # ori $t6, $t6, 0x300
/* 046698 80045A98 AC4E0004 */  sw    $t6, 4($v0)
/* 04669C 80045A9C AC4F0000 */  sw    $t7, ($v0)
/* 0466A0 80045AA0 8C620000 */  lw    $v0, ($v1)
/* 0466A4 80045AA4 00C77025 */  or    $t6, $a2, $a3
/* 0466A8 80045AA8 3C01F588 */  lui   $at, 0xf588
/* 0466AC 80045AAC 24590008 */  addiu $t9, $v0, 8
/* 0466B0 80045AB0 AC790000 */  sw    $t9, ($v1)
/* 0466B4 80045AB4 AFA20024 */  sw    $v0, 0x24($sp)
/* 0466B8 80045AB8 AC480000 */  sw    $t0, ($v0)
/* 0466BC 80045ABC AC4E0004 */  sw    $t6, 4($v0)
/* 0466C0 80045AC0 8C620000 */  lw    $v0, ($v1)
/* 0466C4 80045AC4 25390007 */  addiu $t9, $t1, 7
/* 0466C8 80045AC8 001970C3 */  sra   $t6, $t9, 3
/* 0466CC 80045ACC 24580008 */  addiu $t8, $v0, 8
/* 0466D0 80045AD0 AC780000 */  sw    $t8, ($v1)
/* 0466D4 80045AD4 31CF01FF */  andi  $t7, $t6, 0x1ff
/* 0466D8 80045AD8 000FC240 */  sll   $t8, $t7, 9
/* 0466DC 80045ADC 0301C825 */  or    $t9, $t8, $at
/* 0466E0 80045AE0 372E0100 */  ori   $t6, $t9, 0x100
/* 0466E4 80045AE4 AFA20020 */  sw    $v0, 0x20($sp)
/* 0466E8 80045AE8 AC4E0000 */  sw    $t6, ($v0)
/* 0466EC 80045AEC 8FB90020 */  lw    $t9, 0x20($sp)
/* 0466F0 80045AF0 3C180100 */  lui   $t8, 0x100
/* 0466F4 80045AF4 3C010100 */  lui   $at, 0x100
/* 0466F8 80045AF8 AF380004 */  sw    $t8, 4($t9)
/* 0466FC 80045AFC 8C620000 */  lw    $v0, ($v1)
/* 046700 80045B00 00C1C025 */  or    $t8, $a2, $at
/* 046704 80045B04 0307C825 */  or    $t9, $t8, $a3
/* 046708 80045B08 244E0008 */  addiu $t6, $v0, 8
/* 04670C 80045B0C AC6E0000 */  sw    $t6, ($v1)
/* 046710 80045B10 AFA2001C */  sw    $v0, 0x1c($sp)
/* 046714 80045B14 AC480000 */  sw    $t0, ($v0)
/* 046718 80045B18 8FAE001C */  lw    $t6, 0x1c($sp)
/* 04671C 80045B1C 27BD0060 */  addiu $sp, $sp, 0x60
/* 046720 80045B20 00407825 */  move  $t7, $v0
/* 046724 80045B24 03E00008 */  jr    $ra
/* 046728 80045B28 ADD90004 */   sw    $t9, 4($t6)
