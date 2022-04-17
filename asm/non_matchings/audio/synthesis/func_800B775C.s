glabel func_800B775C
/* 0B835C 800B775C 27BDFF40 */  addiu $sp, $sp, -0xc0
/* 0B8360 800B7760 3C0A803B */  lui   $t2, %hi(gNumSynthesisReverbs) # $t2, 0x803b
/* 0B8364 800B7764 254AFBC3 */  addiu $t2, %lo(gNumSynthesisReverbs) # addiu $t2, $t2, -0x43d
/* 0B8368 800B7768 81490000 */  lb    $t1, ($t2)
/* 0B836C 800B776C AFB5003C */  sw    $s5, 0x3c($sp)
/* 0B8370 800B7770 AFB40038 */  sw    $s4, 0x38($sp)
/* 0B8374 800B7774 AFB20030 */  sw    $s2, 0x30($sp)
/* 0B8378 800B7778 00C0A025 */  move  $s4, $a2
/* 0B837C 800B777C 00E0A825 */  move  $s5, $a3
/* 0B8380 800B7780 AFBF004C */  sw    $ra, 0x4c($sp)
/* 0B8384 800B7784 AFBE0048 */  sw    $fp, 0x48($sp)
/* 0B8388 800B7788 AFB70044 */  sw    $s7, 0x44($sp)
/* 0B838C 800B778C AFB60040 */  sw    $s6, 0x40($sp)
/* 0B8390 800B7790 AFB30034 */  sw    $s3, 0x34($sp)
/* 0B8394 800B7794 AFB1002C */  sw    $s1, 0x2c($sp)
/* 0B8398 800B7798 AFB00028 */  sw    $s0, 0x28($sp)
/* 0B839C 800B779C AFA400C0 */  sw    $a0, 0xc0($sp)
/* 0B83A0 800B77A0 AFA500C4 */  sw    $a1, 0xc4($sp)
/* 0B83A4 800B77A4 1520001D */  bnez  $t1, .L800B781C
/* 0B83A8 800B77A8 00009025 */   move  $s2, $zero
/* 0B83AC 800B77AC 3C04803B */  lui   $a0, %hi(gMaxSimultaneousNotes) # $a0, 0x803b
/* 0B83B0 800B77B0 8C8470B0 */  lw    $a0, %lo(gMaxSimultaneousNotes)($a0)
/* 0B83B4 800B77B4 00008825 */  move  $s1, $zero
/* 0B83B8 800B77B8 18800016 */  blez  $a0, .L800B7814
/* 0B83BC 800B77BC 00000000 */   nop   
/* 0B83C0 800B77C0 00870019 */  multu $a0, $a3
/* 0B83C4 800B77C4 3C0E803B */  lui   $t6, %hi(gNoteSubsEu) # $t6, 0x803b
/* 0B83C8 800B77C8 8DCEFBC4 */  lw    $t6, %lo(gNoteSubsEu)($t6)
/* 0B83CC 800B77CC 27A50084 */  addiu $a1, $sp, 0x84
/* 0B83D0 800B77D0 00007812 */  mflo  $t7
/* 0B83D4 800B77D4 000FC100 */  sll   $t8, $t7, 4
/* 0B83D8 800B77D8 01D81021 */  addu  $v0, $t6, $t8
.L800B77DC:
/* 0B83DC 800B77DC 8C590000 */  lw    $t9, ($v0)
/* 0B83E0 800B77E0 00B26021 */  addu  $t4, $a1, $s2
/* 0B83E4 800B77E4 00195FC2 */  srl   $t3, $t9, 0x1f
/* 0B83E8 800B77E8 51600006 */  beql  $t3, $zero, .L800B7804
/* 0B83EC 800B77EC 26310001 */   addiu $s1, $s1, 1
/* 0B83F0 800B77F0 26520001 */  addiu $s2, $s2, 1
/* 0B83F4 800B77F4 00126C00 */  sll   $t5, $s2, 0x10
/* 0B83F8 800B77F8 000D9403 */  sra   $s2, $t5, 0x10
/* 0B83FC 800B77FC A1910000 */  sb    $s1, ($t4)
/* 0B8400 800B7800 26310001 */  addiu $s1, $s1, 1
.L800B7804:
/* 0B8404 800B7804 0224082A */  slt   $at, $s1, $a0
/* 0B8408 800B7808 1420FFF4 */  bnez  $at, .L800B77DC
/* 0B840C 800B780C 24420010 */   addiu $v0, $v0, 0x10
/* 0B8410 800B7810 00008825 */  move  $s1, $zero
.L800B7814:
/* 0B8414 800B7814 10000049 */  b     .L800B793C
/* 0B8418 800B7818 00009825 */   move  $s3, $zero
.L800B781C:
/* 0B841C 800B781C 19200026 */  blez  $t1, .L800B78B8
/* 0B8420 800B7820 00009825 */   move  $s3, $zero
/* 0B8424 800B7824 3C04803B */  lui   $a0, %hi(gMaxSimultaneousNotes) # $a0, 0x803b
/* 0B8428 800B7828 8C8470B0 */  lw    $a0, %lo(gMaxSimultaneousNotes)($a0)
/* 0B842C 800B782C 27A50084 */  addiu $a1, $sp, 0x84
.L800B7830:
/* 0B8430 800B7830 1880001A */  blez  $a0, .L800B789C
/* 0B8434 800B7834 00008825 */   move  $s1, $zero
/* 0B8438 800B7838 00950019 */  multu $a0, $s5
/* 0B843C 800B783C 3C08803B */  lui   $t0, %hi(gNoteSubsEu) # $t0, 0x803b
/* 0B8440 800B7840 8D08FBC4 */  lw    $t0, %lo(gNoteSubsEu)($t0)
/* 0B8444 800B7844 00001812 */  mflo  $v1
/* 0B8448 800B7848 00000000 */  nop   
/* 0B844C 800B784C 00000000 */  nop   
.L800B7850:
/* 0B8450 800B7850 00037100 */  sll   $t6, $v1, 4
/* 0B8454 800B7854 01C81021 */  addu  $v0, $t6, $t0
/* 0B8458 800B7858 8C580000 */  lw    $t8, ($v0)
/* 0B845C 800B785C 0018CFC2 */  srl   $t9, $t8, 0x1f
/* 0B8460 800B7860 5320000B */  beql  $t9, $zero, .L800B7890
/* 0B8464 800B7864 26310001 */   addiu $s1, $s1, 1
/* 0B8468 800B7868 904B0001 */  lbu   $t3, 1($v0)
/* 0B846C 800B786C 00B26821 */  addu  $t5, $a1, $s2
/* 0B8470 800B7870 000B6142 */  srl   $t4, $t3, 5
/* 0B8474 800B7874 566C0006 */  bnel  $s3, $t4, .L800B7890
/* 0B8478 800B7878 26310001 */   addiu $s1, $s1, 1
/* 0B847C 800B787C 26520001 */  addiu $s2, $s2, 1
/* 0B8480 800B7880 00127C00 */  sll   $t7, $s2, 0x10
/* 0B8484 800B7884 000F9403 */  sra   $s2, $t7, 0x10
/* 0B8488 800B7888 A1B10000 */  sb    $s1, ($t5)
/* 0B848C 800B788C 26310001 */  addiu $s1, $s1, 1
.L800B7890:
/* 0B8490 800B7890 0224082A */  slt   $at, $s1, $a0
/* 0B8494 800B7894 1420FFEE */  bnez  $at, .L800B7850
/* 0B8498 800B7898 24630001 */   addiu $v1, $v1, 1
.L800B789C:
/* 0B849C 800B789C 26730001 */  addiu $s3, $s3, 1
/* 0B84A0 800B78A0 0013C400 */  sll   $t8, $s3, 0x10
/* 0B84A4 800B78A4 00189C03 */  sra   $s3, $t8, 0x10
/* 0B84A8 800B78A8 0269082A */  slt   $at, $s3, $t1
/* 0B84AC 800B78AC 1420FFE0 */  bnez  $at, .L800B7830
/* 0B84B0 800B78B0 00000000 */   nop   
/* 0B84B4 800B78B4 00009825 */  move  $s3, $zero
.L800B78B8:
/* 0B84B8 800B78B8 3C04803B */  lui   $a0, %hi(gMaxSimultaneousNotes) # $a0, 0x803b
/* 0B84BC 800B78BC 8C8470B0 */  lw    $a0, %lo(gMaxSimultaneousNotes)($a0)
/* 0B84C0 800B78C0 27A50084 */  addiu $a1, $sp, 0x84
/* 0B84C4 800B78C4 00008825 */  move  $s1, $zero
/* 0B84C8 800B78C8 5880001D */  blezl $a0, .L800B7940
/* 0B84CC 800B78CC 02801025 */   move  $v0, $s4
/* 0B84D0 800B78D0 00950019 */  multu $a0, $s5
/* 0B84D4 800B78D4 3C08803B */  lui   $t0, %hi(gNoteSubsEu) # $t0, 0x803b
/* 0B84D8 800B78D8 8D08FBC4 */  lw    $t0, %lo(gNoteSubsEu)($t0)
/* 0B84DC 800B78DC 00001812 */  mflo  $v1
/* 0B84E0 800B78E0 00000000 */  nop   
/* 0B84E4 800B78E4 00000000 */  nop   
.L800B78E8:
/* 0B84E8 800B78E8 00035900 */  sll   $t3, $v1, 4
/* 0B84EC 800B78EC 01681021 */  addu  $v0, $t3, $t0
/* 0B84F0 800B78F0 8C4C0000 */  lw    $t4, ($v0)
/* 0B84F4 800B78F4 000C6FC2 */  srl   $t5, $t4, 0x1f
/* 0B84F8 800B78F8 51A0000C */  beql  $t5, $zero, .L800B792C
/* 0B84FC 800B78FC 26310001 */   addiu $s1, $s1, 1
/* 0B8500 800B7900 904F0001 */  lbu   $t7, 1($v0)
/* 0B8504 800B7904 00B2C021 */  addu  $t8, $a1, $s2
/* 0B8508 800B7908 000F7142 */  srl   $t6, $t7, 5
/* 0B850C 800B790C 01C9082A */  slt   $at, $t6, $t1
/* 0B8510 800B7910 54200006 */  bnel  $at, $zero, .L800B792C
/* 0B8514 800B7914 26310001 */   addiu $s1, $s1, 1
/* 0B8518 800B7918 26520001 */  addiu $s2, $s2, 1
/* 0B851C 800B791C 0012CC00 */  sll   $t9, $s2, 0x10
/* 0B8520 800B7920 00199403 */  sra   $s2, $t9, 0x10
/* 0B8524 800B7924 A3110000 */  sb    $s1, ($t8)
/* 0B8528 800B7928 26310001 */  addiu $s1, $s1, 1
.L800B792C:
/* 0B852C 800B792C 0224082A */  slt   $at, $s1, $a0
/* 0B8530 800B7930 1420FFED */  bnez  $at, .L800B78E8
/* 0B8534 800B7934 24630001 */   addiu $v1, $v1, 1
/* 0B8538 800B7938 00008825 */  move  $s1, $zero
.L800B793C:
/* 0B853C 800B793C 02801025 */  move  $v0, $s4
.L800B7940:
/* 0B8540 800B7940 3C0C0200 */  lui   $t4, (0x02000540 >> 16) # lui $t4, 0x200
/* 0B8544 800B7944 358C0540 */  ori   $t4, (0x02000540 & 0xFFFF) # ori $t4, $t4, 0x540
/* 0B8548 800B7948 240D0300 */  li    $t5, 768
/* 0B854C 800B794C AC4D0004 */  sw    $t5, 4($v0)
/* 0B8550 800B7950 AC4C0000 */  sw    $t4, ($v0)
/* 0B8554 800B7954 814F0000 */  lb    $t7, ($t2)
/* 0B8558 800B7958 3C1E803B */  lui   $fp, %hi(D_803B1508) # $fp, 0x803b
/* 0B855C 800B795C 26940008 */  addiu $s4, $s4, 8
/* 0B8560 800B7960 19E00055 */  blez  $t7, .L800B7AB8
/* 0B8564 800B7964 27DE1508 */   addiu $fp, %lo(D_803B1508) # addiu $fp, $fp, 0x1508
/* 0B8568 800B7968 3C16803B */  lui   $s6, %hi(gNoteSubsEu) # $s6, 0x803b
/* 0B856C 800B796C 26D6FBC4 */  addiu $s6, %lo(gNoteSubsEu) # addiu $s6, $s6, -0x43c
/* 0B8570 800B7970 241700C0 */  li    $s7, 192
/* 0B8574 800B7974 00137140 */  sll   $t6, $s3, 5
.L800B7978:
/* 0B8578 800B7978 01D37021 */  addu  $t6, $t6, $s3
/* 0B857C 800B797C 3C18803B */  lui   $t8, %hi(gSynthesisReverbs) # $t8, 0x803b
/* 0B8580 800B7980 2718F790 */  addiu $t8, %lo(gSynthesisReverbs) # addiu $t8, $t8, -0x870
/* 0B8584 800B7984 000E70C0 */  sll   $t6, $t6, 3
/* 0B8588 800B7988 01D8C821 */  addu  $t9, $t6, $t8
/* 0B858C 800B798C AFB90064 */  sw    $t9, 0x64($sp)
/* 0B8590 800B7990 932B0001 */  lbu   $t3, 1($t9)
/* 0B8594 800B7994 3C01803B */  lui   $at, %hi(gUseReverb) # $at, 0x803b
/* 0B8598 800B7998 02802025 */  move  $a0, $s4
/* 0B859C 800B799C 000B6600 */  sll   $t4, $t3, 0x18
/* 0B85A0 800B79A0 000C6E03 */  sra   $t5, $t4, 0x18
/* 0B85A4 800B79A4 11A0000A */  beqz  $t5, .L800B79D0
/* 0B85A8 800B79A8 A02BFBC2 */   sb    $t3, %lo(gUseReverb)($at)
/* 0B85AC 800B79AC 00133400 */  sll   $a2, $s3, 0x10
/* 0B85B0 800B79B0 00153C00 */  sll   $a3, $s5, 0x10
/* 0B85B4 800B79B4 00077403 */  sra   $t6, $a3, 0x10
/* 0B85B8 800B79B8 00067C03 */  sra   $t7, $a2, 0x10
/* 0B85BC 800B79BC 01E03025 */  move  $a2, $t7
/* 0B85C0 800B79C0 01C03825 */  move  $a3, $t6
/* 0B85C4 800B79C4 0C02DCC1 */  jal   func_800B7304
/* 0B85C8 800B79C8 8FA500C4 */   lw    $a1, 0xc4($sp)
/* 0B85CC 800B79CC 0040A025 */  move  $s4, $v0
.L800B79D0:
/* 0B85D0 800B79D0 0232082A */  slt   $at, $s1, $s2
/* 0B85D4 800B79D4 10200024 */  beqz  $at, .L800B7A68
/* 0B85D8 800B79D8 27B80084 */   addiu $t8, $sp, 0x84
/* 0B85DC 800B79DC 02388021 */  addu  $s0, $s1, $t8
.L800B79E0:
/* 0B85E0 800B79E0 3C19803B */  lui   $t9, %hi(gMaxSimultaneousNotes) # $t9, 0x803b
/* 0B85E4 800B79E4 8F3970B0 */  lw    $t9, %lo(gMaxSimultaneousNotes)($t9)
/* 0B85E8 800B79E8 92030000 */  lbu   $v1, ($s0)
/* 0B85EC 800B79EC 8EC80000 */  lw    $t0, ($s6)
/* 0B85F0 800B79F0 02B90019 */  multu $s5, $t9
/* 0B85F4 800B79F4 00035900 */  sll   $t3, $v1, 4
/* 0B85F8 800B79F8 010B6021 */  addu  $t4, $t0, $t3
/* 0B85FC 800B79FC 00602025 */  move  $a0, $v1
/* 0B8600 800B7A00 00001012 */  mflo  $v0
/* 0B8604 800B7A04 00026900 */  sll   $t5, $v0, 4
/* 0B8608 800B7A08 018D7821 */  addu  $t7, $t4, $t5
/* 0B860C 800B7A0C 91EE0001 */  lbu   $t6, 1($t7)
/* 0B8610 800B7A10 000EC142 */  srl   $t8, $t6, 5
/* 0B8614 800B7A14 56780015 */  bnel  $s3, $t8, .L800B7A6C
/* 0B8618 800B7A18 8FAE0064 */   lw    $t6, 0x64($sp)
/* 0B861C 800B7A1C 00770019 */  multu $v1, $s7
/* 0B8620 800B7A20 8FCD0000 */  lw    $t5, ($fp)
/* 0B8624 800B7A24 8FAF00C4 */  lw    $t7, 0xc4($sp)
/* 0B8628 800B7A28 0062C821 */  addu  $t9, $v1, $v0
/* 0B862C 800B7A2C 00195900 */  sll   $t3, $t9, 4
/* 0B8630 800B7A30 01682821 */  addu  $a1, $t3, $t0
/* 0B8634 800B7A34 8FA700C0 */  lw    $a3, 0xc0($sp)
/* 0B8638 800B7A38 AFB40014 */  sw    $s4, 0x14($sp)
/* 0B863C 800B7A3C AFB50018 */  sw    $s5, 0x18($sp)
/* 0B8640 800B7A40 AFAF0010 */  sw    $t7, 0x10($sp)
/* 0B8644 800B7A44 00006012 */  mflo  $t4
/* 0B8648 800B7A48 018D3021 */  addu  $a2, $t4, $t5
/* 0B864C 800B7A4C 0C02DF0C */  jal   func_800B7C30
/* 0B8650 800B7A50 24C60010 */   addiu $a2, $a2, 0x10
/* 0B8654 800B7A54 26310001 */  addiu $s1, $s1, 1
/* 0B8658 800B7A58 0232082A */  slt   $at, $s1, $s2
/* 0B865C 800B7A5C 0040A025 */  move  $s4, $v0
/* 0B8660 800B7A60 1420FFDF */  bnez  $at, .L800B79E0
/* 0B8664 800B7A64 26100001 */   addiu $s0, $s0, 1
.L800B7A68:
/* 0B8668 800B7A68 8FAE0064 */  lw    $t6, 0x64($sp)
.L800B7A6C:
/* 0B866C 800B7A6C 00132C00 */  sll   $a1, $s3, 0x10
/* 0B8670 800B7A70 0005CC03 */  sra   $t9, $a1, 0x10
/* 0B8674 800B7A74 91D80001 */  lbu   $t8, 1($t6)
/* 0B8678 800B7A78 03202825 */  move  $a1, $t9
/* 0B867C 800B7A7C 02802025 */  move  $a0, $s4
/* 0B8680 800B7A80 13000005 */  beqz  $t8, .L800B7A98
/* 0B8684 800B7A84 00153400 */   sll   $a2, $s5, 0x10
/* 0B8688 800B7A88 00065C03 */  sra   $t3, $a2, 0x10
/* 0B868C 800B7A8C 0C02DD8C */  jal   func_800B7630
/* 0B8690 800B7A90 01603025 */   move  $a2, $t3
/* 0B8694 800B7A94 0040A025 */  move  $s4, $v0
.L800B7A98:
/* 0B8698 800B7A98 3C0F803B */  lui   $t7, %hi(gNumSynthesisReverbs) # $t7, 0x803b
/* 0B869C 800B7A9C 81EFFBC3 */  lb    $t7, %lo(gNumSynthesisReverbs)($t7)
/* 0B86A0 800B7AA0 26730001 */  addiu $s3, $s3, 1
/* 0B86A4 800B7AA4 00136400 */  sll   $t4, $s3, 0x10
/* 0B86A8 800B7AA8 000C9C03 */  sra   $s3, $t4, 0x10
/* 0B86AC 800B7AAC 026F082A */  slt   $at, $s3, $t7
/* 0B86B0 800B7AB0 5420FFB1 */  bnel  $at, $zero, .L800B7978
/* 0B86B4 800B7AB4 00137140 */   sll   $t6, $s3, 5
.L800B7AB8:
/* 0B86B8 800B7AB8 3C16803B */  lui   $s6, %hi(gNoteSubsEu) # $s6, 0x803b
/* 0B86BC 800B7ABC 3C1E803B */  lui   $fp, %hi(D_803B1508) # $fp, 0x803b
/* 0B86C0 800B7AC0 0232082A */  slt   $at, $s1, $s2
/* 0B86C4 800B7AC4 27DE1508 */  addiu $fp, %lo(D_803B1508) # addiu $fp, $fp, 0x1508
/* 0B86C8 800B7AC8 26D6FBC4 */  addiu $s6, %lo(gNoteSubsEu) # addiu $s6, $s6, -0x43c
/* 0B86CC 800B7ACC 10200030 */  beqz  $at, .L800B7B90
/* 0B86D0 800B7AD0 241700C0 */   li    $s7, 192
/* 0B86D4 800B7AD4 27AE0084 */  addiu $t6, $sp, 0x84
/* 0B86D8 800B7AD8 022E8021 */  addu  $s0, $s1, $t6
/* 0B86DC 800B7ADC 24130001 */  li    $s3, 1
.L800B7AE0:
/* 0B86E0 800B7AE0 3C18803B */  lui   $t8, %hi(gMaxSimultaneousNotes) # $t8, 0x803b
/* 0B86E4 800B7AE4 8F1870B0 */  lw    $t8, %lo(gMaxSimultaneousNotes)($t8)
/* 0B86E8 800B7AE8 92030000 */  lbu   $v1, ($s0)
/* 0B86EC 800B7AEC 8EC80000 */  lw    $t0, ($s6)
/* 0B86F0 800B7AF0 02B80019 */  multu $s5, $t8
/* 0B86F4 800B7AF4 0003C900 */  sll   $t9, $v1, 4
/* 0B86F8 800B7AF8 01195821 */  addu  $t3, $t0, $t9
/* 0B86FC 800B7AFC 3C0F803B */  lui   $t7, %hi(D_803B03C0) # 0x803b
/* 0B8700 800B7B00 3C011000 */  lui   $at, 0x1000
/* 0B8704 800B7B04 00602025 */  move  $a0, $v1
/* 0B8708 800B7B08 00001012 */  mflo  $v0
/* 0B870C 800B7B0C 00026100 */  sll   $t4, $v0, 4
/* 0B8710 800B7B10 016C6821 */  addu  $t5, $t3, $t4
/* 0B8714 800B7B14 91A50002 */  lbu   $a1, 2($t5)
/* 0B8718 800B7B18 01E57821 */  addu  $t7, $t7, $a1
/* 0B871C 800B7B1C 91EF03C0 */  lbu   $t7, %lo(D_803B03C0)($t7) # 0x3c0($t7)
/* 0B8720 800B7B20 29EE0002 */  slti  $t6, $t7, 2
/* 0B8724 800B7B24 39CE0001 */  xori  $t6, $t6, 1
/* 0B8728 800B7B28 166E0011 */  bne   $s3, $t6, .L800B7B70
/* 0B872C 800B7B2C 00117A00 */   sll   $t7, $s1, 8
/* 0B8730 800B7B30 00770019 */  multu $v1, $s7
/* 0B8734 800B7B34 8FCC0000 */  lw    $t4, ($fp)
/* 0B8738 800B7B38 8FAD00C4 */  lw    $t5, 0xc4($sp)
/* 0B873C 800B7B3C 0062C021 */  addu  $t8, $v1, $v0
/* 0B8740 800B7B40 0018C900 */  sll   $t9, $t8, 4
/* 0B8744 800B7B44 03282821 */  addu  $a1, $t9, $t0
/* 0B8748 800B7B48 8FA700C0 */  lw    $a3, 0xc0($sp)
/* 0B874C 800B7B4C AFB40014 */  sw    $s4, 0x14($sp)
/* 0B8750 800B7B50 AFB50018 */  sw    $s5, 0x18($sp)
/* 0B8754 800B7B54 AFAD0010 */  sw    $t5, 0x10($sp)
/* 0B8758 800B7B58 00005812 */  mflo  $t3
/* 0B875C 800B7B5C 016C3021 */  addu  $a2, $t3, $t4
/* 0B8760 800B7B60 0C02DF0C */  jal   func_800B7C30
/* 0B8764 800B7B64 24C60010 */   addiu $a2, $a2, 0x10
/* 0B8768 800B7B68 10000005 */  b     .L800B7B80
/* 0B876C 800B7B6C 0040A025 */   move  $s4, $v0
.L800B7B70:
/* 0B8770 800B7B70 00AF7021 */  addu  $t6, $a1, $t7
/* 0B8774 800B7B74 01C1C021 */  addu  $t8, $t6, $at
/* 0B8778 800B7B78 3C01803B */  lui   $at, %hi(D_803B7198) # $at, 0x803b
/* 0B877C 800B7B7C AC387198 */  sw    $t8, %lo(D_803B7198)($at)
.L800B7B80:
/* 0B8780 800B7B80 26310001 */  addiu $s1, $s1, 1
/* 0B8784 800B7B84 0232082A */  slt   $at, $s1, $s2
/* 0B8788 800B7B88 1420FFD5 */  bnez  $at, .L800B7AE0
/* 0B878C 800B7B8C 26100001 */   addiu $s0, $s0, 1
.L800B7B90:
/* 0B8790 800B7B90 02802025 */  move  $a0, $s4
/* 0B8794 800B7B94 3C190800 */  lui   $t9, 0x800
/* 0B8798 800B7B98 AC990000 */  sw    $t9, ($a0)
/* 0B879C 800B7B9C 8FA300C4 */  lw    $v1, 0xc4($sp)
/* 0B87A0 800B7BA0 26940008 */  addiu $s4, $s4, 8
/* 0B87A4 800B7BA4 02802825 */  move  $a1, $s4
/* 0B87A8 800B7BA8 00035840 */  sll   $t3, $v1, 1
/* 0B87AC 800B7BAC 316CFFFF */  andi  $t4, $t3, 0xffff
/* 0B87B0 800B7BB0 000B7040 */  sll   $t6, $t3, 1
/* 0B87B4 800B7BB4 AC8C0004 */  sw    $t4, 4($a0)
/* 0B87B8 800B7BB8 000EC103 */  sra   $t8, $t6, 4
/* 0B87BC 800B7BBC 3C0F0540 */  lui   $t7, (0x054006C0 >> 16) # lui $t7, 0x540
/* 0B87C0 800B7BC0 331900FF */  andi  $t9, $t8, 0xff
/* 0B87C4 800B7BC4 35EF06C0 */  ori   $t7, (0x054006C0 & 0xFFFF) # ori $t7, $t7, 0x6c0
/* 0B87C8 800B7BC8 26940008 */  addiu $s4, $s4, 8
/* 0B87CC 800B7BCC 3C0D0D00 */  lui   $t5, 0xd00
/* 0B87D0 800B7BD0 00195C00 */  sll   $t3, $t9, 0x10
/* 0B87D4 800B7BD4 3C011500 */  lui   $at, 0x1500
/* 0B87D8 800B7BD8 ACAD0000 */  sw    $t5, ($a1)
/* 0B87DC 800B7BDC ACAF0004 */  sw    $t7, 4($a1)
/* 0B87E0 800B7BE0 01616025 */  or    $t4, $t3, $at
/* 0B87E4 800B7BE4 02803025 */  move  $a2, $s4
/* 0B87E8 800B7BE8 ACCC0000 */  sw    $t4, ($a2)
/* 0B87EC 800B7BEC 8FAD00C0 */  lw    $t5, 0xc0($sp)
/* 0B87F0 800B7BF0 3C018000 */  lui   $at, 0x8000
/* 0B87F4 800B7BF4 26820008 */  addiu $v0, $s4, 8
/* 0B87F8 800B7BF8 01A17821 */  addu  $t7, $t5, $at
/* 0B87FC 800B7BFC ACCF0004 */  sw    $t7, 4($a2)
/* 0B8800 800B7C00 8FBF004C */  lw    $ra, 0x4c($sp)
/* 0B8804 800B7C04 8FBE0048 */  lw    $fp, 0x48($sp)
/* 0B8808 800B7C08 8FB70044 */  lw    $s7, 0x44($sp)
/* 0B880C 800B7C0C 8FB60040 */  lw    $s6, 0x40($sp)
/* 0B8810 800B7C10 8FB5003C */  lw    $s5, 0x3c($sp)
/* 0B8814 800B7C14 8FB40038 */  lw    $s4, 0x38($sp)
/* 0B8818 800B7C18 8FB30034 */  lw    $s3, 0x34($sp)
/* 0B881C 800B7C1C 8FB20030 */  lw    $s2, 0x30($sp)
/* 0B8820 800B7C20 8FB1002C */  lw    $s1, 0x2c($sp)
/* 0B8824 800B7C24 8FB00028 */  lw    $s0, 0x28($sp)
/* 0B8828 800B7C28 03E00008 */  jr    $ra
/* 0B882C 800B7C2C 27BD00C0 */   addiu $sp, $sp, 0xc0
