glabel func_800B5AAC
/* 0B66AC 800B5AAC 3C038019 */  lui   $v1, %hi(D_8018ED8E) # $v1, 0x8019
/* 0B66B0 800B5AB0 9063ED8E */  lbu   $v1, %lo(D_8018ED8E)($v1)
/* 0B66B4 800B5AB4 2463005A */  addiu $v1, $v1, 0x5a
/* 0B66B8 800B5AB8 04610004 */  bgez  $v1, .L800B5ACC
/* 0B66BC 800B5ABC 306200FF */   andi  $v0, $v1, 0xff
/* 0B66C0 800B5AC0 10400002 */  beqz  $v0, .L800B5ACC
/* 0B66C4 800B5AC4 00000000 */   nop   
/* 0B66C8 800B5AC8 2442FF00 */  addiu $v0, $v0, -0x100
.L800B5ACC:
/* 0B66CC 800B5ACC 304E00FF */  andi  $t6, $v0, 0xff
/* 0B66D0 800B5AD0 03E00008 */  jr    $ra
/* 0B66D4 800B5AD4 01C01025 */   move  $v0, $t6
