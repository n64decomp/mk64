glabel create_next_audio_frame_task
/* 0CBF30 800CB330 3C03803B */  lui   $v1, %hi(D_803B70B8) # $v1, 0x803b
/* 0CBF34 800CB334 246370B8 */  addiu $v1, %lo(D_803B70B8) # addiu $v1, $v1, 0x70b8
/* 0CBF38 800CB338 8C620000 */  lw    $v0, ($v1)
/* 0CBF3C 800CB33C 3C18803B */  lui   $t8, %hi(gAudioBufferParameters) # $t8, 0x803b
/* 0CBF40 800CB340 27BDFF88 */  addiu $sp, $sp, -0x78
/* 0CBF44 800CB344 244E0001 */  addiu $t6, $v0, 1
/* 0CBF48 800CB348 AC6E0000 */  sw    $t6, ($v1)
/* 0CBF4C 800CB34C 8C6F0000 */  lw    $t7, ($v1)
/* 0CBF50 800CB350 87187088 */  lh    $t8, %lo(gAudioBufferParameters)($t8)
/* 0CBF54 800CB354 AFBE0030 */  sw    $fp, 0x30($sp)
/* 0CBF58 800CB358 03A0F025 */  move  $fp, $sp
/* 0CBF5C 800CB35C 01F8001A */  div   $zero, $t7, $t8
/* 0CBF60 800CB360 0000C810 */  mfhi  $t9
/* 0CBF64 800CB364 AFBF0034 */  sw    $ra, 0x34($sp)
/* 0CBF68 800CB368 AFB2002C */  sw    $s2, 0x2c($sp)
/* 0CBF6C 800CB36C AFB10028 */  sw    $s1, 0x28($sp)
/* 0CBF70 800CB370 AFB00024 */  sw    $s0, 0x24($sp)
/* 0CBF74 800CB374 17000002 */  bnez  $t8, .L800CB380
/* 0CBF78 800CB378 00000000 */   nop   
/* 0CBF7C 800CB37C 0007000D */  break 7
.L800CB380:
/* 0CBF80 800CB380 2401FFFF */  li    $at, -1
/* 0CBF84 800CB384 17010004 */  bne   $t8, $at, .L800CB398
/* 0CBF88 800CB388 3C018000 */   lui   $at, 0x8000
/* 0CBF8C 800CB38C 15E10002 */  bne   $t7, $at, .L800CB398
/* 0CBF90 800CB390 00000000 */   nop   
/* 0CBF94 800CB394 0006000D */  break 6
.L800CB398:
/* 0CBF98 800CB398 3C04800F */  lui   $a0, %hi(D_800EA3A8) # $a0, 0x800f
/* 0CBF9C 800CB39C 13200003 */  beqz  $t9, .L800CB3AC
/* 0CBFA0 800CB3A0 00003025 */   move  $a2, $zero
/* 0CBFA4 800CB3A4 10000114 */  b     .L800CB7F8
/* 0CBFA8 800CB3A8 00001025 */   move  $v0, $zero
.L800CB3AC:
/* 0CBFAC 800CB3AC 8C84A3A8 */  lw    $a0, %lo(D_800EA3A8)($a0)
/* 0CBFB0 800CB3B0 0C033630 */  jal   osSendMesg
/* 0CBFB4 800CB3B4 8C650000 */   lw    $a1, ($v1)
/* 0CBFB8 800CB3B8 24030003 */  li    $v1, 3
/* 0CBFBC 800CB3BC 3C04803B */  lui   $a0, %hi(D_803B70C4) # $a0, 0x803b
/* 0CBFC0 800CB3C0 248470C4 */  addiu $a0, %lo(D_803B70C4) # addiu $a0, $a0, 0x70c4
/* 0CBFC4 800CB3C4 8C8A0000 */  lw    $t2, ($a0)
/* 0CBFC8 800CB3C8 3C05803B */  lui   $a1, %hi(D_803B70C0) # $a1, 0x803b
/* 0CBFCC 800CB3CC 24A570C0 */  addiu $a1, %lo(D_803B70C0) # addiu $a1, $a1, 0x70c0
/* 0CBFD0 800CB3D0 254B0001 */  addiu $t3, $t2, 1
/* 0CBFD4 800CB3D4 0163001A */  div   $zero, $t3, $v1
/* 0CBFD8 800CB3D8 00006810 */  mfhi  $t5
/* 0CBFDC 800CB3DC 25AF0001 */  addiu $t7, $t5, 1
/* 0CBFE0 800CB3E0 01606025 */  move  $t4, $t3
/* 0CBFE4 800CB3E4 01E3001A */  div   $zero, $t7, $v1
/* 0CBFE8 800CB3E8 8CA80000 */  lw    $t0, ($a1)
/* 0CBFEC 800CB3EC AC8B0000 */  sw    $t3, ($a0)
/* 0CBFF0 800CB3F0 00008010 */  mfhi  $s0
/* 0CBFF4 800CB3F4 39090001 */  xori  $t1, $t0, 1
/* 0CBFF8 800CB3F8 ACA90000 */  sw    $t1, ($a1)
/* 0CBFFC 800CB3FC 14600002 */  bnez  $v1, .L800CB408
/* 0CC000 800CB400 00000000 */   nop   
/* 0CC004 800CB404 0007000D */  break 7
.L800CB408:
/* 0CC008 800CB408 2401FFFF */  li    $at, -1
/* 0CC00C 800CB40C 14610004 */  bne   $v1, $at, .L800CB420
/* 0CC010 800CB410 3C018000 */   lui   $at, 0x8000
/* 0CC014 800CB414 15810002 */  bne   $t4, $at, .L800CB420
/* 0CC018 800CB418 00000000 */   nop   
/* 0CC01C 800CB41C 0006000D */  break 6
.L800CB420:
/* 0CC020 800CB420 AC8D0000 */  sw    $t5, ($a0)
/* 0CC024 800CB424 01A07025 */  move  $t6, $t5
/* 0CC028 800CB428 14600002 */  bnez  $v1, .L800CB434
/* 0CC02C 800CB42C 00000000 */   nop   
/* 0CC030 800CB430 0007000D */  break 7
.L800CB434:
/* 0CC034 800CB434 2401FFFF */  li    $at, -1
/* 0CC038 800CB438 14610004 */  bne   $v1, $at, .L800CB44C
/* 0CC03C 800CB43C 3C018000 */   lui   $at, 0x8000
/* 0CC040 800CB440 15E10002 */  bne   $t7, $at, .L800CB44C
/* 0CC044 800CB444 00000000 */   nop   
/* 0CC048 800CB448 0006000D */  break 6
.L800CB44C:
/* 0CC04C 800CB44C 0C034438 */  jal   osAiGetLength
/* 0CC050 800CB450 00000000 */   nop   
/* 0CC054 800CB454 0002C082 */  srl   $t8, $v0, 2
/* 0CC058 800CB458 0010C840 */  sll   $t9, $s0, 1
/* 0CC05C 800CB45C 3C03803B */  lui   $v1, %hi(D_803B718C) # 0x803b
/* 0CC060 800CB460 AFD80074 */  sw    $t8, 0x74($fp)
/* 0CC064 800CB464 00791821 */  addu  $v1, $v1, $t9
/* 0CC068 800CB468 8463718C */  lh    $v1, %lo(D_803B718C)($v1) # 0x718c($v1)
/* 0CC06C 800CB46C 00104080 */  sll   $t0, $s0, 2
/* 0CC070 800CB470 3C04803B */  lui   $a0, %hi(D_803B7180) # 0x803b
/* 0CC074 800CB474 10600004 */  beqz  $v1, .L800CB488
/* 0CC078 800CB478 00882021 */   addu  $a0, $a0, $t0
/* 0CC07C 800CB47C 8C847180 */  lw    $a0, %lo(D_803B7180)($a0) # 0x7180($a0)
/* 0CC080 800CB480 0C03443C */  jal   osAiSetNextBuffer
/* 0CC084 800CB484 00032880 */   sll   $a1, $v1, 2
.L800CB488:
/* 0CC088 800CB488 3C02803B */  lui   $v0, %hi(gCurrAudioFrameDmaCount) # $v0, 0x803b
/* 0CC08C 800CB48C 8C5170BC */  lw    $s1, %lo(gCurrAudioFrameDmaCount)($v0)
/* 0CC090 800CB490 3C12803B */  lui   $s2, %hi(gCurrAudioFrameDmaQueue) # $s2, 0x803b
/* 0CC094 800CB494 26526008 */  addiu $s2, %lo(gCurrAudioFrameDmaQueue) # addiu $s2, $s2, 0x6008
/* 0CC098 800CB498 1A20000D */  blez  $s1, .L800CB4D0
/* 0CC09C 800CB49C 00008025 */   move  $s0, $zero
/* 0CC0A0 800CB4A0 02402025 */  move  $a0, $s2
.L800CB4A4:
/* 0CC0A4 800CB4A4 00002825 */  move  $a1, $zero
/* 0CC0A8 800CB4A8 0C0335D4 */  jal   osRecvMesg
/* 0CC0AC 800CB4AC 00003025 */   move  $a2, $zero
/* 0CC0B0 800CB4B0 14400002 */  bnez  $v0, .L800CB4BC
/* 0CC0B4 800CB4B4 3C09803B */   lui   $t1, %hi(gCurrAudioFrameDmaCount) # $t1, 0x803b
/* 0CC0B8 800CB4B8 2631FFFF */  addiu $s1, $s1, -1
.L800CB4BC:
/* 0CC0BC 800CB4BC 8D2970BC */  lw    $t1, %lo(gCurrAudioFrameDmaCount)($t1)
/* 0CC0C0 800CB4C0 26100001 */  addiu $s0, $s0, 1
/* 0CC0C4 800CB4C4 0209082A */  slt   $at, $s0, $t1
/* 0CC0C8 800CB4C8 5420FFF6 */  bnel  $at, $zero, .L800CB4A4
/* 0CC0CC 800CB4CC 02402025 */   move  $a0, $s2
.L800CB4D0:
/* 0CC0D0 800CB4D0 3C12803B */  lui   $s2, %hi(gCurrAudioFrameDmaQueue) # $s2, 0x803b
/* 0CC0D4 800CB4D4 1220000A */  beqz  $s1, .L800CB500
/* 0CC0D8 800CB4D8 26526008 */   addiu $s2, %lo(gCurrAudioFrameDmaQueue) # addiu $s2, $s2, 0x6008
/* 0CC0DC 800CB4DC 1A200008 */  blez  $s1, .L800CB500
/* 0CC0E0 800CB4E0 00008025 */   move  $s0, $zero
/* 0CC0E4 800CB4E4 02402025 */  move  $a0, $s2
.L800CB4E8:
/* 0CC0E8 800CB4E8 00002825 */  move  $a1, $zero
/* 0CC0EC 800CB4EC 0C0335D4 */  jal   osRecvMesg
/* 0CC0F0 800CB4F0 24060001 */   li    $a2, 1
/* 0CC0F4 800CB4F4 26100001 */  addiu $s0, $s0, 1
/* 0CC0F8 800CB4F8 5611FFFB */  bnel  $s0, $s1, .L800CB4E8
/* 0CC0FC 800CB4FC 02402025 */   move  $a0, $s2
.L800CB500:
/* 0CC100 800CB500 8E510008 */  lw    $s1, 8($s2)
/* 0CC104 800CB504 1220000A */  beqz  $s1, .L800CB530
/* 0CC108 800CB508 00000000 */   nop   
/* 0CC10C 800CB50C 1A200008 */  blez  $s1, .L800CB530
/* 0CC110 800CB510 00008025 */   move  $s0, $zero
/* 0CC114 800CB514 02402025 */  move  $a0, $s2
.L800CB518:
/* 0CC118 800CB518 00002825 */  move  $a1, $zero
/* 0CC11C 800CB51C 0C0335D4 */  jal   osRecvMesg
/* 0CC120 800CB520 00003025 */   move  $a2, $zero
/* 0CC124 800CB524 26100001 */  addiu $s0, $s0, 1
/* 0CC128 800CB528 5611FFFB */  bnel  $s0, $s1, .L800CB518
/* 0CC12C 800CB52C 02402025 */   move  $a0, $s2
.L800CB530:
/* 0CC130 800CB530 3C01803B */  lui   $at, %hi(gCurrAudioFrameDmaCount) # $at, 0x803b
/* 0CC134 800CB534 0C02EB01 */  jal   func_800BAC04
/* 0CC138 800CB538 AC2070BC */   sw    $zero, %lo(gCurrAudioFrameDmaCount)($at)
/* 0CC13C 800CB53C 3C04800F */  lui   $a0, %hi(D_800EA3B0) # $a0, 0x800f
/* 0CC140 800CB540 8C84A3B0 */  lw    $a0, %lo(D_800EA3B0)($a0)
/* 0CC144 800CB544 27C50058 */  addiu $a1, $fp, 0x58
/* 0CC148 800CB548 0C0335D4 */  jal   osRecvMesg
/* 0CC14C 800CB54C 00003025 */   move  $a2, $zero
/* 0CC150 800CB550 2401FFFF */  li    $at, -1
/* 0CC154 800CB554 10410007 */  beq   $v0, $at, .L800CB574
/* 0CC158 800CB558 3C10803B */   lui   $s0, %hi(D_803B0500) # $s0, 0x803b
/* 0CC15C 800CB55C 8FCA0058 */  lw    $t2, 0x58($fp)
/* 0CC160 800CB560 3C01803B */  lui   $at, %hi(D_803B0501) # $at, 0x803b
/* 0CC164 800CB564 26100500 */  addiu $s0, %lo(D_803B0500) # addiu $s0, $s0, 0x500
/* 0CC168 800CB568 240B0005 */  li    $t3, 5
/* 0CC16C 800CB56C A02A0501 */  sb    $t2, %lo(D_803B0501)($at)
/* 0CC170 800CB570 A20B0000 */  sb    $t3, ($s0)
.L800CB574:
/* 0CC174 800CB574 3C10803B */  lui   $s0, %hi(D_803B0500) # $s0, 0x803b
/* 0CC178 800CB578 26100500 */  addiu $s0, %lo(D_803B0500) # addiu $s0, $s0, 0x500
/* 0CC17C 800CB57C 920C0000 */  lbu   $t4, ($s0)
/* 0CC180 800CB580 1180000F */  beqz  $t4, .L800CB5C0
/* 0CC184 800CB584 00000000 */   nop   
/* 0CC188 800CB588 0C02E803 */  jal   func_800BA00C
/* 0CC18C 800CB58C 00000000 */   nop   
/* 0CC190 800CB590 1440000B */  bnez  $v0, .L800CB5C0
/* 0CC194 800CB594 00000000 */   nop   
/* 0CC198 800CB598 920D0000 */  lbu   $t5, ($s0)
/* 0CC19C 800CB59C 3C04800F */  lui   $a0, %hi(D_800EA3B4) # $a0, 0x800f
/* 0CC1A0 800CB5A0 3C05803B */  lui   $a1, %hi(D_803B0501) # $a1, 0x803b
/* 0CC1A4 800CB5A4 15A00004 */  bnez  $t5, .L800CB5B8
/* 0CC1A8 800CB5A8 00003025 */   move  $a2, $zero
/* 0CC1AC 800CB5AC 8C84A3B4 */  lw    $a0, %lo(D_800EA3B4)($a0)
/* 0CC1B0 800CB5B0 0C033630 */  jal   osSendMesg
/* 0CC1B4 800CB5B4 90A50501 */   lbu   $a1, %lo(D_803B0501)($a1)
.L800CB5B8:
/* 0CC1B8 800CB5B8 1000008F */  b     .L800CB7F8
/* 0CC1BC 800CB5BC 00001025 */   move  $v0, $zero
.L800CB5C0:
/* 0CC1C0 800CB5C0 3C02803B */  lui   $v0, %hi(D_803B70C0) # $v0, 0x803b
/* 0CC1C4 800CB5C4 8C4270C0 */  lw    $v0, %lo(D_803B70C0)($v0)
/* 0CC1C8 800CB5C8 3C0F803B */  lui   $t7, %hi(D_803B70D8) # $t7, 0x803b
/* 0CC1CC 800CB5CC 3C12803B */  lui   $s2, %hi(D_803B70D4) # $s2, 0x803b
/* 0CC1D0 800CB5D0 00027080 */  sll   $t6, $v0, 2
/* 0CC1D4 800CB5D4 01C27021 */  addu  $t6, $t6, $v0
/* 0CC1D8 800CB5D8 000E7100 */  sll   $t6, $t6, 4
/* 0CC1DC 800CB5DC 25EF70D8 */  addiu $t7, %lo(D_803B70D8) # addiu $t7, $t7, 0x70d8
/* 0CC1E0 800CB5E0 265270D4 */  addiu $s2, %lo(D_803B70D4) # addiu $s2, $s2, 0x70d4
/* 0CC1E4 800CB5E4 01CFC021 */  addu  $t8, $t6, $t7
/* 0CC1E8 800CB5E8 AE580000 */  sw    $t8, ($s2)
/* 0CC1EC 800CB5EC 3C08803B */  lui   $t0, %hi(D_803B70C8) # 0x803b
/* 0CC1F0 800CB5F0 3C10803B */  lui   $s0, %hi(D_803B70C4) # $s0, 0x803b
/* 0CC1F4 800CB5F4 0002C880 */  sll   $t9, $v0, 2
/* 0CC1F8 800CB5F8 8E1070C4 */  lw    $s0, %lo(D_803B70C4)($s0)
/* 0CC1FC 800CB5FC 01194021 */  addu  $t0, $t0, $t9
/* 0CC200 800CB600 8D0870C8 */  lw    $t0, %lo(D_803B70C8)($t0) # 0x70c8($t0)
/* 0CC204 800CB604 3C0A803B */  lui   $t2, %hi(D_803B7180) # $t2, 0x803b
/* 0CC208 800CB608 3C01803B */  lui   $at, %hi(D_803B70D0) # $at, 0x803b
/* 0CC20C 800CB60C 254A7180 */  addiu $t2, %lo(D_803B7180) # addiu $t2, $t2, 0x7180
/* 0CC210 800CB610 00104880 */  sll   $t1, $s0, 2
/* 0CC214 800CB614 012A3821 */  addu  $a3, $t1, $t2
/* 0CC218 800CB618 AC2870D0 */  sw    $t0, %lo(D_803B70D0)($at)
/* 0CC21C 800CB61C 8CEB0000 */  lw    $t3, ($a3)
/* 0CC220 800CB620 3C05803B */  lui   $a1, %hi(gAudioBufferParameters) # $a1, 0x803b
/* 0CC224 800CB624 24A57088 */  addiu $a1, %lo(gAudioBufferParameters) # addiu $a1, $a1, 0x7088
/* 0CC228 800CB628 AFCB0060 */  sw    $t3, 0x60($fp)
/* 0CC22C 800CB62C 84AE0006 */  lh    $t6, 6($a1)
/* 0CC230 800CB630 8FCF0074 */  lw    $t7, 0x74($fp)
/* 0CC234 800CB634 3C0D803B */  lui   $t5, %hi(D_803B718C) # $t5, 0x803b
/* 0CC238 800CB638 25AD718C */  addiu $t5, %lo(D_803B718C) # addiu $t5, $t5, 0x718c
/* 0CC23C 800CB63C 01CFC023 */  subu  $t8, $t6, $t7
/* 0CC240 800CB640 27190040 */  addiu $t9, $t8, 0x40
/* 0CC244 800CB644 3328FFF0 */  andi  $t0, $t9, 0xfff0
/* 0CC248 800CB648 00106040 */  sll   $t4, $s0, 1
/* 0CC24C 800CB64C 018D8821 */  addu  $s1, $t4, $t5
/* 0CC250 800CB650 25090010 */  addiu $t1, $t0, 0x10
/* 0CC254 800CB654 A6290000 */  sh    $t1, ($s1)
/* 0CC258 800CB658 86230000 */  lh    $v1, ($s1)
/* 0CC25C 800CB65C 84A4000A */  lh    $a0, 0xa($a1)
/* 0CC260 800CB660 00003025 */  move  $a2, $zero
/* 0CC264 800CB664 0064082A */  slt   $at, $v1, $a0
/* 0CC268 800CB668 50200004 */  beql  $at, $zero, .L800CB67C
/* 0CC26C 800CB66C 84A20008 */   lh    $v0, 8($a1)
/* 0CC270 800CB670 A6240000 */  sh    $a0, ($s1)
/* 0CC274 800CB674 86230000 */  lh    $v1, ($s1)
/* 0CC278 800CB678 84A20008 */  lh    $v0, 8($a1)
.L800CB67C:
/* 0CC27C 800CB67C 27C50054 */  addiu $a1, $fp, 0x54
/* 0CC280 800CB680 3C04800F */  lui   $a0, %hi(D_800EA3AC) # $a0, 0x800f
/* 0CC284 800CB684 0043082A */  slt   $at, $v0, $v1
/* 0CC288 800CB688 10200002 */  beqz  $at, .L800CB694
/* 0CC28C 800CB68C 00000000 */   nop   
/* 0CC290 800CB690 A6220000 */  sh    $v0, ($s1)
.L800CB694:
/* 0CC294 800CB694 8C84A3AC */  lw    $a0, %lo(D_800EA3AC)($a0)
/* 0CC298 800CB698 0C0335D4 */  jal   osRecvMesg
/* 0CC29C 800CB69C AFC70040 */   sw    $a3, 0x40($fp)
/* 0CC2A0 800CB6A0 3C10803B */  lui   $s0, %hi(D_803B70D0) # $s0, 0x803b
/* 0CC2A4 800CB6A4 2401FFFF */  li    $at, -1
/* 0CC2A8 800CB6A8 10410003 */  beq   $v0, $at, .L800CB6B8
/* 0CC2AC 800CB6AC 261070D0 */   addiu $s0, %lo(D_803B70D0) # addiu $s0, $s0, 0x70d0
/* 0CC2B0 800CB6B0 0C032F2C */  jal   func_800CBCB0
/* 0CC2B4 800CB6B4 8FC40054 */   lw    $a0, 0x54($fp)
.L800CB6B8:
/* 0CC2B8 800CB6B8 8E040000 */  lw    $a0, ($s0)
/* 0CC2BC 800CB6BC 27C50070 */  addiu $a1, $fp, 0x70
/* 0CC2C0 800CB6C0 8FC60060 */  lw    $a2, 0x60($fp)
/* 0CC2C4 800CB6C4 0C02DC3B */  jal   func_800B70EC
/* 0CC2C8 800CB6C8 86270000 */   lh    $a3, ($s1)
/* 0CC2CC 800CB6CC 0C034468 */  jal   osGetCount
/* 0CC2D0 800CB6D0 AE020000 */   sw    $v0, ($s0)
/* 0CC2D4 800CB6D4 3C04803B */  lui   $a0, %hi(D_803B7194) # $a0, 0x803b
/* 0CC2D8 800CB6D8 3C07803B */  lui   $a3, %hi(D_803B70B8) # $a3, 0x803b
/* 0CC2DC 800CB6DC 24E770B8 */  addiu $a3, %lo(D_803B70B8) # addiu $a3, $a3, 0x70b8
/* 0CC2E0 800CB6E0 24847194 */  addiu $a0, %lo(D_803B7194) # addiu $a0, $a0, 0x7194
/* 0CC2E4 800CB6E4 8C8A0000 */  lw    $t2, ($a0)
/* 0CC2E8 800CB6E8 8CEB0000 */  lw    $t3, ($a3)
/* 0CC2EC 800CB6EC 8CF80000 */  lw    $t8, ($a3)
/* 0CC2F0 800CB6F0 3C10803B */  lui   $s0, %hi(D_803B70C0) # $s0, 0x803b
/* 0CC2F4 800CB6F4 014B6021 */  addu  $t4, $t2, $t3
/* 0CC2F8 800CB6F8 004C0019 */  multu $v0, $t4
/* 0CC2FC 800CB6FC 331900FF */  andi  $t9, $t8, 0xff
/* 0CC300 800CB700 00194040 */  sll   $t0, $t9, 1
/* 0CC304 800CB704 3C06800F */  lui   $a2, %hi(aspMainDataStart) # $a2, 0x800f
/* 0CC308 800CB708 24C64D00 */  addiu $a2, %lo(aspMainDataStart) # addiu $a2, $a2, 0x4d00
/* 0CC30C 800CB70C 3C05800E */  lui   $a1, %hi(rspbootTextStart) # $a1, 0x800e
/* 0CC310 800CB710 24180002 */  li    $t8, 2
/* 0CC314 800CB714 3C19800E */  lui   $t9, %hi(rspbootTextEnd) # $t9, 0x800e
/* 0CC318 800CB718 24A58F70 */  addiu $a1, %lo(rspbootTextStart) # addiu $a1, $a1, -0x7090
/* 0CC31C 800CB71C 27399040 */  addiu $t9, %lo(rspbootTextEnd) # addiu $t9, $t9, -0x6fc0
/* 0CC320 800CB720 00006812 */  mflo  $t5
/* 0CC324 800CB724 AC8D0000 */  sw    $t5, ($a0)
/* 0CC328 800CB728 8FCE0040 */  lw    $t6, 0x40($fp)
/* 0CC32C 800CB72C 8C8B0000 */  lw    $t3, ($a0)
/* 0CC330 800CB730 8E4D0000 */  lw    $t5, ($s2)
/* 0CC334 800CB734 8DCF0000 */  lw    $t7, ($t6)
/* 0CC338 800CB738 01E84821 */  addu  $t1, $t7, $t0
/* 0CC33C 800CB73C 852A0000 */  lh    $t2, ($t1)
/* 0CC340 800CB740 3C08800E */  lui   $t0, %hi(aspMainTextStart) # $t0, 0x800e
/* 0CC344 800CB744 03257823 */  subu  $t7, $t9, $a1
/* 0CC348 800CB748 014B6021 */  addu  $t4, $t2, $t3
/* 0CC34C 800CB74C AC8C0000 */  sw    $t4, ($a0)
/* 0CC350 800CB750 8E1070C0 */  lw    $s0, %lo(D_803B70C0)($s0)
/* 0CC354 800CB754 ADA00040 */  sw    $zero, 0x40($t5)
/* 0CC358 800CB758 8E4E0000 */  lw    $t6, ($s2)
/* 0CC35C 800CB75C 3C0A800F */  lui   $t2, %hi(aspMainDataEnd) # $t2, 0x800f
/* 0CC360 800CB760 254A5000 */  addiu $t2, %lo(aspMainDataEnd) # addiu $t2, $t2, 0x5000
/* 0CC364 800CB764 ADC00044 */  sw    $zero, 0x44($t6)
/* 0CC368 800CB768 8E430000 */  lw    $v1, ($s2)
/* 0CC36C 800CB76C 01465823 */  subu  $t3, $t2, $a2
/* 0CC370 800CB770 000B60C3 */  sra   $t4, $t3, 3
/* 0CC374 800CB774 AC780000 */  sw    $t8, ($v1)
/* 0CC378 800CB778 2508B830 */  addiu $t0, %lo(aspMainTextStart) # addiu $t0, $t0, -0x47d0
/* 0CC37C 800CB77C 24091000 */  li    $t1, 4096
/* 0CC380 800CB780 000C68C0 */  sll   $t5, $t4, 3
/* 0CC384 800CB784 3C18803B */  lui   $t8, %hi(D_803B70C8) # 0x803b
/* 0CC388 800CB788 00107080 */  sll   $t6, $s0, 2
/* 0CC38C 800CB78C 030EC021 */  addu  $t8, $t8, $t6
/* 0CC390 800CB790 AC600004 */  sw    $zero, 4($v1)
/* 0CC394 800CB794 AC650008 */  sw    $a1, 8($v1)
/* 0CC398 800CB798 AC6F000C */  sw    $t7, 0xc($v1)
/* 0CC39C 800CB79C AC680010 */  sw    $t0, 0x10($v1)
/* 0CC3A0 800CB7A0 AC660018 */  sw    $a2, 0x18($v1)
/* 0CC3A4 800CB7A4 AC690014 */  sw    $t1, 0x14($v1)
/* 0CC3A8 800CB7A8 AC6D001C */  sw    $t5, 0x1c($v1)
/* 0CC3AC 800CB7AC AC600020 */  sw    $zero, 0x20($v1)
/* 0CC3B0 800CB7B0 AC600024 */  sw    $zero, 0x24($v1)
/* 0CC3B4 800CB7B4 AC600028 */  sw    $zero, 0x28($v1)
/* 0CC3B8 800CB7B8 AC60002C */  sw    $zero, 0x2c($v1)
/* 0CC3BC 800CB7BC 8F1870C8 */  lw    $t8, %lo(D_803B70C8)($t8) # 0x70c8($t8)
/* 0CC3C0 800CB7C0 3C08800F */  lui   $t0, %hi(D_800EA484) # $t0, 0x800f
/* 0CC3C4 800CB7C4 AC780030 */  sw    $t8, 0x30($v1)
/* 0CC3C8 800CB7C8 8FD90070 */  lw    $t9, 0x70($fp)
/* 0CC3CC 800CB7CC AC600038 */  sw    $zero, 0x38($v1)
/* 0CC3D0 800CB7D0 AC60003C */  sw    $zero, 0x3c($v1)
/* 0CC3D4 800CB7D4 001978C0 */  sll   $t7, $t9, 3
/* 0CC3D8 800CB7D8 AC6F0034 */  sw    $t7, 0x34($v1)
/* 0CC3DC 800CB7DC 8FC90070 */  lw    $t1, 0x70($fp)
/* 0CC3E0 800CB7E0 8D08A484 */  lw    $t0, %lo(D_800EA484)($t0)
/* 0CC3E4 800CB7E4 0109082A */  slt   $at, $t0, $t1
/* 0CC3E8 800CB7E8 10200002 */  beqz  $at, .L800CB7F4
/* 0CC3EC 800CB7EC 3C01800F */   lui   $at, %hi(D_800EA484) # $at, 0x800f
/* 0CC3F0 800CB7F0 AC29A484 */  sw    $t1, %lo(D_800EA484)($at)
.L800CB7F4:
/* 0CC3F4 800CB7F4 8E420000 */  lw    $v0, ($s2)
.L800CB7F8:
/* 0CC3F8 800CB7F8 8FDF0034 */  lw    $ra, 0x34($fp)
/* 0CC3FC 800CB7FC 03C0E825 */  move  $sp, $fp
/* 0CC400 800CB800 8FD00024 */  lw    $s0, 0x24($fp)
/* 0CC404 800CB804 8FD10028 */  lw    $s1, 0x28($fp)
/* 0CC408 800CB808 8FD2002C */  lw    $s2, 0x2c($fp)
/* 0CC40C 800CB80C 8FDE0030 */  lw    $fp, 0x30($fp)
/* 0CC410 800CB810 03E00008 */  jr    $ra
/* 0CC414 800CB814 27BD0078 */   addiu $sp, $sp, 0x78
