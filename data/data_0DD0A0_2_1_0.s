.include "macros.inc"

.section .rodata

#glabel D_800E94A4
#.asciiz "Seq %d Loading Start\n"
#.balign 4

#glabel D_800E94BC
#.asciiz "Heap Overflow Error\n"
#.balign 4

#glabel D_800E94D4
#.asciiz "SEQ  %d ALREADY CACHED\n"
#.balign 4

#glabel D_800E94EC
#.asciiz "Ok,one bank slow load Start \n"
#.balign 4

#glabel D_800E950C
#.asciiz "Sorry,too many %d bank is none.fast load Start \n"
#.balign 4





glabel D_800E9540
.asciiz "Seq %d:Default Load Id is %d\n"
.balign 4

glabel D_800E9560
.asciiz "Seq Loading Start\n"
.balign 4

glabel D_800E9574
.asciiz "Error:Before Sequence-SlowDma remain.\n"
.balign 4

glabel D_800E959C
.asciiz "      Cancel Seq Start.\n"
.balign 4

glabel D_800E95B8
.asciiz "SEQ  %d ALREADY CACHED\n"
.balign 4

glabel D_800E95D0
.asciiz "Clear Workarea %x -%x size %x \n"
.balign 4

glabel D_800E95F0
.asciiz "AudioHeap is %x\n"
.balign 4

glabel D_800E9604
.asciiz "Heap reset.Synth Change %x \n"
.balign 4

glabel D_800E9624
.asciiz "Heap %x %x %x\n"
.balign 4

glabel D_800E9634
.asciiz "Main Heap Initialize.\n"
.balign 4

glabel D_800E964C
.asciiz "---------- Init Completed. ------------\n"
.balign 4

glabel D_800E9678
.asciiz " Syndrv    :[%6d]\n"
.balign 4

glabel D_800E968C
.asciiz " Seqdrv    :[%6d]\n"
.balign 4

glabel D_800E96A0
.asciiz " audiodata :[%6d]\n"
.balign 4

glabel D_800E96B4
.asciiz "---------------------------------------\n"
.balign 4

glabel D_800E96E0
.asciiz "Audio: setvol: volume minus %f\n"
.balign 4

glabel D_800E9700
.asciiz "Audio: setvol: volume overflow %f\n"
.balign 4

glabel D_800E9724
.asciiz "Audio: setpitch: pitch minus %f\n"
.balign 4

glabel D_800E9748
.asciiz "Audio: voiceman: No bank error %d\n"
.balign 4

glabel D_800E976C
.asciiz "Audio: voiceman: progNo. overflow %d,%d\n"
.balign 4

glabel D_800E9798
.asciiz "Audio: voiceman: progNo. undefined %d,%d\n"
.balign 4

glabel D_800E97C4
.asciiz "Audio: voiceman: No bank error %d\n"
.balign 4

glabel D_800E97E8
.asciiz "Audio: voiceman: Percussion Overflow %d,%d\n"
.balign 4

glabel D_800E9814
.asciiz "Audio: voiceman: Percussion table pointer (bank %d) is irregular.\n"
.balign 4

glabel D_800E9858
.asciiz "Audio: voiceman: Percpointer NULL %d,%d\n"
.balign 4

glabel D_800E9884
.asciiz "--4 %x\n"
.balign 4

glabel D_800E988C
.asciiz "Stoped Voice\n"
.balign 4

glabel D_800E989C
.asciiz "CAUTION:SUB IS SEPARATED FROM GROUP"
.balign 4

glabel D_800E98C0
.asciiz "Error:Wait Track disappear\n"
.balign 4

glabel D_800E98DC
.asciiz "Slow Release Batting\n"
.balign 4

glabel D_800E98F4
.byte 0x40, 0x20, 0x10, 0x08

glabel D_800E98F8
.asciiz "Audio:Wavemem: Bad voiceno (%d)\n"
.balign 4

glabel D_800E991C
.asciiz "Audio: C-Alloc : Dealloc voice is NULL\n"
.balign 4

glabel D_800E9944
.asciiz "Alloc Error:Dim voice-Alloc %d"
.balign 4

glabel D_800E9964
.asciiz "Error:Same List Add\n"
.balign 4

glabel D_800E997C
.asciiz "Already Cut\n"
.balign 4

