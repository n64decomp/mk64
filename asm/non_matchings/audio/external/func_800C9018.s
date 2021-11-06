glabel func_800C9018
/* 0C9C18 800C9018 27BDFFD0 */  addiu $sp, $sp, -0x30
/* 0C9C1C 800C901C 308600FF */  andi  $a2, $a0, 0xff
/* 0C9C20 800C9020 00067100 */  sll   $t6, $a2, 4
/* 0C9C24 800C9024 01C67023 */  subu  $t6, $t6, $a2
/* 0C9C28 800C9028 3C0F800F */  lui   $t7, %hi(D_800E9F7C) # $t7, 0x800f
/* 0C9C2C 800C902C AFBF002C */  sw    $ra, 0x2c($sp)
/* 0C9C30 800C9030 AFBE0028 */  sw    $fp, 0x28($sp)
/* 0C9C34 800C9034 AFA40030 */  sw    $a0, 0x30($sp)
/* 0C9C38 800C9038 25EF9F7C */  addiu $t7, %lo(D_800E9F7C) # addiu $t7, $t7, -0x6084
/* 0C9C3C 800C903C 000E7080 */  sll   $t6, $t6, 2
/* 0C9C40 800C9040 03A0F025 */  move  $fp, $sp
/* 0C9C44 800C9044 0C03155E */  jal   func_800C5578
/* 0C9C48 800C9048 01CF2021 */   addu  $a0, $t6, $t7
/* 0C9C4C 800C904C 8FDF002C */  lw    $ra, 0x2c($fp)
/* 0C9C50 800C9050 03C0E825 */  move  $sp, $fp
/* 0C9C54 800C9054 8FDE0028 */  lw    $fp, 0x28($fp)
/* 0C9C58 800C9058 03E00008 */  jr    $ra
/* 0C9C5C 800C905C 27BD0030 */   addiu $sp, $sp, 0x30
