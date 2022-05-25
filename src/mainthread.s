# MK64 threads

CreateThread: #80000450
    addiu $sp, $sp, -0x20
    sw    $ra, 0x1C($sp)
    sw    $zero, 0($a0)
    sw    $zero, 8($a0)
    lw    $t7, 0x34($sp)
    lw    $t6, 0x30($sp)
    sw    $t7, 0x14($sp)
    jal   0x800CBF70 #osCreateThread
      sw  $t6, 0x10($sp)
    lw    $ra, 0x1C($sp)
    addiu $sp, $sp, 0x20
    jr    $ra
     nop  #80000480


main: #80000484
    addiu $sp, $sp, -0x20
    sw    $ra, 0x1C($sp)
    jal   0x800CC0C0 #osInitialize
      nop
    lui   $t6, 0x8015
    addiu $t6, $t6, 0x4670
    lui   $a0, 0x8015
    lui   $a2, 0x8000
    addiu $t7, $zero, 0x64
    sw    $t7, 0x14($sp)
    addiu $a2, $a2, 0x04E0
    addiu $a0, $a0, 0x24C0
    sw    $t6, 0x10($sp)
    addiu $a1, $zero, 1
    jal   0x80000450 # CreateThread
      or  $a3, $zero, $zero

    lui   $a0, 0x8015
    jal   0x800CC360
      addiu $a0, $a0, 0x24C0

    lw    $ra, 0x1C($sp)
    addiu $sp, $sp, 0x20
    jr    $ra
      nop #800004DC


thread1_entry: #800004E0
    addiu $sp, $sp, -0x20
    sw    $ra, 0x1C($sp)
    sw    $a0, 0x20($sp)
    jal   0x800CC4B0 #osCreateViManager
      addiu $a0, $zero, 0xFE

    lui   $t6, 0x8000
    lw    $t6, 0x0300($t6) # read tv_type from boot
    addiu $at, $zero, 1
    lui   $a0, 0x800F
    bne   $t6, $at, .not_ntsc
      nop

    lui   $a0, 0x800F
    jal   0x800CC850 #osViSetMode
      addiu $a0, $a0, 0xA6C0
    beq   $zero, $zero, .anyway
      nop

.not_ntsc: #80000520
    jal   0x800CC850 #osViSetMode
      addiu $a0, $a0, 0xAF80

.anyway: #80000528
    jal   0x800CC8C0 #osViBlack
      addiu $a0, $zero, 1
    jal   0x800CC930 #osViSetSpecialFeatures
      addiu $a0, $zero, 2
    lui   $a1, 0x8016
    lui   $a2, 0x8016
    addiu $a2, $a2, 0xF3E0
    addiu $a1, $a1, 0xF460
    addiu $a0, $zero, 0x96
    jal   0x800CCAF0 #osCreatePiManager
      addiu $a3, $szero, 0x20
    lui   $t7, 0x8000
    lw    $t7, 0x030C($t7) # read reset_type from boot
    lui   $at, 0x8015
    jal   0x800046B8
      sh  $t7, 0x011C($at)

    jal   0x80004718
      nop

    lui   $t8, 0x8015
    addiu $t8, $t8, 0x6820
    lui   $a0, 0x8015
    lui   $a2, 0x8000
    addiu $t9, $zero, 0x64
    sw    $t9, 0x14($sp)
    addiu $a2, $a2, 0x23E4
    addiu $a0, $a0, 0x4670
    sw    $t8, 0x10($sp)
    addiu $a1, $zero, 3
    jal   0x80000450 #CreateThread
      lw  $a3, 0x20($sp)

    lui   $a0. 0x8015
    jal   0x800CC360 #osStartThread
      addiu $a0, $a0, 0x4670

    or    $a0, $zero, $zero
    jal   0x800CCC80 #osSetThreadPri
      or  $a1, $zero, $zero

.hang: #800005B8
    beq $zero, $zero, .hang
      nop




