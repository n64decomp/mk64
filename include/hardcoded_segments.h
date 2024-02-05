#ifndef HARDCODED_SEGMENTS_H
#define HARDCODED_SEGMENTS_H

/**
  * Only used in the linker.
 **/

#define SEG_START    0x80000000
#define SEG_MAIN     0x80000400
// End of Jumper pak memory
#define RDRAM_END         0x807FFFFF

#ifdef AVOID_UB
    // addr need to be manually updated when game is shifted
    #define SEG_ENDING 0x80280000
    #define SEG_RACING 0x8028DF00
    #define TRIG_TABLES 0x802BA370
#else
    #define SEG_ENDING 0x80280000
    #define SEG_RACING 0x8028DF00
    #define TRIG_TABLES 0x802BA370 // 0x802BA370
#endif // AVOID_UB


#endif /* HARDCODED_SEGMENTS_H */
