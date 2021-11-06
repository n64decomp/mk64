glabel func_800CBB48
/* 0CC748 800CBB48 3C03800F */  lui   $v1, %hi(D_800EA3A0) # $v1, 0x800f
/* 0CC74C 800CBB4C 2463A3A0 */  addiu $v1, %lo(D_800EA3A0) # addiu $v1, $v1, -0x5c60
/* 0CC750 800CBB50 906F0000 */  lbu   $t7, ($v1)
/* 0CC754 800CBB54 3C198019 */  lui   $t9, %hi(D_80193820) # $t9, 0x8019
/* 0CC758 800CBB58 27393820 */  addiu $t9, %lo(D_80193820) # addiu $t9, $t9, 0x3820
/* 0CC75C 800CBB5C 000FC0C0 */  sll   $t8, $t7, 3
/* 0CC760 800CBB60 03191021 */  addu  $v0, $t8, $t9
/* 0CC764 800CBB64 AC440000 */  sw    $a0, ($v0)
/* 0CC768 800CBB68 8CA80000 */  lw    $t0, ($a1)
/* 0CC76C 800CBB6C 27BDFFF0 */  addiu $sp, $sp, -0x10
/* 0CC770 800CBB70 AC480004 */  sw    $t0, 4($v0)
/* 0CC774 800CBB74 90690000 */  lbu   $t1, ($v1)
/* 0CC778 800CBB78 27BD0010 */  addiu $sp, $sp, 0x10
/* 0CC77C 800CBB7C 252A0001 */  addiu $t2, $t1, 1
/* 0CC780 800CBB80 03E00008 */  jr    $ra
/* 0CC784 800CBB84 A06A0000 */   sb    $t2, ($v1)
