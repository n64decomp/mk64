#include <ultra64.h>
#include <macros.h>
#include "types.h"
#include "common_structs.h"
#include "src/network/lan64.h"
#include "src/network/network.h"
#include "src/network/util.h"


extern void func_800B3F74();
extern void func_80290338();
extern void spawn_player();
extern s32 lan64_is_initialized();
extern s32 lan64_initialize(const lan64_handlers_t* handlers);

extern Player* D_800DC4FC;
extern Player* D_800DC4E0;
extern Player* D_800DC4E4;
extern Player* D_800DC4E8;
extern Player* D_800DC4EC;
extern Player* D_800DC4F0;
extern Player* D_800DC4F4;
extern Player* D_800DC4F8;

extern s32 D_800DC510;

extern s8 gCharacterSelections;
extern s16 D_80165270[8];

struct mp_PlayerData *player1Data;
struct mp_PlayerData *player2Data;
struct mp_PlayerData *player3Data;
struct mp_PlayerData *player4Data;
struct mp_PlayerData *player5Data;
struct mp_PlayerData *player6Data;
struct mp_PlayerData *player7Data;
struct mp_PlayerData *player8Data;

// Contains player order
//struct mp_playerIndex mp_playerIndex {
//    u8 addr;
//};

/* This struct contains some state
 * In case of a game this could be the gamestate */
typedef struct
{
    char user_table[10][25];
    lan64_addr_t local_addr;
    char local_name[25];
}chat_state_t;

u32 playerList[] = {
    (u32)&player1Data, (u32)&player2Data, (u32)&player3Data, (u32)&player4Data,
    (u32)&player5Data, (u32)&player6Data, (u32)&player7Data, (u32)&player8Data,  
};


s8 connections = 0;
s8 charactersSelected = 0;
s32 saveArgs;
s8 saveArgs2[3];



//typedef struct
//{
//    u8 addr;
//} mp_playerIndex;




/* This function is called by lan64 everytime an event is received.
 * See lan64.h and lan64_defs.h for a list of events */
void my_event_handler(lan64_event_t event, void* usr)
{
    void *ptr = (intptr_t *)((struct mp_PlayerData *)playerList[connections])->name;
    void *pAddr = (intptr_t *)((struct mp_PlayerData *)playerList[connections])->addr;
    void *pIndex = (intptr_t *)((struct mp_PlayerData *)playerList[connections])->index;
    /* React to different event types. 
     * ENABLE and DISABLE events are not handled in this example */
    switch(event.type)
    {
        case LAN64_EVENT_CONNECTED:
            // Setup local player
            //((struct mp_PlayerData *)playerList[connections])->addr = event.connected.addr;
            lan64_memcpy((void *)pAddr, (const void *) event.connected.addr, sizeof(event.connected.addr));
            lan64_memcpy((void *)ptr, (const void *)event.connected.name, sizeof(event.connected.name));

            //((struct mp_PlayerData *)playerList[connections])->index = connections;
            lan64_memcpy((void *) pIndex, (const void *) connections, sizeof(connections));
            connections++;
        break;
        case LAN64_EVENT_DISCONNECTED:
            func_80290338();
        break;
        case LAN64_EVENT_OTHER_CONNECTED:
            ((struct mp_PlayerData *)playerList[connections])->addr = event.connected.addr;
            lan64_memcpy((void *)ptr, (const void *)event.connected.name, sizeof(event.connected.name));
            ((struct mp_PlayerData *)playerList[connections])->index = connections;
            connections++;
        break;
        case LAN64_EVENT_OTHER_DISCONNECTED:
            // Set player to AI mode.
            // Todo: Only set for one player and network that data.
            ((Player *)((struct mp_PlayerData *)playerList[connections])->player)->unk_000 = -0x4E00;
        break;
    }
}

/* This function is called by lan64 everytime a packet is received */
void my_packet_handler(lan64_addr_t addr, const void* buf, u32 len, void* usr)
{
    s8 i, j;
    if (len == sizeof(gCharacterSelections)) {
        for (i = 0; i < connections; i++) {
            if (((struct mp_PlayerData *)playerList[i])->addr == addr) {
                ((struct mp_PlayerData *)playerList[i])->character = (s16) buf;
                if (charactersSelected >= connections) {
                    // Continue game.
                    func_800B3F74(saveArgs, saveArgs2[0], saveArgs2[1], saveArgs2[2]);
                }
                charactersSelected++;
                return;
            }
        }
    }
    if (len == sizeof(D_800DC4FC)) {
        for (j = 0; j < connections; j++) {
            if ((((struct mp_PlayerData *)playerList[connections])->addr) == addr) {

                // todo: // Needs memcpy()?
                //((Player *)((struct mp_PlayerData *)playerList[connections])->player) = (Player *) buf;
            }
        }
    }
}

