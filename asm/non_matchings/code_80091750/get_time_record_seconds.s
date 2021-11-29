# Originally func_800A7944
glabel get_time_record_seconds
/* 0A8544 800A7944 3C010009 */  lui   $at, (0x000927C0 >> 16) # lui $at, 9
/* 0A8548 800A7948 342127C0 */  ori   $at, (0x000927C0 & 0xFFFF) # ori $at, $at, 0x27c0
/* 0A854C 800A794C 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0A8550 800A7950 0081082A */  slt   $at, $a0, $at
/* 0A8554 800A7954 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0A8558 800A7958 14200005 */  bnez  $at, .L800A7970
/* 0A855C 800A795C 00803025 */   move  $a2, $a0
/* 0A8560 800A7960 0C029E38 */  jal   write_dashes
/* 0A8564 800A7964 00A02025 */   move  $a0, $a1
/* 0A8568 800A7968 1000000B */  b     .L800A7998
/* 0A856C 800A796C 8FBF0014 */   lw    $ra, 0x14($sp)
.L800A7970:
/* 0A8570 800A7970 24010064 */  li    $at, 100
/* 0A8574 800A7974 00C1001A */  div   $zero, $a2, $at
/* 0A8578 800A7978 00002012 */  mflo  $a0
/* 0A857C 800A797C 2401003C */  li    $at, 60
/* 0A8580 800A7980 00000000 */  nop   
/* 0A8584 800A7984 0081001A */  div   $zero, $a0, $at
/* 0A8588 800A7988 00002010 */  mfhi  $a0
/* 0A858C 800A798C 0C029E25 */  jal   convert_number_to_ascii
/* 0A8590 800A7990 00000000 */   nop   
/* 0A8594 800A7994 8FBF0014 */  lw    $ra, 0x14($sp)
.L800A7998:
/* 0A8598 800A7998 27BD0018 */  addiu $sp, $sp, 0x18
/* 0A859C 800A799C 03E00008 */  jr    $ra
/* 0A85A0 800A79A0 00000000 */   nop   
