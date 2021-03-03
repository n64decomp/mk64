glabel func_800006E8
/* 0012E8 800006E8 3C028015 */  lui   $v0, %hi(gGfxSPTask) # $v0, 0x8015
/* 0012EC 800006EC 2442029C */  addiu $v0, %lo(gGfxSPTask) # addiu $v0, $v0, 0x29c
/* 0012F0 800006F0 8C4F0000 */  lw    $t7, ($v0)
/* 0012F4 800006F4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0012F8 800006F8 3C0E8015 */  lui   $t6, %hi(D_8014EF88) # $t6, 0x8015
/* 0012FC 800006FC AFBF0014 */  sw    $ra, 0x14($sp)
/* 001300 80000700 25CEEF88 */  addiu $t6, %lo(D_8014EF88) # addiu $t6, $t6, -0x1078
/* 001304 80000704 ADEE0040 */  sw    $t6, 0x40($t7)
/* 001308 80000708 8C590000 */  lw    $t9, ($v0)
/* 00130C 8000070C 24180002 */  li    $t8, 2
/* 001310 80000710 24080001 */  li    $t0, 1
/* 001314 80000714 AF380044 */  sw    $t8, 0x44($t9)
/* 001318 80000718 8C490000 */  lw    $t1, ($v0)
/* 00131C 8000071C 24040002 */  li    $a0, 2
/* 001320 80000720 3C03800E */  lui   $v1, %hi(rspbootTextStart) # $v1, 0x800e
/* 001324 80000724 AD280000 */  sw    $t0, ($t1)
/* 001328 80000728 8C4A0000 */  lw    $t2, ($v0)
/* 00132C 8000072C 24638F70 */  addiu $v1, %lo(rspbootTextStart) # addiu $v1, $v1, -0x7090
/* 001330 80000730 3C0C800E */  lui   $t4, %hi(rspbootTextEnd) # $t4, 0x800e
/* 001334 80000734 AD440004 */  sw    $a0, 4($t2)
/* 001338 80000738 8C4B0000 */  lw    $t3, ($v0)
/* 00133C 8000073C 258C9040 */  addiu $t4, %lo(rspbootTextEnd) # addiu $t4, $t4, -0x6fc0
/* 001340 80000740 01836823 */  subu  $t5, $t4, $v1
/* 001344 80000744 AD630008 */  sw    $v1, 8($t3)
/* 001348 80000748 8C4E0000 */  lw    $t6, ($v0)
/* 00134C 8000074C 3C0F800E */  lui   $t7, %hi(D_800DC50C) # $t7, 0x800e
/* 001350 80000750 24010004 */  li    $at, 4
/* 001354 80000754 ADCD000C */  sw    $t5, 0xc($t6)
/* 001358 80000758 8DEFC50C */  lw    $t7, %lo(D_800DC50C)($t7)
/* 00135C 8000075C 3C18800E */  lui   $t8, %hi(gPlayerCountSelection1) # $t8, 0x800e
/* 001360 80000760 3C19800E */  lui   $t9, %hi(gspF3DEXTextStart) # $t9, 0x800e
/* 001364 80000764 55E10006 */  bnel  $t7, $at, .L80000780
/* 001368 80000768 8C480000 */   lw    $t0, ($v0)
/* 00136C 8000076C 8F18C538 */  lw    $t8, %lo(gPlayerCountSelection1)($t8)
/* 001370 80000770 24010001 */  li    $at, 1
/* 001374 80000774 5701000A */  bnel  $t8, $at, .L800007A0
/* 001378 80000778 8C4C0000 */   lw    $t4, ($v0)
/* 00137C 8000077C 8C480000 */  lw    $t0, ($v0)
.L80000780:
/* 001380 80000780 27399040 */  addiu $t9, %lo(gspF3DEXTextStart) # addiu $t9, $t9, -0x6fc0
/* 001384 80000784 3C09800F */  lui   $t1, %hi(gspF3DEXDataStart) # $t1, 0x800f
/* 001388 80000788 AD190010 */  sw    $t9, 0x10($t0)
/* 00138C 8000078C 8C4A0000 */  lw    $t2, ($v0)
/* 001390 80000790 25293D00 */  addiu $t1, %lo(gspF3DEXDataStart) # addiu $t1, $t1, 0x3d00
/* 001394 80000794 10000009 */  b     .L800007BC
/* 001398 80000798 AD490018 */   sw    $t1, 0x18($t2)
/* 00139C 8000079C 8C4C0000 */  lw    $t4, ($v0)
.L800007A0:
/* 0013A0 800007A0 3C0B800E */  lui   $t3, %hi(gspF3DLXTextStart) # $t3, 0x800e
/* 0013A4 800007A4 256BA420 */  addiu $t3, %lo(gspF3DLXTextStart) # addiu $t3, $t3, -0x5be0
/* 0013A8 800007A8 AD8B0010 */  sw    $t3, 0x10($t4)
/* 0013AC 800007AC 8C4E0000 */  lw    $t6, ($v0)
/* 0013B0 800007B0 3C0D800F */  lui   $t5, %hi(gspF3DLXDataStart) # $t5, 0x800f
/* 0013B4 800007B4 25AD4500 */  addiu $t5, %lo(gspF3DLXDataStart) # addiu $t5, $t5, 0x4500
/* 0013B8 800007B8 ADCD0018 */  sw    $t5, 0x18($t6)
.L800007BC:
/* 0013BC 800007BC 8C4F0000 */  lw    $t7, ($v0)
/* 0013C0 800007C0 24191000 */  li    $t9, 4096
/* 0013C4 800007C4 24090800 */  li    $t1, 2048
/* 0013C8 800007C8 ADE00004 */  sw    $zero, 4($t7)
/* 0013CC 800007CC 8C580000 */  lw    $t8, ($v0)
/* 0013D0 800007D0 3C0B8016 */  lui   $t3, %hi(gGfxSPTaskStack) # $t3, 0x8016
/* 0013D4 800007D4 256BEFE0 */  addiu $t3, %lo(gGfxSPTaskStack) # addiu $t3, $t3, -0x1020
/* 0013D8 800007D8 AF040004 */  sw    $a0, 4($t8)
/* 0013DC 800007DC 8C480000 */  lw    $t0, ($v0)
/* 0013E0 800007E0 240D0400 */  li    $t5, 1024
/* 0013E4 800007E4 3C0F8039 */  lui   $t7, %hi(gGfxSPTaskOutputBuffer) # $t7, 0x8039
/* 0013E8 800007E8 AD190014 */  sw    $t9, 0x14($t0)
/* 0013EC 800007EC 8C4A0000 */  lw    $t2, ($v0)
/* 0013F0 800007F0 25EFFF80 */  addiu $t7, %lo(gGfxSPTaskOutputBuffer) # addiu $t7, $t7, -0x80
/* 0013F4 800007F4 3C19803B */  lui   $t9, %hi(gGfxSPTaskOutputBufferSize) # $t9, 0x803b
/* 0013F8 800007F8 AD49001C */  sw    $t1, 0x1c($t2)
/* 0013FC 800007FC 8C4C0000 */  lw    $t4, ($v0)
/* 001400 80000800 3C038015 */  lui   $v1, %hi(gGfxPool) # $v1, 0x8015
/* 001404 80000804 2739F780 */  addiu $t9, %lo(gGfxSPTaskOutputBufferSize) # addiu $t9, $t9, -0x880
/* 001408 80000808 AD8B0020 */  sw    $t3, 0x20($t4)
/* 00140C 8000080C 8C4E0000 */  lw    $t6, ($v0)
/* 001410 80000810 2463EF40 */  addiu $v1, %lo(gGfxPool) # addiu $v1, $v1, -0x10c0
/* 001414 80000814 3C010001 */  lui   $at, (0x0001A0C0 >> 16) # lui $at, 1
/* 001418 80000818 ADCD0024 */  sw    $t5, 0x24($t6)
/* 00141C 8000081C 8C580000 */  lw    $t8, ($v0)
/* 001420 80000820 3421A0C0 */  ori   $at, (0x0001A0C0 & 0xFFFF) # ori $at, $at, 0xa0c0
/* 001424 80000824 3C0C8015 */  lui   $t4, %hi(gDisplayListHead) # $t4, 0x8015
/* 001428 80000828 AF0F0028 */  sw    $t7, 0x28($t8)
/* 00142C 8000082C 8C480000 */  lw    $t0, ($v0)
/* 001430 80000830 AD19002C */  sw    $t9, 0x2c($t0)
/* 001434 80000834 8C690000 */  lw    $t1, ($v1)
/* 001438 80000838 8C4B0000 */  lw    $t3, ($v0)
/* 00143C 8000083C 01215021 */  addu  $t2, $t1, $at
/* 001440 80000840 AD6A0030 */  sw    $t2, 0x30($t3)
/* 001444 80000844 8C6D0000 */  lw    $t5, ($v1)
/* 001448 80000848 8D8C0298 */  lw    $t4, %lo(gDisplayListHead)($t4)
/* 00144C 8000084C 3C01FFFE */  lui   $at, (0xFFFE5F40 >> 16) # lui $at, 0xfffe
/* 001450 80000850 34215F40 */  ori   $at, (0xFFFE5F40 & 0xFFFF) # ori $at, $at, 0x5f40
/* 001454 80000854 018D7023 */  subu  $t6, $t4, $t5
/* 001458 80000858 01C17821 */  addu  $t7, $t6, $at
/* 00145C 8000085C 8C480000 */  lw    $t0, ($v0)
/* 001460 80000860 000FC0C3 */  sra   $t8, $t7, 3
/* 001464 80000864 0018C8C0 */  sll   $t9, $t8, 3
/* 001468 80000868 0C023085 */  jal   func_8008C214
/* 00146C 8000086C AD190034 */   sw    $t9, 0x34($t0)
/* 001470 80000870 3C028015 */  lui   $v0, %hi(gGfxSPTask) # $v0, 0x8015
/* 001474 80000874 2442029C */  addiu $v0, %lo(gGfxSPTask) # addiu $v0, $v0, 0x29c
/* 001478 80000878 8C4A0000 */  lw    $t2, ($v0)
/* 00147C 8000087C 3C098016 */  lui   $t1, %hi(gGfxSPTaskYieldBuffer) # $t1, 0x8016
/* 001480 80000880 2529DEE0 */  addiu $t1, %lo(gGfxSPTaskYieldBuffer) # addiu $t1, $t1, -0x2120
/* 001484 80000884 AD490038 */  sw    $t1, 0x38($t2)
/* 001488 80000888 8C4C0000 */  lw    $t4, ($v0)
/* 00148C 8000088C 240B0D00 */  li    $t3, 3328
/* 001490 80000890 AD8B003C */  sw    $t3, 0x3c($t4)
/* 001494 80000894 8FBF0014 */  lw    $ra, 0x14($sp)
/* 001498 80000898 27BD0018 */  addiu $sp, $sp, 0x18
/* 00149C 8000089C 03E00008 */  jr    $ra
/* 0014A0 800008A0 00000000 */   nop   