/**
 * Spawns players in multiplayer GP mode order
 * unk params
 */
void network_player_spawn(f32 *arg0, f32 *arg1, f32 arg2) {
    //struct mp_PlayerData *localPlayer = player1Data;
    struct mp_PlayerData *p1 = (struct mp_PlayerData *) playerList[0];
    struct mp_PlayerData *p2 = (struct mp_PlayerData *) playerList[1];
    struct mp_PlayerData *p3 = (struct mp_PlayerData *) playerList[2];
    struct mp_PlayerData *p4 = (struct mp_PlayerData *) playerList[3];
    struct mp_PlayerData *p5 = (struct mp_PlayerData *) playerList[4];
    struct mp_PlayerData *p6 = (struct mp_PlayerData *) playerList[5];
    struct mp_PlayerData *p7 = (struct mp_PlayerData *) playerList[6];
    struct mp_PlayerData *p8 = (struct mp_PlayerData *) playerList[7];

    if (1) {
        // to do: random character models spawn code.

    }
    else {
        // This func must be called in the correct order for karts to enter scene correctly.
        spawn_player(D_800DC4FC, 0, arg0[D_80165270[p1->index]], arg1[D_80165270[p1->index]] + 250.0f, arg2, 32768.0f, p1->character, -0x1E00);
        spawn_player(D_800DC4E0, 1, arg0[D_80165270[p2->index]], arg1[D_80165270[p2->index]] + 250.0f, arg2, 32768.0f, p1->character, -0x1E00);
        spawn_player(D_800DC4E4, 2, arg0[D_80165270[p3->index]], arg1[D_80165270[p3->index]] + 250.0f, arg2, 32768.0f, p1->character, -0x1E00);
        spawn_player(D_800DC4E8, 3, arg0[D_80165270[p4->index]], arg1[D_80165270[p4->index]] + 250.0f, arg2, 32768.0f, p1->character, -0x1E00);
        spawn_player(D_800DC4EC, 4, arg0[D_80165270[p5->index]], arg1[D_80165270[p5->index]] + 250.0f, arg2, 32768.0f, p1->character, -0x1E00);
        spawn_player(D_800DC4F0, 5, arg0[D_80165270[p6->index]], arg1[D_80165270[p6->index]] + 250.0f, arg2, 32768.0f, p1->character, -0x1E00);
        spawn_player(D_800DC4F4, 6, arg0[D_80165270[p7->index]], arg1[D_80165270[p7->index]] + 250.0f, arg2, 32768.0f, p1->character, -0x1E00);
        spawn_player(D_800DC4F8, 7, arg0[D_80165270[p8->index]], arg1[D_80165270[p8->index]] + 250.0f, arg2, 32768.0f, p1->character, -0x1E00);
    }
    // todo: fall back for lobbies with less  than 8 players to use AI: -0x4E00
}

/**
 * Called after choosing character.
 * Broadcasts character index to all players.
 * @param unk passes args to next func.
 */
void network_character_select(s32 arg0, s8 arg1, s8 arg2, s8 arg3) {
    // Broadcast character selection
    lan64_send(LAN64_BROADCAST, (s8 *)gCharacterSelections, sizeof(gCharacterSelections));
    
    saveArgs = arg0;
    saveArgs2[0] = arg1;
    saveArgs2[1] = arg2;
    saveArgs2[2] = arg3;
}

void send_packet_playerStruct() {
    if (D_800DC510 != 0 && D_800DC510 != 2) {
        lan64_send(LAN64_BROADCAST, D_800DC4FC, sizeof(D_800DC4FC));
    }
}

void lan64_run(void) {
    
    if (!lan64_is_initialized()) {
        /* Set our event handlers from above (l.23, l.51) */
        lan64_handlers_t handlers;
        handlers.event_handler = &my_event_handler;
        handlers.packet_handler = &my_packet_handler;

        // Assign player structs to playerData structs
        player1Data->player = (u32) &D_800DC4FC;
        player2Data->player = (u32) &D_800DC4E0;
        player3Data->player = (u32) &D_800DC4E4;
        player4Data->player = (u32) &D_800DC4E8;
        player5Data->player = (u32) &D_800DC4EC;
        player6Data->player = (u32) &D_800DC4F0;
        player7Data->player = (u32) &D_800DC4F4;
        player8Data->player = (u32) &D_800DC4F8;


        lan64_initialize(&handlers);
    } else {
        send_packet_playerStruct();
        lan64_update(NULL, NULL);
    }
}