thread3_entry: #800023E4 - video thread
    addiu $sp, $sp, -0x60
    lui   $v1, 0x8015
    addiu $v1, $v1, 0x02A8
    lui   $t6, 0x8032
    lui   $t7, 0x8034
    lui   $t8, 0x8037
    addiu $t6, $t6, 0xF780
    addiu $t7, $t7, 0x4F80
    addiu $t8, $t8, 0xA780
    sw    $t6, 0x0000($v1)
    sw    $t7, 0x0004($v1)
    sw    $t8, 0x0008($v1)
    lui   $v1, 0x8037
    lui   $v0, 0x8034
    sw    $ra, 0x0034($sp)
    sw    $s5, 0x0030($sp)
    sw    $s4, 0x002C($sp)
    sw    $s3, 0x0028($sp)
    sw    $s2, 0x0024($sp)
    sw    $s1, 0x0020($sp)
    sw    $s0, 0x001C($sp)
    sw    $a0, 0x0060($sp)
    addiu $v0, $v0, 0x4F80
    addiu $v1, $v1, 0xA780

    .clear: #80002444
        # why repeating the register clears every time? Nintendo plz.
        addiu $t2, $zero, 0
        addiu $t3, $zero, 0
        addiu $t4, $zero, 0
        addiu $t5, $zero, 0
        addiu $t6, $zero, 0
        addiu $t7, $zero, 0
        addiu $v0, $v0, 0x20
        addiu $t0, $zero, 0
        addiu $t1, $zero, 0
        sw    $t7, -0x0004($v0)
        sw    $t6, -0x0008($v0)
        sw    $t5, -0x000C($v0)
        sw    $t4, -0x0010($v0)
        sw    $t3, -0x0014($v0)
        sw    $t2, -0x0018($v0)
        sw    $t1, -0x001C($v0)
        bne   $v0, $v1, .clear
          sw  $t0, -0x0020($v0)

    jal   SetupMessageQueues # 0x800005E0
      nop
    jal   initGame # 0x80001264
      nop

    # create thread 4
    lui   $s0, 0x8016
    lui   $t9, 0x8016
    addiu $s0, $s0, 0xABB0 # 8015ABB0
    addiu $t9, $t9, 0xCD30 # 8015CD30
    lui   $a2, 0x8000
    addiu $t8, $zero, 0x14
    sw    $t8, 0x14($sp)
    addiu $a2, $a2, 0x28E4
    sw    $t9, 0x0010($sp)
    or    $a0, $s0, $zero
    addiu $a1, $zero, 4
    jal   0x80000450
      or  $a3, $zero, $zero
    jal   0x800CC360
      or $a0, $s0, $zero

    # create thread 5
    lui   $s0, 0x8016
    lui   $t0, 0x8016
    addiu $s0, $s0, 0x89D0
    addiu $t0, $t0, 0xAB80
    lui   $a2, 0x8000
    addiu $t1, $zero, 0xA
    sw    $t1, 0x14($sp)
    addiu $a2, $a2, 0x277C
    sw    $t0, 0x10($sp)
    or    $a0, $s0, $zero
    addiu $a1, $zero, 5
    jal   0x80000450
      or  $a3, $zero, $zero
    jal   0x800CC360
      or  $a0, $s0, $zero

    lui   $s0, 0x8015
    addiu $s0, $s0, 0xEFB8
    addiu $s5, $zero, 0x67
    addiu $s4, $zero, 0x66
    addiu $s3, $zero, 0x65
    addiu $s2, $zero, 0x64
    addiu $s1, $sp, 0x54
    or    $a0, $s0, $zero

    .mainloop: #80002534
        or    $a1, $s1, $zero
        jal   osRecvMesg #0x800CD750
          addiu $a2, $zero, 1

        lw    $v0, 0x54($sp)
        beq   $v0, $s2, .case_0x64
          nop
        beq   $v0, $s3, .case_0x65
          nop
        beq   $v0, $s4, .case_0x66
          nop
        beq   $v0, $s5, .case_0x67
          nop
        beq   $zero, $zero, .mainloop
          or  $a0, $s0, $zero

        .case_0x66: #8000256C
            jal   0x80002168 # something with timer - removing crashes game
              nop
            beq   $zero, $zero, .mainloop

        .case_0x64: #8000257C
            jal   0x800022DC # removing freezes game but not crashes? still 60 vi/s
              nop            # restoring does not unfreeze
            beq   $zero, $zero, .mainloop

        .case_0x65: #8000258C
            jal   0x80002284 # same
              nop
            beq   $zero, $zero, .mainloop

        .case_0x67: #8000259C
            jal   0x80002118 # removing has no effect? (unless it's audio)
              nop
            beq   $zero, $zero, .mainloop

        # all four of these seem to be called every frame

    .end_of_main_loop: #800025B0 - never reached
        lw    $ra, 0x34($sp)
        lw    $s0, 0x1C($sp)
        lw    $s1, 0x20($sp)
        lw    $s2, 0x24($sp)
        lw    $s3, 0x28($sp)
        lw    $s4, 0x2C($sp)
        lw    $s5, 0x30($sp)
        jr    $ra
          addiu $sp, $sp. 0x60  # 800025D0


