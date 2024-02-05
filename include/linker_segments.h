#ifndef HARDCODED_SEGMENTS_H
#define HARDCODED_SEGMENTS_H

/**
  * @file Contains hardcoded segment addresses
  *  Only used in the linker
 **/

// End of Jumper pak memory
#define RDRAM_END         0x807FFFFF

#define LINKER_START    0x80000000
#define LINKER_MAIN     0x80000400

#define LINKER_ENDING 0x80280000
#define LINKER_RACING 0x8028DF00
#define LINKER_TRIG_TABLES 0x802BA370


#endif /* HARDCODED_SEGMENTS_H */
