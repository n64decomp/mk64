glabel func_8009A344
/* 09AF44 8009A344 3C038019 */  lui   $v1, %hi(D_8018DEE0) # $v1, 0x8019
/* 09AF48 8009A348 3C028019 */  lui   $v0, %hi(D_8018E060) # $v0, 0x8019
/* 09AF4C 8009A34C 2442E060 */  addiu $v0, %lo(D_8018E060) # addiu $v0, $v0, -0x1fa0
/* 09AF50 8009A350 2463DEE0 */  addiu $v1, %lo(D_8018DEE0) # addiu $v1, $v1, -0x2120
.L8009A354:
/* 09AF54 8009A354 24630060 */  addiu $v1, $v1, 0x60
/* 09AF58 8009A358 AC60FFC4 */  sw    $zero, -0x3c($v1)
/* 09AF5C 8009A35C AC60FFDC */  sw    $zero, -0x24($v1)
/* 09AF60 8009A360 AC60FFF4 */  sw    $zero, -0xc($v1)
/* 09AF64 8009A364 1462FFFB */  bne   $v1, $v0, .L8009A354
/* 09AF68 8009A368 AC60FFAC */   sw    $zero, -0x54($v1)
/* 09AF6C 8009A36C 03E00008 */  jr    $ra
/* 09AF70 8009A370 00000000 */   nop   
