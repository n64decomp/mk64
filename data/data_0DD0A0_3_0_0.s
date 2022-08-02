.include "macros.inc"

.section .rodata

#glabel D_800ED6B0
#.double 0.7

#glabel D_800ED6B8
#.double 0.8

#glabel D_800ED6C0
#.double 0.1

#glabel D_800ED6C8
#.double 0.02

glabel D_800ED6D0
.double 0.8

glabel D_800ED6D8
.double 0.8

glabel D_800ED6E0
.double 0.1

.word 0x00000000, 0x00000000

# start rodata for code_80027D00

glabel jpt_800ED6F0
.word L80027F38, L80027FC0, L80028048, L800280D0
.word L80028854, L80028854, L80028854, L80028854
.word L80028158, L80028854, L800281E0, L80028854
.word L8002825C, L80028854, L80028854, L80028854
.word L80028854, L80028854, L800282E4

glabel jpt_800ED73C
.word L80028424
.word L800284AC, L80028534, L800285BC, L80028854
.word L80028854, L80028854, L80028854, L80028644
.word L80028854, L800286CC, L80028854, L80028748
.word L80028854, L80028854, L80028854, L80028854
.word L80028854, L800287D0

glabel D_800ED788
.double 1.6

glabel D_800ED790
.double 0.9

glabel D_800ED798
.double 3.6

glabel D_800ED7A0
.double 3.6

glabel D_800ED7A8
.double 2.6

glabel D_800ED7B0
.double 2.6

glabel D_800ED7B8
.float 3500.0

glabel D_800ED7BC
.float 1100.0

glabel D_800ED7C0
.float 1500.0

glabel D_800ED7C4
.float 1900.0

glabel D_800ED7C8
.float 550.0
.word 0x00000000

glabel D_800ED7D0
.double 4.2

glabel D_800ED7D8
.double 0.6

glabel D_800ED7E0
.double 0.925

glabel D_800ED7E8
.double 0.1

glabel D_800ED7F0
.float 4500.0
.word 0x00000000

glabel D_800ED7F8
.double 0.12

glabel D_800ED800
.double 6000.0

glabel D_800ED808
.double 0.6

glabel D_800ED810
.double 0.12

glabel D_800ED818
.double 6000.0

glabel D_800ED820
.double 0.12

glabel D_800ED828
.double 6000.0

glabel D_800ED830
.double 0.02

glabel D_800ED838
.float 2.8
.word 0x00000000

glabel D_800ED840
.double 0.08

glabel D_800ED848
.double 0.1

glabel D_800ED850
.double 6000.0

glabel D_800ED858
.double 0.12

glabel D_800ED860
.double 6000.0

glabel D_800ED868
.double 0.2

glabel D_800ED870
.double 0.08

glabel D_800ED878
.double 0.12

glabel D_800ED880
.float 0.06

glabel D_800ED884
.float 0.06

glabel D_800ED888
.double 0.13

glabel D_800ED890
.double 0.2

glabel D_800ED898
.double 0.12

glabel D_800ED8A0
.double 6000.0

glabel D_800ED8A8
.double 780.0

glabel D_800ED8B0
.double 6500.0

glabel D_800ED8B8
.float -1100.0
.word 0x00000000

glabel D_800ED8C0
.double 0.13

glabel D_800ED8C8
.double 0.2

glabel D_800ED8D0
.double 0.018

glabel D_800ED8D8
.double 1.1

glabel D_800ED8E0
.double 1.1

glabel D_800ED8E8
.double 0.0125

glabel D_800ED8F0
.double 1.2

glabel D_800ED8F8
.double 0.025

glabel D_800ED900
.double 1.2

glabel D_800ED908
.double 0.7

glabel D_800ED910
.double 0.7

glabel D_800ED918
.double 0.004

glabel D_800ED920
.double 0.004

glabel D_800ED928
.double 0.7

glabel D_800ED930
.double 0.0126

glabel D_800ED938
.double 0.026

glabel D_800ED940
.double -0.2

