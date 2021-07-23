.include "macros.inc"
.section .bss

glabel gControllers # 0x800F6910
.word 0x00000000

glabel D_800F6914
.hword 0x0000

glabel D_800F6916
.hword 0x0000

glabel D_800F6918
.word 0x00000000
.word 0x00000000

glabel gPlayer2Controller # 0x800F6920
.word 0x00000000
.word 0x00000000
.word 0x00000000
.word 0x00000000

glabel gPlayer3Controller # 0x800F6930
.word 0x00000000
.word 0x00000000
.word 0x00000000
.word 0x00000000

glabel gPlayer4Controller # 0x800F6940
.word 0x00000000
.word 0x00000000
.word 0x00000000
.word 0x00000000

glabel D_800F6950
.word 0x00000000
.word 0x00000000
.word 0x00000000
.word 0x00000000

glabel D_800F6960
.skip 16

glabel D_800F6970
.skip 16

glabel D_800F6980
.skip 16

glabel D_800F6990
.word 0x00000000

glabel D_800F6994
.skip 16

glabel gPlayer1PosX # 0x800F69A4
.word 0x00000000

glabel gPlayer1PosY # 0x800F69A8
.word 0x00000000

glabel gPlayer1PosZ # 0x800F69AC
.skip 18

glabel gPlayer1Rotation # 0x800F69BE
.skip 22

glabel D_800F69D4
.skip 80

glabel D_800F6A24
.skip 40

glabel D_800F6A4C
.skip 408

glabel D_800F6BE4
.skip 2948

glabel D_800F7768
.skip 3544

glabel D_800F8540
.skip 3544

glabel D_800F9318
.skip 3544

glabel D_800FA0F0
.skip 3544

glabel D_800FAEC8
.skip 3544

glabel D_800FBCA0
.skip 3544

glabel D_800FCA78
.skip 3544

glabel D_800FD850
.skip 16

glabel gGfxPools
.skip 10616

glabel D_801001D8
.skip 322920

glabel gGfxPool # 0x8014EF40
.skip 8

glabel D_8014EF48
.skip 8

glabel sSoundVblankHandler  # 0x8014EF50
.skip 8

glabel D_8014EF58
.skip 24

glabel D_8014EF70
.skip 24

glabel D_8014EF88
.skip 48

glabel gIntrMesgQueue
.skip 24

glabel D_8014EFD0
.skip 24

glabel sSoundMesgQueue # 0x8014EFE8
.skip 24

glabel sSoundMesgBuf # 0x8014F000
.skip 4
glabel D_8014F004
.skip 4

glabel D_8014F008
.skip 4

glabel D_8014F00C
.skip 12

glabel D_8014F018
.skip 64

glabel D_8014F058
.skip 64

glabel D_8014F098
.skip 8

glabel D_8014F0A0
.skip 24

glabel gSIEventMesgQueue
.skip 24

glabel gSIEventMesgBuf
.skip 16

glabel gControllerStatuses
.skip 2

glabel D_8014F0E2
.skip 14

glabel gControllerPads
.skip 24

glabel gControllerBits
.skip 8

glabel D_8014F110
.skip 4096

glabel D_80150110
.skip 2

glabel D_80150112
.skip 2

glabel D_80150114
.skip 4

glabel D_80150118
.skip 4

glabel D_8015011C
.skip 2

glabel D_8015011E
.skip 2

glabel D_80150120
.skip 4

glabel D_80150124
.skip 12

glabel D_80150130
.skip 4

glabel D_80150134
.skip 4

glabel D_80150138
.skip 4

glabel D_8015013C
.skip 12

glabel D_80150148
.skip 4

glabel D_8015014C
.skip 4

glabel D_80150150
.skip 8

glabel D_80150158
.skip 256

glabel gSegmentTable # 0x80150258
.skip 20

glabel D_8015026C
.skip 44

glabel gDisplayListHead # 0x80150298
.word 0x00000000

glabel gGfxSPTask
.word 0x00000000

glabel D_801502A0
.skip 8

glabel gPhysicalFramebuffers
.skip 12

glabel D_801502B4
.skip 12

glabel D_801502C0
.skip 8256

glabel D_80152300
.skip 2

glabel D_80152302
.skip 2

glabel D_80152304
.skip 2

glabel D_80152306
.skip 2

glabel D_80152308
.skip 440

glabel D_801524C0
.skip 8624

glabel D_80154670
.skip 8624

glabel D_80156820
.skip 8624

