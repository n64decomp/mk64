s32 add_actor_in_unexpired_actor_list(s32 actorIndex, s16 arg1) {
    s32 i;
    s32 a2 = 0;

    for (i = 0; i < NUM_PLAYERS; i++) {

        if (gUnexpiredActorsList[i].unkC == 0) {
            gUnexpiredActorsList[i].unkC = 1;
            gUnexpiredActorsList[i].actorIndex = actorIndex;
            gUnexpiredActorsList[i].unk10 = arg1;
            gUnexpiredActorsList[i].unk14 = 0;
            a2 = 1;
            break;
        }
    }
    if (a2 == 0) {
        return -2;
    }
    return 0;
}

s32 add_red_shell_in_unexpired_actor_list(s32 actorIndex) {
    struct Actor* actor = &gActorList[actorIndex];
    if (actor->type != ACTOR_RED_SHELL) {
        return -1;
    }
    return add_actor_in_unexpired_actor_list(actorIndex, 0);
}

s32 add_green_shell_in_unexpired_actor_list(s32 actorIndex) {
    struct Actor* actor = &gActorList[actorIndex];
    if (actor->type != ACTOR_GREEN_SHELL) {
        return -1;
    }
    return add_actor_in_unexpired_actor_list(actorIndex, 1);
}

s32 add_blue_shell_in_unexpired_actor_list(s32 arg0) {
    struct Actor* actor = &gActorList[arg0];
    if (actor->type != ACTOR_BLUE_SPINY_SHELL) {
        return -1;
    }
    return add_actor_in_unexpired_actor_list(arg0, 2);
}

void delete_actor_in_unexpired_actor_list(s32 actorIndex) {
    struct unexpiredActors* phi;
    s32 i;

    for (i = 0; i < NUM_PLAYERS; i++) {
        phi = &gUnexpiredActorsList[i];
        if (actorIndex == phi->actorIndex) {
            phi->unkC = 0;
            phi->actorIndex = 1000; // out of bounds
        }
    }
}

void func_8000EEDC(void) {
    struct unexpiredActors* phi;
    s32 i;

    for (i = 0; i < NUM_PLAYERS; i++) {
        phi = &gUnexpiredActorsList[i];
        phi->unkC = 0;
        phi->actorIndex = 1000; // out of bounds
    }
}

void generate_player_smoke(void) {
    s32 someIndex;
    f32 var_f20;
    struct Actor* temp_s1;
    struct unexpiredActors* var_s0;

    for (someIndex = 0; someIndex < NUM_PLAYERS; someIndex++) {
        var_s0 = &gUnexpiredActorsList[someIndex];
        if (var_s0->unkC == 1) {
            temp_s1 = &gActorList[var_s0->actorIndex];
            var_s0->unk14++;
            switch (var_s0->unk10) {
                case 0:
                    if (var_s0->unk14 < 0xA) {
                        var_f20 = 0.3f;
                    } else {
                        var_f20 = 0.9f;
                    }
                    break;
                case 1:
                    if (var_s0->unk14 < 0xA) {
                        var_f20 = 0.15f;
                    } else {
                        var_f20 = 0.45f;
                    }
                    break;
                case 2:
                    if (var_s0->unk14 < 0xA) {
                        var_f20 = 0.15f;
                    } else {
                        var_f20 = 0.45f;
                    }
                    break;
                default:
                    var_f20 = 1.0f;
                    break;
            }
            if (!(var_s0->unk14 & 1)) {
                init_smoke_particle(temp_s1->pos, ((random_int(30) + 20) * var_f20) / 50.0f, var_s0->unk10);
            }
        }
    }
}