glabel D_800ED948
.double -0.55

glabel D_800ED950
.double 0.004

glabel D_800ED958
.double 0.004

glabel D_800ED960
.double 0.01

glabel D_800ED968
.double 0.01

glabel D_800ED970
.double 0.008

glabel D_800ED978
.double 0.008

glabel D_800ED980
.double 0.3

glabel D_800ED988
.double 0.15

glabel D_800ED990
.double 0.05

glabel D_800ED998
.double 0.04

glabel D_800ED9A0
.double -0.85

glabel D_800ED9A8
.double -0.55

glabel D_800ED9B0
.double 0.05

glabel D_800ED9B8
.float 0.35

glabel D_800ED9BC
.float 0.55

glabel D_800ED9C0
.float 0.94

glabel D_800ED9C4
.float 0.85

glabel D_800ED9C8
.float 0.46

glabel D_800ED9CC
.float 0.48

glabel D_800ED9D0
.float 0.3

glabel D_800ED9D4
.float 0.54

glabel D_800ED9D8
.double 0.1

glabel D_800ED9E0
.double 0.05

glabel D_800ED9E8
.double 0.05

glabel D_800ED9F0
.double 0.1

glabel D_800ED9F8
.double 0.2

glabel D_800EDA00
.double 0.2

glabel D_800EDA08
.double 0.3

glabel D_800EDA10
.double 0.3

glabel D_800EDA18
.double 0.4

glabel D_800EDA20
.double 0.4

glabel D_800EDA28
.double 0.6

glabel D_800EDA30
.double 0.6

glabel D_800EDA38
.double 0.7

glabel D_800EDA40
.double 0.7

glabel D_800EDA48
.double 0.8

glabel D_800EDA50
.double 0.8

glabel D_800EDA58
.double 0.9

glabel D_800EDA60
.double 0.9

glabel D_800EDA68
.double 0.1

glabel D_800EDA70
.double 0.05

glabel D_800EDA78
.double 0.05

glabel D_800EDA80
.double 0.1

glabel D_800EDA88
.double 0.2

glabel D_800EDA90
.double 0.2

glabel D_800EDA98
.double 0.3

glabel D_800EDAA0
.double 0.3

glabel D_800EDAA8
.double 0.4

glabel D_800EDAB0
.double 0.4

glabel D_800EDAB8
.double 0.6

glabel D_800EDAC0
.double 0.6

glabel D_800EDAC8
.double 0.7

glabel D_800EDAD0
.double 0.7

glabel D_800EDAD8
.double 0.8

glabel D_800EDAE0
.double 0.8

glabel D_800EDAE8
.double 0.9

glabel D_800EDAF0
.double 0.9

glabel D_800EDAF8
.double 0.2

glabel D_800EDB00
.double 0.02

glabel D_800EDB08
.double 1.2

glabel D_800EDB10
.double 0.1

glabel D_800EDB18
.double 0.1

glabel D_800EDB20
.double 0.2

glabel D_800EDB28
.double 0.2

glabel D_800EDB30
.double 0.3

glabel D_800EDB38
.double 0.3

glabel D_800EDB40
.double 0.4

glabel D_800EDB48
.double 0.4

glabel D_800EDB50
.double 0.6

glabel D_800EDB58
.double 0.6

glabel D_800EDB60
.double 0.7

glabel D_800EDB68
.double 0.7

glabel D_800EDB70
.double 0.8

glabel D_800EDB78
.double 0.8

glabel D_800EDB80
.double 0.9

glabel D_800EDB88
.double 0.9

glabel D_800EDB90
.float 0.9
.word 0x00000000

glabel D_800EDB98
.double 0.2

glabel D_800EDBA0
.double 0.7

glabel D_800EDBA8
.double 0.1

glabel D_800EDBB0
.double 3.2

glabel D_800EDBB8
.double 3.2

glabel D_800EDBC0
.double 0.1

glabel D_800EDBC8
.double 0.2

glabel D_800EDBD0
.double 0.2