thread5_entry: #8000277C - main thread
    addiu $sp, $sp, -0x20
    sw    $a0, 0x20($sp)
    sw    $ra, 0x1C($sp)
    lui   $a0, 0x8015
    lui   $a1, 0x8015
    sw    $s1, 0x18($sp)
    sw    $s0, 0x14($sp)
    addiu $a1, $a1, 0xF00C
    addiu $a0, $a0, 0xEF88
    jal   0x800CCD60 #osCreateMesgQueue
      addiu $a2, $zero, 1

    lui   $s0, 0x8015
    addiu $s0, $s0, 0xEF70
    lui   $a1, 0x8015
    addiu $a1, $a1, 0xF008
    or    $a0, $s0, $zero
    jal   0x800CCD60 #osCreateMesgQueue
      addiu $a2, $zero, 1
    jal   0x800008A4 #_InitControllers
      nop

    lui   $t6, 0x8015
    lhu   $t6, 0x011C($t6) # read g_reset_type
    bnez  $t6, .not_cold_reset
      nop
    jal   0x80003010
      nop

.not_cold_reset: #800027E4
    lui   $a1, 0x8015
    addiu $a1, $a1, 0xEF48
    addiu $a0, $zero, 2
    or    $a2, $s0, $zero
    jal   0x800020D8
      addiu $a3, $zero, 1

    lui   $v0, 0x800E
    lw    $v0, 0xC600($v0) # 800DC600, value is 8000031C (vsWins); not used?

    # store that value to some addresses with various offsets...
    # presumably, these are pointers to various game variables
    lui   $at, 0x8016
    sw    $v0, 0xF8B8($at) # 8015F8B8 = 8000031C

    lui   $at, 0x8016 #compiler
    addiu $t7, $v0, 2
    sw    $t7, 0xF8BC($at) # 8015F8BC = 8000031E

    lui   $at, 0x8016 # what r u doin
    addiu $t8, $v0, 0x0B # 11
    sw    $t8, 0xF8C0($at) # 8015F8C0 = 80000327

    lui   $at, 0x8016 # compiler
    addiu $t9, $v0, 0x17 # 23
    sw    $t9, 0xF8C4($at) # 8015F8C4 = 80000333

    lui   $at, 0x8016 # STAHP
    addiu $t0, $v0, 0x19 # 25
    sw    $t0, 0xF8C8($at) # 8015F8C8 = 80000335

    lui   $at, 0x8016
    addiu $t1, $v0, 0x1C # 28
    jal   0x80000E00
      sw  $t1, 0xF8CC($at) # 8015F8CC = 80000338

    jal   readControllers #0x80000A28
      nop
    jal   0x800C5CB8
      nop

    lui   $s1, 0x800E
    lui   $s0, 0x800E
    addiu $s0, $s0, 0xC50C
    addiu $s1, $s1, 0xC524
    # everything so far has been at reset

.loop: #8000286C
    jal   0x800CB2C4
      nop

    lw    $v0, 0($s1)
    lw    $t2, 0($s0)
    beq   $t2, $v0, .288C
      nop

    jal   0x80002684 # does switch(mainThreadPrevTask)
      sw  $v0, 0($s0)

.288C: #8000288C
    jal   0x80003550 # calls osGetTime
      or  $a0, $zero, $zero
    jal   0x80000EB4 # calls SetSegmentBase
      nop
    jal   readControllers #0x80000A28
      nop
    jal   0x80001ECC # does switch(mainThreadPrevTask)
      nop
    jal   0x80000CE8 # looks like writing RSP commands
      nop
    jal   0x80000F34 # calls osViSwapBuffer
      nop
    beq   $zero, $zero, .loop
      nop

.unreachable: # 800028C4
    nop #???
    nop
    nop
    lw    $ra, 0x1C($sp)
    lw    $s0, 0x14($sp)
    lw    $s1, 0x18($sp)
    jr    $ra
      addiu $sp, $sp, 0x20 # 800028E0


osGetThreadPri: # 800D2A10
    bnez  $a0, .nonnull
      nop
        lui   $a0, 0x800F
        lw    $a0, 0xB3B0($a0) # 800EB3B0

    .nonnull:
    jr    $ra
      lw  $v0, 4($a0)


