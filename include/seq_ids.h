#ifndef SEQ_IDS_H
#define SEQ_IDS_H

enum SeqId {
    SEQ_SOUND_PLAYER,                           // 0x00 (00)
    SEQ_MENU_TITLE_SCREEN,                      // 0x01 (01)
    SEQ_MENU_MAIN_MENU,                         // 0x02 (02)
    SEQ_TRACK_RACEWAY,                          // 0x03 (03)
    SEQ_TRACK_FARM,                             // 0x04 (04)
    SEQ_TRACK_MOUNTAIN,                         // 0x05 (05)
    SEQ_TRACK_BEACH,                            // 0x06 (06)
    SEQ_TRACK_SCARY,                            // 0x07 (07)
    SEQ_TRACK_SNOW,                             // 0x08 (08)
    SEQ_TRACK_CASTLE,                           // 0x09 (09)
    SEQ_TRACK_DESERT,                           // 0x0A (10)
    SEQ_EVENT_RACE_STARTING,                    // 0x0B (11)
    SEQ_EVENT_RACE_FINAL_LAP,                   // 0x0C (12)
    SEQ_EVENT_RACE_FINISH_FIRST,                // 0x0D (13)
    SEQ_EVENT_RACE_FINISH_OTHER,                // 0x0E (14)
    SEQ_EVENT_RACE_FINISH_LOSE,                 // 0x0F (15)
    SEQ_MENU_RESULTS_SCREEN_WIN,                // 0x10 (16)
    SEQ_EVENT_RACE_POWERUP_STAR,                // 0x11 (17)
    SEQ_TRACK_RAINBOW,                          // 0x12 (18)
    SEQ_TRACK_JUNGLE,                           // 0x13 (19)
    SEQ_EVENT_CEREMONY_TROPHY_LOSE,             // 0x14 (20)
    SEQ_TRACK_TURNPIKE,                         // 0x15 (21)
    SEQ_EVENT_RACE_STARTING_VS,                 // 0x16 (22)
    SEQ_MENU_RESULTS_SCREEN_WIN_VS,             // 0x17 (23)
    SEQ_MENU_RESULTS_SCREEN_LOSE,               // 0x18 (24)
    SEQ_TRACK_BATTLE,                           // 0x19 (25)
    SEQ_EVENT_CEREMONY_PRESENTATION_PART1,      // 0x1A (26)
    SEQ_EVENT_CEREMONY_PRESENTATION_PART2_WIN,  // 0x1B (27)
    SEQ_EVENT_CEREMONY_TROPHY_CREDITS,          // 0x1C (28)
    SEQ_EVENT_CEREMONY_PRESENTATION_PART2_LOSE, // 0x1D (29)
	SEQ_COUNT
};

#endif // SEQ_IDS_H
