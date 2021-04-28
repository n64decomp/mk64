glabel func_800022DC
/* 002EDC 800022DC 3C02800E */  lui   $v0, %hi(gActiveSPTask) # $v0, 0x800e
/* 002EE0 800022E0 2442C4A8 */  addiu $v0, %lo(gActiveSPTask) # addiu $v0, $v0, -0x3b58
/* 002EE4 800022E4 8C470000 */  lw    $a3, ($v0)
/* 002EE8 800022E8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 002EEC 800022EC AFBF0014 */  sw    $ra, 0x14($sp)
/* 002EF0 800022F0 AC400000 */  sw    $zero, ($v0)
/* 002EF4 800022F4 8CEE0048 */  lw    $t6, 0x48($a3)
/* 002EF8 800022F8 24010002 */  li    $at, 2
/* 002EFC 800022FC 00E02025 */  move  $a0, $a3
/* 002F00 80002300 55C10010 */  bnel  $t6, $at, .L80002344
/* 002F04 80002304 8CF90000 */   lw    $t9, ($a3)
/* 002F08 80002308 0C033758 */  jal   osSpTaskYielded
/* 002F0C 8000230C AFA7001C */   sw    $a3, 0x1c($sp)
/* 002F10 80002310 14400005 */  bnez  $v0, .L80002328
/* 002F14 80002314 8FA7001C */   lw    $a3, 0x1c($sp)
/* 002F18 80002318 240F0003 */  li    $t7, 3
/* 002F1C 8000231C ACEF0048 */  sw    $t7, 0x48($a3)
/* 002F20 80002320 0C000D97 */  jal   profiler_log_gfx_time
/* 002F24 80002324 24040001 */   li    $a0, 1
.L80002328:
/* 002F28 80002328 0C000DBB */  jal   profiler_log_vblank_time
/* 002F2C 8000232C 00000000 */   nop   
/* 002F30 80002330 0C00019F */  jal   start_sptask
/* 002F34 80002334 24040002 */   li    $a0, 2
/* 002F38 80002338 10000027 */  b     .L800023D8
/* 002F3C 8000233C 8FBF0014 */   lw    $ra, 0x14($sp)
/* 002F40 80002340 8CF90000 */  lw    $t9, ($a3)
.L80002344:
/* 002F44 80002344 24180003 */  li    $t8, 3
/* 002F48 80002348 24010002 */  li    $at, 2
/* 002F4C 8000234C 1721001F */  bne   $t9, $at, .L800023CC
/* 002F50 80002350 ACF80048 */   sw    $t8, 0x48($a3)
/* 002F54 80002354 0C000DBB */  jal   profiler_log_vblank_time
/* 002F58 80002358 AFA7001C */   sw    $a3, 0x1c($sp)
/* 002F5C 8000235C 3C02800E */  lui   $v0, %hi(sCurrentDisplaySPTask) # $v0, 0x800e
/* 002F60 80002360 8C42C4B0 */  lw    $v0, %lo(sCurrentDisplaySPTask)($v0)
/* 002F64 80002364 8FA7001C */  lw    $a3, 0x1c($sp)
/* 002F68 80002368 1040000E */  beqz  $v0, .L800023A4
/* 002F6C 8000236C 00000000 */   nop   
/* 002F70 80002370 8C430048 */  lw    $v1, 0x48($v0)
/* 002F74 80002374 24010003 */  li    $at, 3
/* 002F78 80002378 1061000A */  beq   $v1, $at, .L800023A4
/* 002F7C 8000237C 24010002 */   li    $at, 2
/* 002F80 80002380 10610004 */  beq   $v1, $at, .L80002394
/* 002F84 80002384 00002025 */   move  $a0, $zero
/* 002F88 80002388 0C000D97 */  jal   profiler_log_gfx_time
/* 002F8C 8000238C AFA7001C */   sw    $a3, 0x1c($sp)
/* 002F90 80002390 8FA7001C */  lw    $a3, 0x1c($sp)
.L80002394:
/* 002F94 80002394 24040001 */  li    $a0, 1
/* 002F98 80002398 0C00019F */  jal   start_sptask
/* 002F9C 8000239C AFA7001C */   sw    $a3, 0x1c($sp)
/* 002FA0 800023A0 8FA7001C */  lw    $a3, 0x1c($sp)
.L800023A4:
/* 002FA4 800023A4 3C01800E */  lui   $at, %hi(sCurrentAudioSPTask) # $at, 0x800e
/* 002FA8 800023A8 AC20C4AC */  sw    $zero, %lo(sCurrentAudioSPTask)($at)
/* 002FAC 800023AC 8CE40040 */  lw    $a0, 0x40($a3)
/* 002FB0 800023B0 00003025 */  move  $a2, $zero
/* 002FB4 800023B4 50800008 */  beql  $a0, $zero, .L800023D8
/* 002FB8 800023B8 8FBF0014 */   lw    $ra, 0x14($sp)
/* 002FBC 800023BC 0C033630 */  jal   osSendMesg
/* 002FC0 800023C0 8CE50044 */   lw    $a1, 0x44($a3)
/* 002FC4 800023C4 10000004 */  b     .L800023D8
/* 002FC8 800023C8 8FBF0014 */   lw    $ra, 0x14($sp)
.L800023CC:
/* 002FCC 800023CC 0C000D97 */  jal   profiler_log_gfx_time
/* 002FD0 800023D0 24040001 */   li    $a0, 1
/* 002FD4 800023D4 8FBF0014 */  lw    $ra, 0x14($sp)
.L800023D8:
/* 002FD8 800023D8 27BD0020 */  addiu $sp, $sp, 0x20
/* 002FDC 800023DC 03E00008 */  jr    $ra
/* 002FE0 800023E0 00000000 */   nop   