glabel D_801589D0
.skip 8624

glabel D_8015AB80
.skip 5248

glabel D_8015C000
.skip 3376

glabel D_8015CD30
.skip 4528

glabel gGfxSPTaskYieldBuffer # 0x8015DEE0
.skip 4352

glabel gGfxSPTaskStack # 0x8015EFE0
.skip 1024

glabel D_8015F3E0
.skip 128

glabel D_8015F460
.skip 32

glabel D_8015F480
.skip 44

glabel D_8015F4AC
.skip 2

glabel D_8015F4AE
.skip 2

glabel D_8015F4B0
.skip 2

glabel D_8015F4B2
.skip 14

glabel D_8015F4C0
.skip 44

glabel D_8015F4EC
.skip 2

glabel D_8015F4EE
.skip 2

glabel D_8015F4F0
.skip 2

glabel D_8015F4F2
.skip 14

glabel D_8015F500
.skip 44

glabel D_8015F52C
.skip 2

glabel D_8015F52E
.skip 2

glabel D_8015F530
.skip 2

glabel D_8015F532
.skip 14

glabel D_8015F540
.skip 44

glabel D_8015F56C
.skip 2

glabel D_8015F56E
.skip 2

glabel D_8015F570
.skip 2

glabel D_8015F572
.skip 14

glabel D_8015F580
.skip 4

glabel D_8015F584
.skip 4

glabel D_8015F588
.skip 2

glabel D_8015F58A
.skip 2

glabel D_8015F58C
.skip 4

glabel D_8015F590
.skip 12

glabel D_8015F59C
.skip 4

glabel D_8015F5A0
.skip 4

glabel D_8015F5A4
.skip 196

glabel D_8015F668
.skip 128

glabel D_8015F6E8
.skip 2

glabel D_8015F6EA
.skip 2

glabel D_8015F6EC
.skip 2

glabel D_8015F6EE
.skip 2

glabel D_8015F6F0
.skip 2

glabel D_8015F6F2
.skip 2

glabel D_8015F6F4
.skip 2

glabel D_8015F6F6
.skip 2

glabel D_8015F6F8
.skip 2

glabel D_8015F6FA
.skip 2

glabel D_8015F6FC
.skip 2

glabel D_8015F6FE
.skip 2

glabel D_8015F700
.skip 2

glabel D_8015F702
.skip 2

glabel D_8015F704
.skip 4

glabel D_8015F708
.skip 16

glabel D_8015F718
.skip 12

glabel D_8015F724
.skip 4

glabel gPrevLoadedAddress # 0x8015F728
.skip 4

glabel gHeapEndPtr # 0x8015F72C
.skip 4

glabel D_8015F730
.word 0x00000000

glabel D_8015F734
.word 0x00000000

glabel D_8015F738
.skip 16

glabel D_8015F748
.skip 16

glabel D_8015F758
.skip 16

glabel D_8015F768
.skip 16

glabel D_8015F778
.skip 12

glabel gCourseDirection
.skip 4

glabel D_8015F788
.skip 8

glabel D_8015F790
.skip 256

glabel D_8015F890
.skip 2

glabel D_8015F892
.skip 2

glabel D_8015F894
.skip 4

glabel D_8015F898
.skip 32

glabel D_8015F8B8
.skip 4

glabel D_8015F8BC
.skip 4

glabel D_8015F8C0
.skip 4

glabel D_8015F8C4
.skip 4

glabel D_8015F8C8
.skip 4

glabel D_8015F8CC
.skip 4

glabel D_8015F8D0
.skip 8

glabel D_8015F8D8
.skip 4

glabel D_8015F8DC
.skip 4

glabel D_8015F8E0
.skip 4

glabel D_8015F8E4
.skip 4

glabel D_8015F8E8
.skip 8

glabel D_8015F8F0
.skip 2

glabel D_8015F8F2
.skip 2

glabel D_8015F8F4
.skip 2

glabel D_8015F8F6
.skip 10

glabel D_8015F900
.skip 184

glabel D_8015F9B8
.skip 6

glabel D_8015F9BE
.skip 938

glabel D_8015FD68
.skip 10256

glabel D_80162578
.skip 112

glabel D_801625E8
.skip 2

glabel sController1Unplugged
.skip 2

glabel D_801625EC
.skip 4

glabel D_801625F0
.skip 4

glabel D_801625F4
.skip 4

glabel D_801625F8
.skip 4

glabel D_801625FC
