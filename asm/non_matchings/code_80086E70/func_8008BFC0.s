glabel func_8008BFC0
/* 08CBC0 8008BFC0 000470C0 */  sll   $t6, $a0, 3
/* 08CBC4 8008BFC4 01C47023 */  subu  $t6, $t6, $a0
/* 08CBC8 8008BFC8 3C0F8016 */  lui   $t7, %hi(D_80165C18) # $t7, 0x8016
/* 08CBCC 8008BFCC 25EF5C18 */  addiu $t7, %lo(D_80165C18) # addiu $t7, $t7, 0x5c18
/* 08CBD0 8008BFD0 000E7140 */  sll   $t6, $t6, 5
/* 08CBD4 8008BFD4 01CF1021 */  addu  $v0, $t6, $t7
/* 08CBD8 8008BFD8 C4440004 */  lwc1  $f4, 4($v0)
/* 08CBDC 8008BFDC C4480008 */  lwc1  $f8, 8($v0)
/* 08CBE0 8008BFE0 4600218D */  trunc.w.s $f6, $f4
/* 08CBE4 8008BFE4 4600428D */  trunc.w.s $f10, $f8
/* 08CBE8 8008BFE8 44193000 */  mfc1  $t9, $f6
/* 08CBEC 8008BFEC 44095000 */  mfc1  $t1, $f10
/* 08CBF0 8008BFF0 A459009C */  sh    $t9, 0x9c($v0)
/* 08CBF4 8008BFF4 03E00008 */  jr    $ra
/* 08CBF8 8008BFF8 A449009E */   sh    $t1, 0x9e($v0)