main_loop_case_67: #80002118
    80002118: lui   $t6, 0x800E
    8000211C: lw    $t6, 0xC4A8 ($t6)
    80002120: addiu $sp, $sp, 0xFFE8
    80002124: sw    $ra, 0x0014 ($sp)
    80002128: bnez  $t6, 0x80002158
    8000212C: lui   $v0, 0x800E

    80002130: lw    $v0, 0xC4B0 ($v0)
    80002134: beql  $v0, $zero, 0x8000215C
    80002138: lw    $ra, 0x0014 ($sp)

    8000213C: lw    $t7, 0x0048 ($v0)
    80002140: bnel  $t7, $zero, 0x8000215C
    80002144: lw    $ra, 0x0014 ($sp)

    80002148: jal   0x8000365C
    8000214C: or    $a0, $zero, $zero
    80002150: jal   0x8000067C
    80002154: addiu $a0, $zero, 0x0001

    80002158: lw    $ra, 0x0014 ($sp)
    8000215C: addiu $sp, $sp, 0x0018
    80002160: jr    $ra
    80002164: nop

main_loop_case_66: #80002168
    80002168: lui   $v0, 0x800E
    8000216C: addiu $v0, $v0, 0xC594
    80002170: lwc1  F4, 0x0000 ($v0)
    80002174: lui   $at, 0x800F
    80002178: ldc1  F8, 0xB640 ($at)
    8000217C: cvt.d.s F6, F4
    80002180: lui   $v1, 0x800E
    80002184: add.d F10, F6, F8
    80002188: addiu $v1, $v1, 0xC58C
    8000218C: lh    $t6, 0x0000 ($v1)
    80002190: addiu $sp, $sp, 0xFFE8
    80002194: cvt.s.d F16, F10
    80002198: sw    $ra, 0x0014 ($sp)
    8000219C: addiu $t7, $t6, 0x0001
    800021A0: sh    $t7, 0x0000 ($v1)
    800021A4: jal   0x80001FAC
    800021A8: swc1  F16, 0x0000 ($v0)

    800021AC: lui   $t8, 0x800E
    800021B0: lw    $t8, 0xC4AC ($t8)
    800021B4: lui   $t9, 0x800E
    800021B8: lui   $t0, 0x800E
    800021BC: beq   $t8, $zero, 0x800021F8
        800021C0: nop
        800021C4: lw    $t9, 0xC4A8 ($t9)
        800021C8: beq   $t9, $zero, 0x800021E0
        800021CC: nop
        800021D0: jal   0x80001F70
        800021D4: nop
        800021D8: beq   $zero, $zero, 0x80002234
        800021DC: nop

        800021E0: jal   0x800036EC
        800021E4: nop
        800021E8: jal   0x8000067C
        800021EC: addiu $a0, $zero, 0x0002
        800021F0: beq   $zero, $zero, 0x80002234
        800021F4: nop

    800021F8: lw    $t0, 0xC4A8 ($t0)
    800021FC: lui   $v0, 0x800E
    80002200: bnez  $t0, 0x80002234
    80002204: nop
    80002208: lw    $v0, 0xC4B0 ($v0)
    8000220C: beq   $v0, $zero, 0x80002234
    80002210: nop
    80002214: lw    $t1, 0x0048 ($v0)
    80002218: addiu $at, $zero, 0x0003
    8000221C: beq   $t1, $at, 0x80002234
    80002220: nop
    80002224: jal   0x8000365C
    80002228: or    $a0, $zero, $zero
    8000222C: jal   0x8000067C
    80002230: addiu $a0, $zero, 0x0001

    80002234: lui   $v0, 0x800E
    80002238: lw    $v0, 0xC4A0 ($v0)
    8000223C: or    $a2, $zero, $zero
    80002240: beq   $v0, $zero, 0x80002254
    80002244: nop
    80002248: lw    $a0, 0x0000 ($v0)
    8000224C: jal   osSendMesg
    80002250: lw    $a1, 0x0004 ($v0)

    80002254: lui   $v0, 0x800E
    80002258: lw    $v0, 0xC4A4 ($v0)
    8000225C: or    $a2, $zero, $zero
    80002260: beql  $v0, $zero, 0x80002278
    80002264: lw    $ra, 0x0014 ($sp)
    80002268: lw    $a0, 0x0000 ($v0)
    8000226C: jal   osSendMesg
    80002270: lw    $a1, 0x0004 ($v0)

    80002274: lw    $ra, 0x0014 ($sp)

    80002278: addiu $sp, $sp, 0x0018
    8000227C: jr    $ra
    80002280: nop

