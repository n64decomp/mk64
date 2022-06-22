.section .rodata
glabel D_800F2BE8
.asciiz "ghost_kart=%d,"
.balign 4

glabel D_800F2BF8
.asciiz "pak1_ghost_kart=%d,"
.balign 4

glabel D_800F2C0C
.asciiz "pak2_ghost_kart=%d\n"
.balign 4

.section .text
glabel func_800B4560
/* 0B5160 800B4560 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0B5164 800B4564 3C0E8019 */  lui   $t6, %hi(D_8018D9C0) # $t6, 0x8019
/* 0B5168 800B4568 8DCED9C0 */  lw    $t6, %lo(D_8018D9C0)($t6)
/* 0B516C 800B456C AFA40020 */  sw    $a0, 0x20($sp)
/* 0B5170 800B4570 AFA50024 */  sw    $a1, 0x24($sp)
/* 0B5174 800B4574 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0B5178 800B4578 3C058016 */  lui   $a1, %hi(D_80162DE0) # $a1, 0x8016
/* 0B517C 800B457C 3C04800F */  lui   $a0, %hi(D_800F2BE8) # $a0, 0x800f
/* 0B5180 800B4580 24842BE8 */  addiu $a0, %lo(D_800F2BE8) # addiu $a0, $a0, 0x2be8
/* 0B5184 800B4584 8CA52DE0 */  lw    $a1, %lo(D_80162DE0)($a1)
/* 0B5188 800B4588 0C033DDD */  jal   rmonPrintf
/* 0B518C 800B458C AFAE0018 */   sw    $t6, 0x18($sp)
/* 0B5190 800B4590 8FAF0020 */  lw    $t7, 0x20($sp)
/* 0B5194 800B4594 3C058019 */  lui   $a1, %hi(D_8018EE16) # 0x8019
/* 0B5198 800B4598 3C04800F */  lui   $a0, %hi(D_800F2BF8) # $a0, 0x800f
/* 0B519C 800B459C 000FC1C0 */  sll   $t8, $t7, 7
/* 0B51A0 800B45A0 00B82821 */  addu  $a1, $a1, $t8
/* 0B51A4 800B45A4 90A5EE16 */  lbu   $a1, %lo(D_8018EE16)($a1) # -0x11ea($a1)
/* 0B51A8 800B45A8 0C033DDD */  jal   rmonPrintf
/* 0B51AC 800B45AC 24842BF8 */   addiu $a0, %lo(D_800F2BF8) # addiu $a0, $a0, 0x2bf8
/* 0B51B0 800B45B0 8FB90024 */  lw    $t9, 0x24($sp)
/* 0B51B4 800B45B4 8FA90018 */  lw    $t1, 0x18($sp)
/* 0B51B8 800B45B8 3C04800F */  lui   $a0, %hi(D_800F2C0C) # $a0, 0x800f
/* 0B51BC 800B45BC 001941C0 */  sll   $t0, $t9, 7
/* 0B51C0 800B45C0 01095021 */  addu  $t2, $t0, $t1
/* 0B51C4 800B45C4 91450006 */  lbu   $a1, 6($t2)
/* 0B51C8 800B45C8 0C033DDD */  jal   rmonPrintf
/* 0B51CC 800B45CC 24842C0C */   addiu $a0, %lo(D_800F2C0C) # addiu $a0, $a0, 0x2c0c
/* 0B51D0 800B45D0 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0B51D4 800B45D4 27BD0020 */  addiu $sp, $sp, 0x20
/* 0B51D8 800B45D8 03E00008 */  jr    $ra
/* 0B51DC 800B45DC 00000000 */   nop   
