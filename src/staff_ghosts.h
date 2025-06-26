#ifndef STAFF_GHOSTS_H
#define STAFF_GHOSTS_H

#include <PR/os.h>
#include <common_structs.h>

void func_80005B18(void);
void func_80004EF0(void);
void func_80004FB0(void);
void func_80004FF8(void);
void set_staff_ghost(void);
s32 func_800051C4(void);
void func_8000522C(void);
void func_800052A4(void);
void func_80005310(void);
void process_replay_inputs(void);
void process_course_ghost_inputs(void);
void process_player_ghost_inputs(void);
void func_8000599C(void);
void func_80005AE8(Player*);
void func_80005E6C(void);
void staff_ghosts_loop(void);

// mi0decode

extern s32 mio0encode(s32 input, s32, s32);
extern s32 func_80040174(void*, s32, s32);

extern s32 D_80162DC8;
extern s32 D_80162DCC;
extern u16 gPlayerGhostDisabled;
extern u16 gCourseGhostDisabled;
extern u16 D_80162DD8;
extern s32 D_80162E00;
extern s32 D_80162DE0;
extern s32 D_80162DE4;
extern s32 D_80162DE8;
extern s32 gPauseTriggered;
extern s32 gReplayCannotSave;

#endif /* STAFF_GHOSTS_H */