main_loop_case_65: #80002284
    80002284: lui   $v0, 0x800E
    80002288: lw    $v0, 0xC4B0 ($v0)
    8000228C: addiu $sp, $sp, 0xFFE8
    80002290: sw    $ra, 0x0014 ($sp)
    80002294: lw    $a0, 0x0040 ($v0)
    80002298: or    $a2, $zero, $zero
    8000229C: beq   $a0, $zero, 0x800022AC
    800022A0: nop
    800022A4: jal   osSendMesg
    800022A8: lw    $a1, 0x0044 ($v0)

    800022AC: jal   0x8000365C
    800022B0: addiu $a0, $zero, 0x0002

    800022B4: lui   $t7, 0x800E
    800022B8: lw    $t7, 0xC4B0 ($t7)
    800022BC: addiu $t6, $zero, 0x0004
    800022C0: lui   $at, 0x800E
    800022C4: sw    $t6, 0x0048 ($t7)
    800022C8: lw    $ra, 0x0014 ($sp)
    800022CC: sw    $zero, 0xC4B0 ($at)
    800022D0: addiu $sp, $sp, 0x0018
    800022D4: jr    $ra
    800022D8: nop

main_loop_case_64: #800022DC
    800022DC: lui   $v0, 0x800E
    800022E0: addiu $v0, $v0, 0xC4A8
    800022E4: lw    $a3, 0x0000 ($v0)

    800022E8: addiu $sp, $sp, 0xFFE0
    800022EC: sw    $ra, 0x0014 ($sp)

    800022F0: sw    $zero, 0x0000 ($v0)
    800022F4: lw    $t6, 0x0048 ($a3)
    800022F8: addiu $at, $zero, 0x0002
    800022FC: or    $a0, $a3, $zero
    80002300: bnel  $t6, $at, 0x80002344
    80002304: lw    $t9, 0x0000 ($a3)

        80002308: jal   0x800CDD60
        8000230C: sw    $a3, 0x001C ($sp)

        80002310: bnez  $v0, 0x80002328
        80002314: lw    $a3, 0x001C ($sp)

            80002318: addiu $t7, $zero, 0x0003
            8000231C: sw    $t7, 0x0048 ($a3)
            80002320: jal   0x8000365C
            80002324: addiu $a0, $zero, 0x0001

        80002328: jal   0x800036EC
        8000232C: nop

        80002330: jal   0x8000067C
        80002334: addiu $a0, $zero, 0x0002
        80002338: beq   $zero, $zero, 0x800023D8

    .loop1:
        8000233C: lw    $ra, 0x0014 ($sp)
        80002340: lw    $t9, 0x0000 ($a3)

    80002344: addiu $t8, $zero, 0x0003
    80002348: addiu $at, $zero, 0x0002
    8000234C: bne   $t9, $at, .loop1
    80002350: sw    $t8, 0x0048 ($a3)

    80002354: jal   0x800036EC
    80002358: sw    $a3, 0x001C ($sp)

    8000235C: lui   $v0, 0x800E
    80002360: lw    $v0, 0xC4B0 ($v0)
    80002364: lw    $a3, 0x001C ($sp)
    80002368: beq   $v0, $zero, 0x800023A4
    8000236C: nop

        80002370: lw    $v1, 0x0048 ($v0)
        80002374: addiu $at, $zero, 0x0003
        80002378: beq   $v1, $at, 0x800023A4
        8000237C: addiu $at, $zero, 0x0002
        80002380: beq   $v1, $at, 0x80002394
        80002384: or    $a0, $zero, $zero

            80002388: jal   0x8000365C
            8000238C: sw    $a3, 0x001C ($sp)
            80002390: lw    $a3, 0x001C ($sp)

        80002394: addiu $a0, $zero, 0x0001
        80002398: jal   0x8000067C
        8000239C: sw    $a3, 0x001C ($sp)
        800023A0: lw    $a3, 0x001C ($sp)

    800023A4: lui   $at, 0x800E
    800023A8: sw    $zero, 0xC4AC ($at)
    800023AC: lw    $a0, 0x0040 ($a3)
    800023B0: or    $a2, $zero, $zero
    800023B4: beql  $a0, $zero, 0x800023D8
    800023B8: lw    $ra, 0x0014 ($sp)

        800023BC: jal   osSendMesg
        800023C0: lw    $a1, 0x0044 ($a3)
        800023C4: beq   $zero, $zero, 0x800023D8
        800023C8: lw    $ra, 0x0014 ($sp)

        # unreachable?
        800023CC: jal   0x8000365C
        800023D0: addiu $a0, $zero, 0x0001
        800023D4: lw    $ra, 0x0014 ($sp)

    800023D8: addiu $sp, $sp, 0x0020
    800023DC: jr    $ra
    800023E0: nop