glabel D_800EDBD8
.double 0.3

glabel D_800EDBE0
.double 0.3

glabel D_800EDBE8
.double 0.4

glabel D_800EDBF0
.double 0.4

glabel D_800EDBF8
.double 0.6

glabel D_800EDC00
.double 0.6

glabel D_800EDC08
.double 0.7

glabel D_800EDC10
.double 0.7

glabel D_800EDC18
.double 0.8

glabel D_800EDC20
.double 2.8

glabel D_800EDC28
.double 2.8

glabel D_800EDC30
.double 0.8

glabel D_800EDC38
.double 0.9

glabel D_800EDC40
.double 0.9

glabel D_800EDC48
.double 0.1

glabel D_800EDC50
.double 3.2

glabel D_800EDC58
.double 3.2

glabel D_800EDC60
.double 0.1

glabel D_800EDC68
.double 0.2

glabel D_800EDC70
.double 0.2

glabel D_800EDC78
.double 0.3

glabel D_800EDC80
.double 0.3

glabel D_800EDC88
.double 0.4

glabel D_800EDC90
.double 0.4

glabel D_800EDC98
.double 0.6

glabel D_800EDCA0
.double 0.6

glabel D_800EDCA8
.double 0.7

glabel D_800EDCB0
.double 0.7

glabel D_800EDCB8
.double 0.8

glabel D_800EDCC0
.double 2.8

glabel D_800EDCC8
.double 2.8

glabel D_800EDCD0
.double 0.8

glabel D_800EDCD8
.double 0.9

glabel D_800EDCE0
.double 0.9

glabel D_800EDCE8
.double 1.2

glabel D_800EDCF0
.double 1.05

glabel D_800EDCF8
.float 0.9

glabel D_800EDCFC
.float 0.9

glabel D_800EDD00
.float 0.9

glabel D_800EDD04
.float 0.9

glabel D_800EDD08
.float 0.9

glabel D_800EDD0C
.float 1.05

glabel D_800EDD10
.float 1.05

glabel D_800EDD14
.float 1.05

glabel D_800EDD18
.float 1.05

glabel D_800EDD1C
.float 1.05

glabel D_800EDD20
.float 1.2

glabel D_800EDD24
.float 1.2

glabel D_800EDD28
.float 1.2

glabel D_800EDD2C
.float 1.2

glabel D_800EDD30
.float 1.2

glabel D_800EDD34
.float 1.6

glabel D_800EDD38
.float 1.6

glabel D_800EDD3C
.float 1.6

glabel D_800EDD40
.float 1.6

glabel D_800EDD44
.float 1.6

glabel D_800EDD48
.float 1.9

glabel D_800EDD4C
.float 1.9

glabel D_800EDD50
.float 1.9

glabel D_800EDD54
.float 1.9

glabel D_800EDD58
.float 1.9

glabel D_800EDD5C
.float 1.9

glabel D_800EDD60
.double 0.15

glabel D_800EDD68
.double 1.6

glabel D_800EDD70
.double 0.9

glabel D_800EDD78
.double 0.65

glabel D_800EDD80
.double 1.7

glabel D_800EDD88
.double 0.8

glabel D_800EDD90
.double 0.02

glabel D_800EDD98
.double 0.01

glabel D_800EDDA0
.double 0.05

glabel D_800EDDA8
.double 0.1

glabel D_800EDDB0
.double 0.15

glabel D_800EDDB8
.double 0.1

glabel D_800EDDC0
.double 0.05

glabel D_800EDDC8
.double 0.02

glabel D_800EDDD0
.double 0.01

glabel D_800EDDD8
.double 0.05

glabel D_800EDDE0
.double 0.1

glabel D_800EDDE8
.double 0.15

glabel D_800EDDF0
.double 0.1

glabel D_800EDDF8
.double 0.05

glabel D_800EDE00
.double 0.12

glabel D_800EDE08
.double 6000.0

glabel D_800EDE10
.double 0.02

# end of rodata for code_80027D00