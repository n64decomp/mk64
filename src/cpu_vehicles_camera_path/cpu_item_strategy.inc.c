#include <ultra64.h>
#include "cpu_vehicles_camera_path.h"
#include <defines.h>
#include <macros.h>

void func_8001AB00(void) {
    s32 var_v1;

    for (var_v1 = 0; var_v1 < NUM_PLAYERS; var_v1++) {
        cpu_ItemStrategy[var_v1].branch = 0;
        cpu_ItemStrategy[var_v1].timer = 0;
        cpu_ItemStrategy[var_v1].actorIndex = -1;
        cpu_ItemStrategy[var_v1].numItemUse = 0;
        cpu_ItemStrategy[var_v1].numDroppedBananaBunch = 0;
    }
}

void cpu_decisions_branch_item(UNUSED s32 playerId, s16* branch, s32 itemId) {
    s32 value = -1;
    switch (itemId) {
        case ITEM_FAKE_ITEM_BOX:
            value = CPU_STRATEGY_ITEM_FAKE_ITEM_BOX;
            break;
        case ITEM_BOO:
            value = CPU_STRATEGY_ITEM_BOO;
            break;
        case ITEM_BANANA:
            value = CPU_STRATEGY_ITEM_BANANA;
            break;
        case ITEM_THUNDERBOLT:
            value = CPU_STRATEGY_ITEM_THUNDERBOLT;
            break;
        case ITEM_STAR:
            value = CPU_STRATEGY_ITEM_STAR;
            break;
        case ITEM_MUSHROOM:
            value = CPU_STRATEGY_ITEM_MUSHROOM;
            break;
        case ITEM_DOUBLE_MUSHROOM:
            break;
        case ITEM_TRIPLE_MUSHROOM:
            break;
        case ITEM_SUPER_MUSHROOM:
            break;
    }
    if (value >= 0) {
        *branch = value;
    }
}

void func_8001ABE0(UNUSED s32 playerId, UNUSED CpuItemStrategyData* arg1) {
}

void clear_expired_strategies(CpuItemStrategyData* arg0) {
    if ((arg0->actorIndex < 0) || (arg0->actorIndex >= 0x64)) {
        arg0->branch = 0;
        arg0->timer = 0;
    }
}
