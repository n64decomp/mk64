glabel func_802A7C08
/* 111218 802A7C08 3C058015 */  lui   $a1, %hi(gSegmentTable) # $a1, 0x8015
/* 11121C 802A7C0C 3C098015 */  lui   $t1, %hi(gDisplayListHead) # $t1, 0x8015
/* 111220 802A7C10 25290298 */  addiu $t1, %lo(gDisplayListHead) # addiu $t1, $t1, 0x298
/* 111224 802A7C14 24A50258 */  addiu $a1, %lo(gSegmentTable) # addiu $a1, $a1, 0x258
/* 111228 802A7C18 00002025 */  move  $a0, $zero
/* 11122C 802A7C1C 24060004 */  li    $a2, 4
/* 111230 802A7C20 24070008 */  li    $a3, 8
/* 111234 802A7C24 2408000C */  li    $t0, 12
/* 111238 802A7C28 240B004C */  li    $t3, 76
/* 11123C 802A7C2C 3C0ABC00 */  lui   $t2, 0xbc00
.L802A7C30:
/* 111240 802A7C30 8D230000 */  lw    $v1, ($t1)
/* 111244 802A7C34 308FFFFF */  andi  $t7, $a0, 0xffff
/* 111248 802A7C38 000FC200 */  sll   $t8, $t7, 8
/* 11124C 802A7C3C 030AC825 */  or    $t9, $t8, $t2
/* 111250 802A7C40 246E0008 */  addiu $t6, $v1, 8
/* 111254 802A7C44 AD2E0000 */  sw    $t6, ($t1)
/* 111258 802A7C48 372C0006 */  ori   $t4, $t9, 6
/* 11125C 802A7C4C AC6C0000 */  sw    $t4, ($v1)
/* 111260 802A7C50 8CAD0000 */  lw    $t5, ($a1)
/* 111264 802A7C54 30CFFFFF */  andi  $t7, $a2, 0xffff
/* 111268 802A7C58 000FC200 */  sll   $t8, $t7, 8
/* 11126C 802A7C5C AC6D0004 */  sw    $t5, 4($v1)
/* 111270 802A7C60 8D230000 */  lw    $v1, ($t1)
/* 111274 802A7C64 030AC825 */  or    $t9, $t8, $t2
/* 111278 802A7C68 372C0006 */  ori   $t4, $t9, 6
/* 11127C 802A7C6C 246E0008 */  addiu $t6, $v1, 8
/* 111280 802A7C70 AD2E0000 */  sw    $t6, ($t1)
/* 111284 802A7C74 AC6C0000 */  sw    $t4, ($v1)
/* 111288 802A7C78 8CAD0004 */  lw    $t5, 4($a1)
/* 11128C 802A7C7C 30EFFFFF */  andi  $t7, $a3, 0xffff
/* 111290 802A7C80 000FC200 */  sll   $t8, $t7, 8
/* 111294 802A7C84 AC6D0004 */  sw    $t5, 4($v1)
/* 111298 802A7C88 8D230000 */  lw    $v1, ($t1)
/* 11129C 802A7C8C 030AC825 */  or    $t9, $t8, $t2
/* 1112A0 802A7C90 372C0006 */  ori   $t4, $t9, 6
/* 1112A4 802A7C94 246E0008 */  addiu $t6, $v1, 8
/* 1112A8 802A7C98 AD2E0000 */  sw    $t6, ($t1)
/* 1112AC 802A7C9C AC6C0000 */  sw    $t4, ($v1)
/* 1112B0 802A7CA0 8CAD0008 */  lw    $t5, 8($a1)
/* 1112B4 802A7CA4 310FFFFF */  andi  $t7, $t0, 0xffff
/* 1112B8 802A7CA8 000FC200 */  sll   $t8, $t7, 8
/* 1112BC 802A7CAC AC6D0004 */  sw    $t5, 4($v1)
/* 1112C0 802A7CB0 8D230000 */  lw    $v1, ($t1)
/* 1112C4 802A7CB4 030AC825 */  or    $t9, $t8, $t2
/* 1112C8 802A7CB8 372C0006 */  ori   $t4, $t9, 6
/* 1112CC 802A7CBC 246E0008 */  addiu $t6, $v1, 8
/* 1112D0 802A7CC0 AD2E0000 */  sw    $t6, ($t1)
/* 1112D4 802A7CC4 AC6C0000 */  sw    $t4, ($v1)
/* 1112D8 802A7CC8 8CAD000C */  lw    $t5, 0xc($a1)
/* 1112DC 802A7CCC 25080010 */  addiu $t0, $t0, 0x10
/* 1112E0 802A7CD0 24E70010 */  addiu $a3, $a3, 0x10
/* 1112E4 802A7CD4 24C60010 */  addiu $a2, $a2, 0x10
/* 1112E8 802A7CD8 24840010 */  addiu $a0, $a0, 0x10
/* 1112EC 802A7CDC 24A50010 */  addiu $a1, $a1, 0x10
/* 1112F0 802A7CE0 150BFFD3 */  bne   $t0, $t3, .L802A7C30
/* 1112F4 802A7CE4 AC6D0004 */   sw    $t5, 4($v1)
/* 1112F8 802A7CE8 03E00008 */  jr    $ra
/* 1112FC 802A7CEC 00000000 */   nop   