glabel D_800E998C
.asciiz "Audio: C-Alloc : lowerPrio is NULL\n"
.balign 4

glabel D_800E99B0
.asciiz "Sub Limited Warning: Drop Voice"
.balign 4

glabel D_800E99D0
.asciiz "Warning: Drop Voice"
.balign 4

glabel D_800E99E4
.asciiz "Warning: Drop Voice"
.balign 4

glabel D_800E99F8
.asciiz "Warning: Drop Voice"
.balign 4

.balign 0x10

glabel D_800E9A10
.asciiz "Env-Clear 0\n"
.balign 4

glabel D_800E9A20
.asciiz "Audio:Envp: overflow  %f\n"
.balign 4

.balign 0x10

glabel D_800E9A40
.asciiz "Audio:Track:Warning: No Free Notetrack\n"
.balign 4

glabel D_800E9A68
.asciiz "SUBTRACK DIM\n"
.balign 4

glabel D_800E9A78
.asciiz "Audio:Track: Warning :SUBTRACK had been stolen by other Group.\n"
.balign 4

glabel D_800E9AB8
.asciiz "SEQID %d,BANKID %d\n"
.balign 4

glabel D_800E9ACC
.asciiz "ERR:SUBTRACK %d NOT ALLOCATED\n"
.balign 4

glabel D_800E9AEC
.asciiz "Error:Same List Add\n"
.balign 4

glabel D_800E9B04
.asciiz "Macro Level Over Error!\n"
.balign 4

glabel D_800E9B20
.asciiz "Macro Level Over Error!\n"
.balign 4

glabel D_800E9B3C
.asciiz "WARNING: NPRG: cannot change %d\n"
.balign 4

glabel D_800E9B60
.asciiz "Audio:Track:NOTE:UNDEFINED NOTE COM. %x\n"
.balign 4

glabel D_800E9B8C
.asciiz "Audio: Note:Velocity Error %d\n"
.balign 4

glabel D_800E9BAC
.asciiz "Error: Subtrack no prg.\n"
.balign 4

glabel D_800E9BC8
.asciiz "ERR %x\n"
.balign 4

glabel D_800E9BD0
.asciiz "Error: Your assignchannel is stolen.\n"
.balign 4

glabel D_800E9BF8
.asciiz "Audio:Track :Call Macro Level Over Error!\n"
.balign 4

glabel D_800E9C24
.asciiz "Audio:Track :Loops Macro Level Over Error!\n"
.balign 4

glabel D_800E9C50
.asciiz "SUB:ERR:BANK %d NOT CACHED.\n"
.balign 4

glabel D_800E9C70
.asciiz "SUB:ERR:BANK %d NOT CACHED.\n"
.balign 4

glabel D_800E9C90
.asciiz "Audio:Track: CTBLCALL Macro Level Over Error!\n"
.balign 4

glabel D_800E9CC0
.asciiz "[%2x] \n"
.balign 4

glabel D_800E9CC8
.asciiz "Err :Sub %x ,address %x:Undefined SubTrack Function %x"
.balign 4

glabel D_800E9D00
.asciiz "Disappear Sequence or Bank %d\n"
.balign 4

glabel D_800E9D20
.asciiz "Macro Level Over Error!\n"
.balign 4

glabel D_800E9D3C
.asciiz "Macro Level Over Error!\n"
.balign 4

glabel D_800E9D58
.asciiz "Group:Undefine upper C0h command (%x)\n"
.balign 4

glabel D_800E9D80
.asciiz "Group:Undefined Command\n"
.balign 4

.balign 0x10

glabel D_800E9DA0
.byte 0x00

.balign 4

# TODO: unused?
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9DB4
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9DC4
.float 1.0, 1.0, 1.0, 1.0

glabel D_800E9DD4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9DE4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9DF4
.float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9E14
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E24
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E34
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E54
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E64
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E74
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E84
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9E94
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9EA4
.word 0x00000000, 0x00000000, 0x00000000, 0x00000000

glabel D_800E9EB4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9EC4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9ED4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9EE4
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9EF4
.float 1.0, 1.0, 1.0, 1.0

glabel D_800E9F04
.float 1.0, 1.0, 1.0, 1.0

glabel D_800E9F14
.float 1.0, 1.0, 1.0, 1.0

glabel D_800E9F24
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_800E9F2C
.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

glabel D_800E9F34
.float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9F54
.float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0

