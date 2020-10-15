glabel func_80002168
/* 002D68 80002168 3C02800E */  lui   $v0, %hi(D_800DC594) # $v0, 0x800e
/* 002D6C 8000216C 2442C594 */  addiu $v0, %lo(D_800DC594) # addiu $v0, $v0, -0x3a6c
/* 002D70 80002170 C4440000 */  lwc1  $f4, ($v0)
/* 002D74 80002174 3C01800F */  lui   $at, %hi(D_800EB640)
/* 002D78 80002178 D428B640 */  ldc1  $f8, %lo(D_800EB640)($at)
/* 002D7C 8000217C 460021A1 */  cvt.d.s $f6, $f4
/* 002D80 80002180 3C03800E */  lui   $v1, %hi(sNumVBlanks) # $v1, 0x800e
/* 002D84 80002184 46283280 */  add.d $f10, $f6, $f8
/* 002D88 80002188 2463C58C */  addiu $v1, %lo(sNumVBlanks) # addiu $v1, $v1, -0x3a74
/* 002D8C 8000218C 846E0000 */  lh    $t6, ($v1)
/* 002D90 80002190 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 002D94 80002194 46205420 */  cvt.s.d $f16, $f10
/* 002D98 80002198 AFBF0014 */  sw    $ra, 0x14($sp)
/* 002D9C 8000219C 25CF0001 */  addiu $t7, $t6, 1
/* 002DA0 800021A0 A46F0000 */  sh    $t7, ($v1)
/* 002DA4 800021A4 0C0007EB */  jal   func_80001FAC
/* 002DA8 800021A8 E4500000 */   swc1  $f16, ($v0)
/* 002DAC 800021AC 3C18800E */  lui   $t8, %hi(sCurrentAudioSPTask) # $t8, 0x800e
/* 002DB0 800021B0 8F18C4AC */  lw    $t8, %lo(sCurrentAudioSPTask)($t8)
/* 002DB4 800021B4 3C19800E */  lui   $t9, %hi(gActiveSPTask) # $t9, 0x800e
/* 002DB8 800021B8 3C08800E */  lui   $t0, %hi(gActiveSPTask) # $t0, 0x800e
/* 002DBC 800021BC 1300000E */  beqz  $t8, .L800021F8
/* 002DC0 800021C0 00000000 */   nop   
/* 002DC4 800021C4 8F39C4A8 */  lw    $t9, %lo(gActiveSPTask)($t9)
/* 002DC8 800021C8 13200005 */  beqz  $t9, .L800021E0
/* 002DCC 800021CC 00000000 */   nop   
/* 002DD0 800021D0 0C0007DC */  jal   interrupt_gfx_sptask
/* 002DD4 800021D4 00000000 */   nop   
/* 002DD8 800021D8 10000016 */  b     .L80002234
/* 002DDC 800021DC 00000000 */   nop   
.L800021E0:
/* 002DE0 800021E0 0C000DBB */  jal   profiler_log_vblank_time
/* 002DE4 800021E4 00000000 */   nop   
/* 002DE8 800021E8 0C00019F */  jal   start_sptask
/* 002DEC 800021EC 24040002 */   li    $a0, 2
/* 002DF0 800021F0 10000010 */  b     .L80002234
/* 002DF4 800021F4 00000000 */   nop   
.L800021F8:
/* 002DF8 800021F8 8D08C4A8 */  lw    $t0, %lo(gActiveSPTask)($t0)
/* 002DFC 800021FC 3C02800E */  lui   $v0, %hi(sCurrentDisplaySPTask) # $v0, 0x800e
/* 002E00 80002200 1500000C */  bnez  $t0, .L80002234
/* 002E04 80002204 00000000 */   nop   
/* 002E08 80002208 8C42C4B0 */  lw    $v0, %lo(sCurrentDisplaySPTask)($v0)
/* 002E0C 8000220C 10400009 */  beqz  $v0, .L80002234
/* 002E10 80002210 00000000 */   nop   
/* 002E14 80002214 8C490048 */  lw    $t1, 0x48($v0)
/* 002E18 80002218 24010003 */  li    $at, 3
/* 002E1C 8000221C 11210005 */  beq   $t1, $at, .L80002234
/* 002E20 80002220 00000000 */   nop   
/* 002E24 80002224 0C000D97 */  jal   profiler_log_gfx_time
/* 002E28 80002228 00002025 */   move  $a0, $zero
/* 002E2C 8000222C 0C00019F */  jal   start_sptask
/* 002E30 80002230 24040001 */   li    $a0, 1
.L80002234:
/* 002E34 80002234 3C02800E */  lui   $v0, %hi(gVblankHandler1) # $v0, 0x800e
/* 002E38 80002238 8C42C4A0 */  lw    $v0, %lo(gVblankHandler1)($v0)
/* 002E3C 8000223C 00003025 */  move  $a2, $zero
/* 002E40 80002240 10400004 */  beqz  $v0, .L80002254
/* 002E44 80002244 00000000 */   nop   
/* 002E48 80002248 8C440000 */  lw    $a0, ($v0)
/* 002E4C 8000224C 0C033630 */  jal   osSendMesg
/* 002E50 80002250 8C450004 */   lw    $a1, 4($v0)
.L80002254:
/* 002E54 80002254 3C02800E */  lui   $v0, %hi(gVblankHandler2) # $v0, 0x800e
/* 002E58 80002258 8C42C4A4 */  lw    $v0, %lo(gVblankHandler2)($v0)
/* 002E5C 8000225C 00003025 */  move  $a2, $zero
/* 002E60 80002260 50400005 */  beql  $v0, $zero, .L80002278
/* 002E64 80002264 8FBF0014 */   lw    $ra, 0x14($sp)
/* 002E68 80002268 8C440000 */  lw    $a0, ($v0)
/* 002E6C 8000226C 0C033630 */  jal   osSendMesg
/* 002E70 80002270 8C450004 */   lw    $a1, 4($v0)
/* 002E74 80002274 8FBF0014 */  lw    $ra, 0x14($sp)
.L80002278:
/* 002E78 80002278 27BD0018 */  addiu $sp, $sp, 0x18
/* 002E7C 8000227C 03E00008 */  jr    $ra
/* 002E80 80002280 00000000 */   nop   
