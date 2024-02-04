#ifndef SEGMENTS_H
#define SEGMENTS_H

extern u8 _mainSegmentNoloadEnd[];

extern u8 _endingSequencesSegmentStart[];
extern u8 _endingSequencesSegmentRomStart[];
extern u8 _endingSequencesSegmentRomEnd[];

extern u8 _racingSegmentStart[];
extern u8 _racingSegmentRomStart[];
extern u8 _racingSegmentRomEnd[];

extern u8 _trigTablesSegmentStart[];


/**
 * mk64 has three segments:
 *     main   0x80000400
 *     ending 0x80280000    size 0xDF00
 *     race   0x8028DF00    size 0x2C470
**/


#define SEG_START    0x80000000
#define SEG_MAIN     0x80000400


#define ENDING_SEQUENCE_SIZE 0xDF00
#define RACING_SEQUENCE_SIZE 0x2C470


#ifdef AVOID_UB
    #define MEMORY_POOL_END (&_mainSegmentNoloadEnd[0] + 0xAB630)
#else
    #define MEMORY_POOL_END 0x80242F00
#endif // AVOID_UB

#ifdef AVOID_UB
    #define SEG_ENDING_SEQUENCES &_endingSequencesSegmentStart
    #define SEG_RACING &_racingSegmentStart
    #define SEG_TRIG_TABLES &_trigTablesSegmentStart
#else
    #define SEG_ENDING_SEQUENCES 0x80280000
    #define SEG_RACING 0x8028DF00
    #define SEG_TRIG_TABLES 0x802BA370 //0x802BA370
#endif // AVOID_UB

#define SEG_FRAMEBUFFERS 0x802BA290
#define SEG_AUDIO 0x803AF780

#endif /* SEGMENTS_H */