glabel D_800E9F74
.byte 0x00, 0x00, 0x00, 0x00

glabel D_800E9F78
.byte 0x00, 0x00, 0x00, 0x00

glabel D_800E9F7C
.float 0.0, 0.0, 0.0, 1.0

glabel D_800E9F8C
.float 1.0

glabel D_800E9F90
.byte 0x00, 0x00, 0x00, 0x00

glabel D_800E9F94
.float 3800.0, 3.4
.float 0.4, -1.0, 0.4, 1100.0
.float 630.0, 3600.0, 1.0, 0.0
.float 0.0, 0.0, 1.0, 1.0
.float 0.0, 3800.0, 3.4, 0.4
.float -1.0, 0.4, 1100.0, 630.0
.float 3600.0, 1.0, 0.0, 0.0
.float 0.0, 1.0, 1.0, 0.0
.float 3800.0, 3.4, 0.4, -1.0
.float 0.4, 1100.0, 630.0, 3600.0
.float 1.0, 0.0, 0.0, 0.0
.float 1.0, 1.0, 0.0, 3800.0
.float 3.4, 0.4, -1.0, 0.4
.float 1100.0, 630.0, 3600.0, 1.0

.macro Entry800EA06C f0, f1, f2, b0
.float \f0, \f1, \f2
.byte \b0, 0x00, 0x00, 0x00
.endm

glabel D_800EA06C
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0
Entry800EA06C 0.0, 1.0, 1.0, 0x0

glabel D_800EA0EC
.byte 0x00
glabel D_800EA0ED
.byte 0x00
glabel D_800EA0EE
.byte 0x00
glabel D_800EA0EF
.byte 0x00

glabel D_800EA0F0
.byte 0x00, 0x00, 0x00, 0x00

glabel D_800EA0F4
.byte 0x00, 0x00, 0x00, 0x00

.word 0x00000000, 0x00000000, 0x3f800000

glabel D_800EA104
.word 0x00000000

glabel D_800EA108
.word 0x00000000

glabel D_800EA10C
.word 0x00000000

glabel D_800EA110
.float 0.0, 0.0, 0.0, 0.0

glabel D_800EA120
.float 0.0, 0.0, 0.0, 0.0

glabel D_800EA130
.float 0.0, 0.0, 0.0, 0.0
.float 0.0, 0.0, 0.0, 0.0

glabel D_800EA150
.float 1.4

glabel D_800EA154
.byte 0x02, 0x02, 0x58, 0x5a, 0x03, 0x30, 0x58, 0x30

glabel D_800EA15C
.word 0x00000000

glabel D_800EA160
.word 0x00000000

glabel D_800EA164
.word 0x00000000

glabel D_800EA168
.word 0x00000000

glabel D_800EA16C
.word 0x00000000

glabel D_800EA170
.word 0x00000000

glabel D_800EA174
.word 0x00000000

glabel D_800EA178
.word 0x3f800000

glabel D_800EA17C
.word 0x3f59999a

glabel D_800EA180
.word 0x00000000

glabel D_800EA184
.word 0x00000000

glabel D_800EA188
.byte 0x04, 0x02, 0x02, 0x02, 0x02, 0x01, 0x06, 0x02, 0x02, 0x02, 0x02, 0x01, 0x08, 0x02, 0x02, 0x00
.byte 0x01, 0x01, 0x08, 0x02, 0x02, 0x00, 0x01, 0x01

glabel D_800EA1A0
.byte 0x04, 0x01, 0x01, 0x02, 0x02, 0x01, 0x03, 0x01
.byte 0x01, 0x02, 0x02, 0x01, 0x03, 0x01, 0x01, 0x00, 0x01, 0x01, 0x03, 0x01, 0x01, 0x00, 0x01, 0x01

glabel D_800EA1B8
.word 0x00000000

glabel D_800EA1BC
.word 0x00000000

glabel D_800EA1C0
.word 0x00000000

glabel D_800EA1C4
.word 0x00000000

glabel D_800EA1C8
.word 0x00000000, 0x00000000, 0x00000000

glabel D_800EA1D4
.word 0x3f800000, 0x00000000

glabel D_800EA1DC
.word 0x00000000, 0x00000000

glabel D_800EA1E4
.word 0x00000000

glabel D_800EA1E8
.word 0x00000000

