glabel func_80057A50
/* 058650 80057A50 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 058654 80057A54 AFBF0014 */  sw    $ra, 0x14($sp)
/* 058658 80057A58 AFA40018 */  sw    $a0, 0x18($sp)
/* 05865C 80057A5C AFA5001C */  sw    $a1, 0x1c($sp)
/* 058660 80057A60 AFA60020 */  sw    $a2, 0x20($sp)
/* 058664 80057A64 0C015DC4 */  jal   load_debug_font
/* 058668 80057A68 AFA70024 */   sw    $a3, 0x24($sp)
/* 05866C 80057A6C 27A40018 */  addiu $a0, $sp, 0x18
/* 058670 80057A70 27A5001C */  addiu $a1, $sp, 0x1c
/* 058674 80057A74 0C015D21 */  jal   debug_print_string
/* 058678 80057A78 8FA60020 */   lw    $a2, 0x20($sp)
/* 05867C 80057A7C 27A40018 */  addiu $a0, $sp, 0x18
/* 058680 80057A80 27A5001C */  addiu $a1, $sp, 0x1c
/* 058684 80057A84 8FA60024 */  lw    $a2, 0x24($sp)
/* 058688 80057A88 0C015D8B */  jal   func_8005762C
/* 05868C 80057A8C 2407000A */   li    $a3, 10
/* 058690 80057A90 0C015DDE */  jal   func_80057778
/* 058694 80057A94 00000000 */   nop   
/* 058698 80057A98 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05869C 80057A9C 27BD0018 */  addiu $sp, $sp, 0x18
/* 0586A0 80057AA0 03E00008 */  jr    $ra
/* 0586A4 80057AA4 00000000 */   nop   

/* 0586A8 80057AA8 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0586AC 80057AAC AFBF0014 */  sw    $ra, 0x14($sp)
/* 0586B0 80057AB0 AFA40018 */  sw    $a0, 0x18($sp)
/* 0586B4 80057AB4 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0586B8 80057AB8 AFA60020 */  sw    $a2, 0x20($sp)
/* 0586BC 80057ABC 0C015DC4 */  jal   load_debug_font
/* 0586C0 80057AC0 AFA70024 */   sw    $a3, 0x24($sp)
/* 0586C4 80057AC4 27A40018 */  addiu $a0, $sp, 0x18
/* 0586C8 80057AC8 27A5001C */  addiu $a1, $sp, 0x1c
/* 0586CC 80057ACC 0C015D21 */  jal   debug_print_string
/* 0586D0 80057AD0 8FA60020 */   lw    $a2, 0x20($sp)
/* 0586D4 80057AD4 27A40018 */  addiu $a0, $sp, 0x18
/* 0586D8 80057AD8 27A5001C */  addiu $a1, $sp, 0x1c
/* 0586DC 80057ADC 8FA60024 */  lw    $a2, 0x24($sp)
/* 0586E0 80057AE0 0C015D49 */  jal   debug_print_number
/* 0586E4 80057AE4 24070010 */   li    $a3, 16
/* 0586E8 80057AE8 3C06800E */  lui   $a2, %hi(D_800E5670) # $a2, 0x800e
/* 0586EC 80057AEC 80C65670 */  lb    $a2, %lo(D_800E5670)($a2)
/* 0586F0 80057AF0 8FA40018 */  lw    $a0, 0x18($sp)
/* 0586F4 80057AF4 0C015CF9 */  jal   func_800573E4
/* 0586F8 80057AF8 8FA5001C */   lw    $a1, 0x1c($sp)
/* 0586FC 80057AFC 0C015DDE */  jal   func_80057778
/* 058700 80057B00 00000000 */   nop   
/* 058704 80057B04 8FBF0014 */  lw    $ra, 0x14($sp)
/* 058708 80057B08 27BD0018 */  addiu $sp, $sp, 0x18
/* 05870C 80057B0C 03E00008 */  jr    $ra
/* 058710 80057B10 00000000 */   nop   

/* 058714 80057B14 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 058718 80057B18 AFBF0014 */  sw    $ra, 0x14($sp)
/* 05871C 80057B1C AFA40018 */  sw    $a0, 0x18($sp)
/* 058720 80057B20 AFA5001C */  sw    $a1, 0x1c($sp)
/* 058724 80057B24 AFA60020 */  sw    $a2, 0x20($sp)
/* 058728 80057B28 0C015DC4 */  jal   load_debug_font
/* 05872C 80057B2C AFA70024 */   sw    $a3, 0x24($sp)
/* 058730 80057B30 27A40018 */  addiu $a0, $sp, 0x18
/* 058734 80057B34 27A5001C */  addiu $a1, $sp, 0x1c
/* 058738 80057B38 0C015D21 */  jal   debug_print_string
/* 05873C 80057B3C 8FA60020 */   lw    $a2, 0x20($sp)
/* 058740 80057B40 27A40018 */  addiu $a0, $sp, 0x18
/* 058744 80057B44 27A5001C */  addiu $a1, $sp, 0x1c
/* 058748 80057B48 8FA60024 */  lw    $a2, 0x24($sp)
/* 05874C 80057B4C 0C015D8B */  jal   func_8005762C
/* 058750 80057B50 24070010 */   li    $a3, 16
/* 058754 80057B54 3C06800E */  lui   $a2, %hi(D_800E5670) # $a2, 0x800e
/* 058758 80057B58 80C65670 */  lb    $a2, %lo(D_800E5670)($a2)
/* 05875C 80057B5C 8FA40018 */  lw    $a0, 0x18($sp)
/* 058760 80057B60 0C015CF9 */  jal   func_800573E4
/* 058764 80057B64 8FA5001C */   lw    $a1, 0x1c($sp)
/* 058768 80057B68 0C015DDE */  jal   func_80057778
/* 05876C 80057B6C 00000000 */   nop   
/* 058770 80057B70 8FBF0014 */  lw    $ra, 0x14($sp)
/* 058774 80057B74 27BD0018 */  addiu $sp, $sp, 0x18
/* 058778 80057B78 03E00008 */  jr    $ra
/* 05877C 80057B7C 00000000 */   nop   