glabel D_800EA1EC
.word 0x00000000

glabel D_800EA1F0
.byte 0x00, 0x01, 0x02, 0x03

glabel D_800EA1F4
.byte 0x00, 0x00, 0x00, 0x00

.asciiz "Error : Queue is not empty ( %x ) \n"
.balign 4

.asciiz "specchg error\n"
.balign 4

.asciiz "***** CAM MAX %d *****\n"
.balign 4

glabel D_800EA244
.byte 0x00, 0x00, 0x00, 0x00

.asciiz "entryout !!! %d\n"
.balign 4

.asciiz "AFTER GOAL VOICE FLAME %d\n"
.balign 4

.asciiz "*** Pause On ***\n"
.balign 4

.asciiz "*** Pause Off ***\n"
.balign 4

.asciiz "CALLED!! Na_ChangeSoundMode player %d\n"
.balign 4

.asciiz "CALLED!! Na_ChangeSoundMode spec   %d\n"
.balign 4

.asciiz "Interfaced Spec Change player %d\n"
.balign 4

.asciiz "Interfaced Spec Change spec   %d\n"
.balign 4

.word 0xff000000, 0xff000000, 0x00000000

.asciiz "FX MIX %d\n"
.balign 4

.asciiz "************** Seq Fadeout ***************\n"
.balign 4

.asciiz "SEQ FADE OUT TIME %d\n"
.balign 4

.word 0x00000000, 0x00000000, 0x00000000

glabel D_800EA3A0
.byte 0x00, 0x00, 0x00, 0x00

glabel D_800EA3A4
.byte 0x00, 0x00, 0x00, 0x00

glabel D_800EA3A8
.word D_801937C0

glabel D_800EA3AC
.word D_801937D8

glabel D_800EA3B0
.word D_801937F0

glabel D_800EA3B4
.word D_80193808

.asciiz "DAC:Lost 1 Frame.\n"
.balign 4

.asciiz "DMA: Request queue over.( %d )\n"
.balign 4

.asciiz "DMA [ %d lines] TIMEOUT\n"
.balign 4

.asciiz "Warning: WaveDmaQ contains %d msgs.\n"
.balign 4

.asciiz "Audio:now-max tasklen is %d / %d\n"
.balign 4

.asciiz "Audio:Warning:ABI Tasklist length over (%d)\n"
.balign 4

glabel D_800EA484
.word 0x00000080

.asciiz "AudioSend: %d -> %d (%d)\n"
.balign 4

glabel D_800EA4A4
.word 0x00000000

.asciiz "Undefined Port Command %d\n"
.balign 4

.word 0x00000000, 0x00000000, 0x00000000

.balign 4
glabel D_800EA4D0
.word 0x01284fff

glabel D_800EA4D4
.word 0x01145fff

glabel D_800EA4D8
.word 0x000068b0, 0x01180100, D_800EA4D0, 0x7fff0000
.word 0x00002a00, 0x00004600, 0x00000000, 0x00005800
.word 0x00002800, 0x00000000, 0x000068b0, 0x01140100
.word D_800EA4D0, 0x7fff0000, 0x00002a00, 0x00004600
.word 0x00000000, 0x00005800, 0x00002800, 0x00000000
.word 0x000068b0, 0x011c0100, D_800EA4D0, 0x7fff0000
.word 0x00002a00, 0x00004600, 0x00000000, 0x00005800
.word 0x00002800, 0x00000000, 0x000068b0, 0x011c0100
.word D_800EA4D0, 0x7fff0000, 0x00002a00, 0x00004600
.word 0x00000000, 0x00005800, 0x00002800, 0x00000000
.word 0x000068b0, 0x01100100, D_800EA4D0, 0x7fff0000
.word 0x00002a00, 0x00004600, 0x00000000, 0x00004800
.word 0x00002000, 0x00000000, 0x000068b0, 0x01100100
.word D_800EA4D4, 0x7fff0000, 0x00002a00, 0x00004600
.word 0x00000000, 0x00004800, 0x00002000, 0x00000000
.word 0x1c000000

glabel D_800EA5CC
.hword 0x0030, 0x0000

glabel D_800EA5D0
.word 0x00048c00

glabel D_800EA5D4
.word 0x00002600

glabel D_800EA5D8
.word 0x00000000

glabel D_800EA5DC
.word 0x00000000