/* 058780 80057B80 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 058784 80057B84 AFBF0014 */  sw    $ra, 0x14($sp)
/* 058788 80057B88 AFA40018 */  sw    $a0, 0x18($sp)
/* 05878C 80057B8C AFA5001C */  sw    $a1, 0x1c($sp)
/* 058790 80057B90 AFA60020 */  sw    $a2, 0x20($sp)
/* 058794 80057B94 0C015DC4 */  jal   load_debug_font
/* 058798 80057B98 AFA70024 */   sw    $a3, 0x24($sp)
/* 05879C 80057B9C 27A40018 */  addiu $a0, $sp, 0x18
/* 0587A0 80057BA0 27A5001C */  addiu $a1, $sp, 0x1c
/* 0587A4 80057BA4 0C015D21 */  jal   debug_print_string
/* 0587A8 80057BA8 8FA60020 */   lw    $a2, 0x20($sp)
/* 0587AC 80057BAC 27A40018 */  addiu $a0, $sp, 0x18
/* 0587B0 80057BB0 27A5001C */  addiu $a1, $sp, 0x1c
/* 0587B4 80057BB4 8FA60024 */  lw    $a2, 0x24($sp)
/* 0587B8 80057BB8 0C015D49 */  jal   debug_print_number
/* 0587BC 80057BBC 24070002 */   li    $a3, 2
/* 0587C0 80057BC0 3C06800E */  lui   $a2, %hi(D_800E566A) # $a2, 0x800e
/* 0587C4 80057BC4 80C6566A */  lb    $a2, %lo(D_800E566A)($a2)
/* 0587C8 80057BC8 8FA40018 */  lw    $a0, 0x18($sp)
/* 0587CC 80057BCC 0C015CF9 */  jal   func_800573E4
/* 0587D0 80057BD0 8FA5001C */   lw    $a1, 0x1c($sp)
/* 0587D4 80057BD4 0C015DDE */  jal   func_80057778
/* 0587D8 80057BD8 00000000 */   nop   
/* 0587DC 80057BDC 8FBF0014 */  lw    $ra, 0x14($sp)
/* 0587E0 80057BE0 27BD0018 */  addiu $sp, $sp, 0x18
/* 0587E4 80057BE4 03E00008 */  jr    $ra
/* 0587E8 80057BE8 00000000 */   nop   

/* 0587EC 80057BEC 27BDFFE8 */  addiu $sp, $sp, -0x18
/* 0587F0 80057BF0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0587F4 80057BF4 AFA40018 */  sw    $a0, 0x18($sp)
/* 0587F8 80057BF8 AFA5001C */  sw    $a1, 0x1c($sp)
/* 0587FC 80057BFC AFA60020 */  sw    $a2, 0x20($sp)
/* 058800 80057C00 0C015DC4 */  jal   load_debug_font
/* 058804 80057C04 AFA70024 */   sw    $a3, 0x24($sp)
/* 058808 80057C08 27A40018 */  addiu $a0, $sp, 0x18
/* 05880C 80057C0C 27A5001C */  addiu $a1, $sp, 0x1c
/* 058810 80057C10 0C015D21 */  jal   debug_print_string
/* 058814 80057C14 8FA60020 */   lw    $a2, 0x20($sp)
/* 058818 80057C18 27A40018 */  addiu $a0, $sp, 0x18
/* 05881C 80057C1C 27A5001C */  addiu $a1, $sp, 0x1c
/* 058820 80057C20 8FA60024 */  lw    $a2, 0x24($sp)
/* 058824 80057C24 0C015D8B */  jal   func_8005762C
/* 058828 80057C28 24070002 */   li    $a3, 2
/* 05882C 80057C2C 3C06800E */  lui   $a2, %hi(D_800E566A) # $a2, 0x800e
/* 058830 80057C30 80C6566A */  lb    $a2, %lo(D_800E566A)($a2)
/* 058834 80057C34 8FA40018 */  lw    $a0, 0x18($sp)
/* 058838 80057C38 0C015CF9 */  jal   func_800573E4
/* 05883C 80057C3C 8FA5001C */   lw    $a1, 0x1c($sp)
/* 058840 80057C40 0C015DDE */  jal   func_80057778
/* 058844 80057C44 00000000 */   nop   
/* 058848 80057C48 8FBF0014 */  lw    $ra, 0x14($sp)
/* 05884C 80057C4C 27BD0018 */  addiu $sp, $sp, 0x18
/* 058850 80057C50 03E00008 */  jr    $ra
/* 058854 80057C54 00000000 */   nop   

/* 058858 80057C58 00000000 */  nop   
