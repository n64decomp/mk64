#define GET_PATH_LENGTH(pathPoint)               \
    for (i = 0;; i++) {                          \
        if ((u16) pathPoint[i].posX == 0x8000) { \
            break;                               \
        }                                        \
    }

void generate_train_path(void) {
    s32 i;
    Path2D* temp;
    TrackPathPoint* pathPoint =
        (TrackPathPoint*) VIRTUAL_TO_PHYSICAL2(gSegmentTable[SEGMENT_NUMBER2(d_course_kalimari_desert_train_path)] +
                                               SEGMENT_OFFSET(d_course_kalimari_desert_train_path));

    GET_PATH_LENGTH(pathPoint)

    temp = gVehicle2DPathPoint;
    gVehicle2DPathLength = generate_2d_path(temp, pathPoint, i - 1);
    D_80162EB0 = get_surface_height(temp[0].x, 2000.0f, temp[0].z);
}

void generate_ferry_path(void) {
    TrackPathPoint* pathPoint;
    s32 i;

    pathPoint =
        (TrackPathPoint*) VIRTUAL_TO_PHYSICAL2(gSegmentTable[SEGMENT_NUMBER2(d_course_dks_jungle_parkway_ferry_path)] +
                                               (SEGMENT_OFFSET(d_course_dks_jungle_parkway_ferry_path)));

    GET_PATH_LENGTH(pathPoint)

    gVehicle2DPathLength = generate_2d_path(gVehicle2DPathPoint, pathPoint, i - 1);
    D_80162EB2 = -40;
}

void spawn_vehicle_on_road(VehicleStuff* vehicle) {
    f32 origXPos;
    UNUSED f32 pad;
    f32 origZPos;

    origXPos = vehicle->position[0];
    origZPos = vehicle->position[2];
    if (gIsInExtra == false) {
        func_8000D6D0(vehicle->position, (s16*) &vehicle->pathPointIndex, vehicle->speed,
                      vehicle->someMultiplierTheSequel, 0, 3);
        vehicle->rotation[0] = 0;
        vehicle->rotation[1] = -0x8000;
        vehicle->rotation[2] = 0;
    } else {
        func_8000D940(vehicle->position, (s16*) &vehicle->pathPointIndex, vehicle->speed,
                      vehicle->someMultiplierTheSequel, 0);
        vehicle->rotation[0] = 0;
        vehicle->rotation[1] = 0;
        vehicle->rotation[2] = 0;
    }
    vehicle->velocity[0] = vehicle->position[0] - origXPos;
    vehicle->velocity[2] = vehicle->position[2] - origZPos;
}

void spawn_course_vehicles(void) {
    s16 trainCarYRot;
    UNUSED Vec3f pad;
    TrainCarStuff* tempLocomotive;
    TrainCarStuff* tempTender;
    TrainCarStuff* tempPassengerCar;
    Vec3s trainCarRot;
    VehicleStuff* tempBoxTruck;
    VehicleStuff* tempSchoolBus;
    VehicleStuff* tempTankerTruck;
    VehicleStuff* tempCar;
    PaddleBoatStuff* tempPaddleWheelBoat;
    Vec3s paddleWheelBoatRot;
    s32 loopIndex;
    s32 loopIndex2;
    f32 origXPos;
    f32 origZPos;

#if !ENABLE_CUSTOM_COURSE_ENGINE
    switch (gCurrentCourseId) {
        case COURSE_KALAMARI_DESERT:
            for (loopIndex = 0; loopIndex < NUM_TRAINS; loopIndex++) {
                tempLocomotive = &gTrainList[loopIndex].locomotive;
                origXPos = tempLocomotive->position[0];
                origZPos = tempLocomotive->position[2];
                trainCarYRot = update_vehicle_following_path(
                    tempLocomotive->position, (s16*) &tempLocomotive->pathPointIndex, gTrainList[loopIndex].speed);
                tempLocomotive->velocity[0] = tempLocomotive->position[0] - origXPos;
                tempLocomotive->velocity[2] = tempLocomotive->position[2] - origZPos;
                vec3s_set(trainCarRot, 0, trainCarYRot, 0);
                tempLocomotive->actorIndex = add_actor_to_empty_slot(tempLocomotive->position, trainCarRot,
                                                                     tempLocomotive->velocity, ACTOR_TRAIN_ENGINE);

                tempTender = &gTrainList[loopIndex].tender;
                if (tempTender->isActive == 1) {
                    origXPos = tempTender->position[0];
                    origZPos = tempTender->position[2];
                    trainCarYRot = update_vehicle_following_path(
                        tempTender->position, (s16*) &tempTender->pathPointIndex, gTrainList[loopIndex].speed);
                    tempTender->velocity[0] = tempTender->position[0] - origXPos;
                    tempTender->velocity[2] = tempTender->position[2] - origZPos;
                    vec3s_set(trainCarRot, 0, trainCarYRot, 0);
                    tempTender->actorIndex = add_actor_to_empty_slot(tempTender->position, trainCarRot,
                                                                     tempTender->velocity, ACTOR_TRAIN_TENDER);
                }

                for (loopIndex2 = 0; loopIndex2 < NUM_PASSENGER_CAR_ENTRIES; loopIndex2++) {
                    tempPassengerCar = &gTrainList[loopIndex].passengerCars[loopIndex2];
                    if (tempPassengerCar->isActive == 1) {
                        origXPos = tempPassengerCar->position[0];
                        origZPos = tempPassengerCar->position[2];
                        trainCarYRot = update_vehicle_following_path(tempPassengerCar->position,
                                                                     (s16*) &tempPassengerCar->pathPointIndex,
                                                                     gTrainList[loopIndex].speed);
                        tempPassengerCar->velocity[0] = tempPassengerCar->position[0] - origXPos;
                        tempPassengerCar->velocity[2] = tempPassengerCar->position[2] - origZPos;
                        vec3s_set(trainCarRot, 0, trainCarYRot, 0);
                        tempPassengerCar->actorIndex =
                            add_actor_to_empty_slot(tempPassengerCar->position, trainCarRot, tempPassengerCar->velocity,
                                                    ACTOR_TRAIN_PASSENGER_CAR);
                    }
                }
            }
            break;
        case COURSE_DK_JUNGLE:
            for (loopIndex = 0; loopIndex < NUM_ACTIVE_PADDLE_BOATS; loopIndex++) {
                tempPaddleWheelBoat = &gPaddleBoats[loopIndex];
                if (tempPaddleWheelBoat->isActive == 1) {
                    origXPos = tempPaddleWheelBoat->position[0];
                    origZPos = tempPaddleWheelBoat->position[2];
                    tempPaddleWheelBoat->rotY = update_vehicle_following_path(
                        tempPaddleWheelBoat->position, (s16*) &tempPaddleWheelBoat->pathPointIndex,
                        tempPaddleWheelBoat->speed);
                    tempPaddleWheelBoat->velocity[0] = tempPaddleWheelBoat->position[0] - origXPos;
                    tempPaddleWheelBoat->velocity[2] = tempPaddleWheelBoat->position[2] - origZPos;
                    vec3s_set(paddleWheelBoatRot, 0, tempPaddleWheelBoat->rotY, 0);
                    tempPaddleWheelBoat->actorIndex =
                        add_actor_to_empty_slot(tempPaddleWheelBoat->position, paddleWheelBoatRot,
                                                tempPaddleWheelBoat->velocity, ACTOR_PADDLE_BOAT);
                }
            }
            break;
        case COURSE_TOADS_TURNPIKE:
            for (loopIndex = 0; loopIndex < NUM_RACE_BOX_TRUCKS; loopIndex++) {
                tempBoxTruck = &gBoxTruckList[loopIndex];
                spawn_vehicle_on_road(tempBoxTruck);
                tempBoxTruck->actorIndex = add_actor_to_empty_slot(tempBoxTruck->position, tempBoxTruck->rotation,
                                                                   tempBoxTruck->velocity, ACTOR_BOX_TRUCK);
            }
            for (loopIndex = 0; loopIndex < NUM_RACE_SCHOOL_BUSES; loopIndex++) {
                tempSchoolBus = &gSchoolBusList[loopIndex];
                spawn_vehicle_on_road(tempSchoolBus);
                tempSchoolBus->actorIndex = add_actor_to_empty_slot(tempSchoolBus->position, tempSchoolBus->rotation,
                                                                    tempSchoolBus->velocity, ACTOR_SCHOOL_BUS);
            }
            for (loopIndex = 0; loopIndex < NUM_RACE_TANKER_TRUCKS; loopIndex++) {
                tempTankerTruck = &gTankerTruckList[loopIndex];
                spawn_vehicle_on_road(tempTankerTruck);
                tempTankerTruck->actorIndex =
                    add_actor_to_empty_slot(tempTankerTruck->position, tempTankerTruck->rotation,
                                            tempTankerTruck->velocity, ACTOR_TANKER_TRUCK);
            }
            for (loopIndex = 0; loopIndex < NUM_RACE_CARS; loopIndex++) {
                tempCar = &gCarList[loopIndex];
                spawn_vehicle_on_road(tempCar);
                tempCar->actorIndex =
                    add_actor_to_empty_slot(tempCar->position, tempCar->rotation, tempCar->velocity, ACTOR_CAR);
            }
            break;
    }
#else

#endif
}

void set_vehicle_pos_path_point(TrainCarStuff* trainCar, Path2D* posXZ, u16 pathPoint) {
    trainCar->position[0] = (f32) posXZ->x;
    trainCar->position[1] = (f32) D_80162EB0;
    trainCar->position[2] = (f32) posXZ->z;
    trainCar->actorIndex = -1;
    trainCar->pathPointIndex = pathPoint;
    trainCar->isActive = 0;
    trainCar->velocity[0] = 0.0f;
    trainCar->velocity[1] = 0.0f;
    trainCar->velocity[2] = 0.0f;
}

/**
 * Set pathPoint spawn locations for each rolling stock
 * The railroad has 465 path
 */
void init_vehicles_trains(void) {
    u16 pathPointOffset;
    TrainCarStuff* ptr1;
    Path2D* pos;
    s32 i;
    s32 j;

    for (i = 0; i < NUM_TRAINS; i++) {
        // outputs 160 or 392 depending on the train.
        // Wraps the value around to always output a valid pathPoint.
        pathPointOffset = (((i * gVehicle2DPathLength) / NUM_TRAINS) + 160) % gVehicle2DPathLength;

        // 120.0f is about the maximum usable value
        gTrainList[i].speed = 5.0f;
        for (j = 0; j < NUM_PASSENGER_CAR_ENTRIES; j++) {
            pathPointOffset += 4;
            ptr1 = &gTrainList[i].passengerCars[j];
            pos = &gVehicle2DPathPoint[pathPointOffset];
            set_vehicle_pos_path_point(ptr1, pos, pathPointOffset);
        }
        // Smaller offset for the tender
        pathPointOffset += 3;
        ptr1 = &gTrainList[i].tender;
        pos = &gVehicle2DPathPoint[pathPointOffset];
        set_vehicle_pos_path_point(ptr1, pos, pathPointOffset);

        pathPointOffset += 4;
        ptr1 = &gTrainList[i].locomotive;
        pos = &gVehicle2DPathPoint[pathPointOffset];
        set_vehicle_pos_path_point(ptr1, pos, pathPointOffset);

        // Only use locomotive unless overwritten below.
        gTrainList[i].numCars = LOCOMOTIVE_ONLY;
    }

    // Spawn all rolling stock in single player mode.
    switch (gScreenModeSelection) {
        case SCREEN_MODE_1P: // single player
            for (i = 0; i < NUM_TRAINS; i++) {
                gTrainList[i].tender.isActive = 1;

                // clang-format off
                // Same line required for matching...
                for (j = 0; j < NUM_PASSENGER_CAR_ENTRIES; j++) { gTrainList[i].passengerCars[j].isActive = 1; }
                // clang-format on

                gTrainList[i].numCars = NUM_TENDERS + NUM_PASSENGER_CAR_ENTRIES;
            }
            break;

        // Spawn locomotive, tender, and one passenger car in versus 2/3 player mode.
        case SCREEN_MODE_2P_SPLITSCREEN_HORIZONTAL: // multiplayer fall-through
        case SCREEN_MODE_2P_SPLITSCREEN_VERTICAL:
            if (gModeSelection != GRAND_PRIX) {
                for (i = 0; i < NUM_TRAINS; i++) {
                    gTrainList[i].tender.isActive = 1;
                    gTrainList[i].passengerCars[4].isActive = 1;
                    gTrainList[i].numCars = NUM_TENDERS + NUM_2P_PASSENGER_CARS;
                }
            }
            break;
    }

    gTrainSmokeTimer = 0;
}
/**
 * @brief sync the train components vehicle with the actor
 *
 * @param trainCar
 * @param orientationY
 */
void sync_train_components(TrainCarStuff* trainCar, s16 orientationY) {
    struct TrainCar* trainCarActor;

    trainCarActor = (struct TrainCar*) &gActorList[trainCar->actorIndex];
    trainCarActor->pos[0] = trainCar->position[0];
    trainCarActor->pos[1] = trainCar->position[1];
    trainCarActor->pos[2] = trainCar->position[2];
    if (gIsMirrorMode != 0) {
        trainCarActor->rot[1] = -orientationY;
    } else {
        trainCarActor->rot[1] = orientationY;
    }
    trainCarActor->velocity[0] = trainCar->velocity[0];
    trainCarActor->velocity[2] = trainCar->velocity[2];
}

void update_vehicle_trains(void) {
    UNUSED s32 pad[3];
    f32 temp_f20;
    TrainCarStuff* car;
    u16 oldPathPointIndex;
    s16 orientationYUpdate;
    f32 temp_f22;
    s32 i;
    s32 j;
    Vec3f smokePos;

    gTrainSmokeTimer += 1;

    for (i = 0; i < NUM_TRAINS; i++) {
        oldPathPointIndex = (u16) gTrainList[i].locomotive.pathPointIndex;

        temp_f20 = gTrainList[i].locomotive.position[0];
        temp_f22 = gTrainList[i].locomotive.position[2];

        orientationYUpdate = update_vehicle_following_path(
            gTrainList[i].locomotive.position, (s16*) &gTrainList[i].locomotive.pathPointIndex, gTrainList[i].speed);

        gTrainList[i].locomotive.velocity[0] = gTrainList[i].locomotive.position[0] - temp_f20;
        gTrainList[i].locomotive.velocity[2] = gTrainList[i].locomotive.position[2] - temp_f22;

        sync_train_components(&gTrainList[i].locomotive, orientationYUpdate);

        if ((oldPathPointIndex != gTrainList[i].locomotive.pathPointIndex) &&
            ((gTrainList[i].locomotive.pathPointIndex == 0x00BE) ||
             (gTrainList[i].locomotive.pathPointIndex == 0x0140))) { // play crossing bell sound
            func_800C98B8(gTrainList[i].locomotive.position, gTrainList[i].locomotive.velocity,
                          SOUND_ARG_LOAD(0x19, 0x01, 0x80, 0x0E));
        } else if (random_int(100) == 0) { // play train whistle sound
            func_800C98B8(gTrainList[i].locomotive.position, gTrainList[i].locomotive.velocity,
                          SOUND_ARG_LOAD(0x19, 0x01, 0x80, 0x0D));
        }

        gTrainList[i].someFlags = set_vehicle_render_distance_flags(
            gTrainList[i].locomotive.position, TRAIN_SMOKE_RENDER_DISTANCE, gTrainList[i].someFlags);
        // Renders locomotive smoke on all screens if any player is within range.
        if ((((s16) gTrainSmokeTimer % 5) == 0) && (gTrainList[i].someFlags != 0)) {
            smokePos[0] = gTrainList[i].locomotive.position[0];
            smokePos[1] = (f32) ((f64) gTrainList[i].locomotive.position[1] + 65.0);
            smokePos[2] = (f32) ((f64) gTrainList[i].locomotive.position[2] + 25.0);
            adjust_position_by_angle(smokePos, gTrainList[i].locomotive.position, orientationYUpdate);
            spawn_train_smoke(i, smokePos, 1.1f);
        }

        car = &gTrainList[i].tender;

        if (car->isActive == 1) {
            temp_f20 = car->position[0];
            temp_f22 = car->position[2];
            orientationYUpdate =
                update_vehicle_following_path(car->position, (s16*) &car->pathPointIndex, gTrainList[i].speed);
            car->velocity[0] = car->position[0] - temp_f20;
            car->velocity[2] = car->position[2] - temp_f22;
            sync_train_components(car, orientationYUpdate);
        }

        for (j = 0; j < NUM_PASSENGER_CAR_ENTRIES; j++) {
            car = &gTrainList[i].passengerCars[j];
            if (car->isActive == 1) {
                temp_f20 = car->position[0];
                temp_f22 = car->position[2];

                orientationYUpdate =
                    update_vehicle_following_path(car->position, (s16*) &car->pathPointIndex, gTrainList[i].speed);
                car->velocity[0] = car->position[0] - temp_f20;
                car->velocity[2] = car->position[2] - temp_f22;
                sync_train_components(car, orientationYUpdate);
            }
        }
    }
}

void handle_trains_interactions(s32 playerId, Player* player) {
    TrainCarStuff* trainCar;
    f32 playerPosX;
    f32 playerPosZ;
    f32 x_dist;
    f32 z_dist;
    s32 trainIndex;
    s32 passengerCarIndex;

    if (D_801631E0[playerId] != true) {
        if (!(player->effects & UNKNOWN_EFFECT_0x1000000)) {
            playerPosX = player->pos[0];
            playerPosZ = player->pos[2];
            for (trainIndex = 0; trainIndex < NUM_TRAINS; trainIndex++) {
                trainCar = &gTrainList[trainIndex].locomotive;
                x_dist = playerPosX - trainCar->position[0];
                z_dist = playerPosZ - trainCar->position[2];
                if ((x_dist > -100.0) && (x_dist < 100.0)) {
                    if ((z_dist > -100.0) && (z_dist < 100.0)) {
                        if (is_collide_with_vehicle(trainCar->position[0], trainCar->position[2], trainCar->velocity[0],
                                                    trainCar->velocity[2], 60.0f, 20.0f, playerPosX, playerPosZ) == 1) {
                            player->soundEffects |= HIT_FAKE_ITEM_SOUND_EFFECT;
                        }
                        trainCar = &gTrainList[trainIndex].tender;
                        if (trainCar->isActive == 1) {
                            if (is_collide_with_vehicle(trainCar->position[0], trainCar->position[2],
                                                        trainCar->velocity[0], trainCar->velocity[2], 30.0f, 20.0f,
                                                        playerPosX, playerPosZ) == 1) {
                                player->soundEffects |= HIT_FAKE_ITEM_SOUND_EFFECT;
                            }
                        }
                    }
                }

                for (passengerCarIndex = 0; passengerCarIndex < NUM_PASSENGER_CAR_ENTRIES; passengerCarIndex++) {
                    trainCar = &gTrainList[trainIndex].passengerCars[passengerCarIndex];
                    x_dist = playerPosX - trainCar->position[0];
                    z_dist = playerPosZ - trainCar->position[2];
                    if (trainCar->isActive == 1) {
                        if ((x_dist > -100.0) && (x_dist < 100.0)) {
                            if ((z_dist > -100.0) && (z_dist < 100.0)) {
                                if (is_collide_with_vehicle(trainCar->position[0], trainCar->position[2],
                                                            trainCar->velocity[0], trainCar->velocity[2], 30.0f, 20.0f,
                                                            playerPosX, playerPosZ) == 1) {
                                    player->soundEffects |= HIT_FAKE_ITEM_SOUND_EFFECT;
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

/**
 * Appears to check if the train is close to the crossing.
 * Implements sCrossingActiveTimer as a counter
 */
void func_80013054(void) {
    f32 temp_f16;
    f32 temp_f18;
    f32 temp_f12;
    s32 i;
    isCrossingTriggeredByIndex[0] = 0;
    isCrossingTriggeredByIndex[1] = 0;

    for (i = 0; i < NUM_TRAINS; i++) {
        temp_f16 = gTrainList[i].locomotive.pathPointIndex / ((f32) gVehicle2DPathLength);
        temp_f18 = 0.72017354f;
        temp_f12 = 0.42299348f;

        if (((temp_f12 - 0.1) < temp_f16) &&
            (temp_f16 < ((((f64) gTrainList[i].numCars) * 0.01) + (temp_f12 + 0.01)))) {

            isCrossingTriggeredByIndex[0] = 1;
        }
        if (((temp_f18 - 0.1) < temp_f16) &&
            (temp_f16 < ((((f64) gTrainList[i].numCars) * 0.01) + (temp_f18 + 0.01)))) {

            isCrossingTriggeredByIndex[1] = 1;
        }
    }

    for (i = 0; i < NUM_CROSSINGS; i++) {
        if (isCrossingTriggeredByIndex[i] == 1) {
            sCrossingActiveTimer[i] += 1;
        } else {
            sCrossingActiveTimer[i] = 0;
        }
    }
}

void check_ai_crossing_distance(s32 playerId) {
    bStopAICrossing[playerId] = 0;
    if (gCurrentCourseId == COURSE_KALAMARI_DESERT) {
        if ((!(D_801631E0[playerId] != false)) ||
            (set_vehicle_render_distance_flags(gPlayers[playerId].pos, TRAIN_CROSSING_AI_DISTANCE, 0))) {

            if ((isCrossingTriggeredByIndex[1] == 1) && ((sCrossingActiveTimer[1]) > FRAMES_SINCE_CROSSING_ACTIVATED)) {

                if ((sSomeNearestPathPoint > 176) && (sSomeNearestPathPoint < 182)) {
                    bStopAICrossing[playerId] = 1;
                }
            }
            if ((isCrossingTriggeredByIndex[0] == 1) && ((sCrossingActiveTimer[0]) > FRAMES_SINCE_CROSSING_ACTIVATED)) {
                if ((sSomeNearestPathPoint >= 306) && (sSomeNearestPathPoint < 310)) {
                    bStopAICrossing[playerId] = 1;
                }
            }
        }
    }
}

void init_vehicles_ferry(void) {
    PaddleBoatStuff* paddleBoat;
    s32 i;
    Path2D* temp_a2;
    u16 temp;
    for (i = 0; i < NUM_ACTIVE_PADDLE_BOATS; i++) {
        temp = i * 0xB4;
        paddleBoat = &gPaddleBoats[i];
        temp_a2 = &gVehicle2DPathPoint[temp];
        paddleBoat->position[0] = temp_a2->x;
        paddleBoat->position[1] = D_80162EB2;
        paddleBoat->position[2] = temp_a2->z;
        paddleBoat->pathPointIndex = i * 0xB4;
        paddleBoat->actorIndex = -1;

        if (gPlayerCount >= 3) {
            paddleBoat->isActive = 0;
        } else {
            paddleBoat->isActive = 1;
        }
        paddleBoat->velocity[0] = 0.0f;
        paddleBoat->velocity[1] = 0.0f;
        paddleBoat->velocity[2] = 0.0f;
        paddleBoat->speed = 1.6666666f;
        paddleBoat->rotY = 0;
    }
    gFerrySmokeTimer = 0;
}

void update_vehicle_paddle_boats(void) {
    PaddleBoatStuff* paddleBoat;
    Path2D* pathPoint;
    s32 i;
    struct Actor* paddleBoatActor;
    f32 temp_f26;
    f32 temp_f28;
    f32 temp_f30;
    s16 temp_a1;
    s32 temp;
    s16 var_v1;
    Vec3f sp94;
    Vec3f sp88;
    UNUSED s32 pad;
    Vec3f smokePos;
    UNUSED s32 pad2;
    gFerrySmokeTimer += 1;
    for (i = 0; i < NUM_ACTIVE_PADDLE_BOATS; i++) {
        paddleBoat = &gPaddleBoats[i];
        if (paddleBoat->isActive == 1) {
            temp_f26 = paddleBoat->position[0];
            temp_f28 = paddleBoat->position[1];
            temp_f30 = paddleBoat->position[2];
            update_vehicle_following_path(paddleBoat->position, (s16*) &paddleBoat->pathPointIndex, paddleBoat->speed);
            paddleBoat->someFlags = set_vehicle_render_distance_flags(paddleBoat->position, BOAT_SMOKE_RENDER_DISTANCE,
                                                                      paddleBoat->someFlags);
            if ((((s16) gFerrySmokeTimer % 10) == 0) && (paddleBoat->someFlags != 0)) {
                smokePos[0] = (f32) ((f64) paddleBoat->position[0] - 30.0);
                smokePos[1] = (f32) ((f64) paddleBoat->position[1] + 180.0);
                smokePos[2] = (f32) ((f64) paddleBoat->position[2] + 45.0);
                adjust_position_by_angle(smokePos, paddleBoat->position, paddleBoat->rotY);
                spawn_ferry_smoke(i, smokePos, 1.1f);
                smokePos[0] = (f32) ((f64) paddleBoat->position[0] + 30.0);
                smokePos[1] = (f32) ((f64) paddleBoat->position[1] + 180.0);
                smokePos[2] = (f32) ((f64) paddleBoat->position[2] + 45.0);
                adjust_position_by_angle(smokePos, paddleBoat->position, paddleBoat->rotY);
                spawn_ferry_smoke(i, smokePos, 1.1f);
            }
            if (random_int(100) == 0) {
                if (random_int(2) == 0) {
                    func_800C98B8(paddleBoat->position, paddleBoat->velocity, SOUND_ARG_LOAD(0x19, 0x01, 0x80, 0x47));
                } else {
                    func_800C98B8(paddleBoat->position, paddleBoat->velocity, SOUND_ARG_LOAD(0x19, 0x01, 0x80, 0x48));
                }
            }
            sp94[0] = temp_f26;
            sp94[1] = temp_f28;
            sp94[2] = temp_f30;
            pathPoint = &gVehicle2DPathPoint[(paddleBoat->pathPointIndex + 5) % gVehicle2DPathLength];
            sp88[0] = (f32) pathPoint->x;
            sp88[1] = (f32) D_80162EB0;
            sp88[2] = (f32) pathPoint->z;
            temp_a1 = get_angle_between_path(sp94, sp88);
            temp = temp_a1 - paddleBoat->rotY;
            var_v1 = temp;
            if (var_v1 < 0) {
                var_v1 = -var_v1;
            }
            if (var_v1 >= 0x1771) {
                if (paddleBoat->speed > 0.2) {
                    paddleBoat->speed -= 0.04;
                }
                if (var_v1 >= 0x3D) {
                    var_v1 = 0x003C;
                }
            } else {
                if (paddleBoat->speed < 2.0) {
                    paddleBoat->speed += 0.02;
                }
                if (var_v1 >= 0x1F) {
                    var_v1 = 0x001E;
                }
            }
            if (temp >= 0x8000) {
                paddleBoat->rotY -= var_v1;
            } else if (temp > 0) {
                paddleBoat->rotY += var_v1;
            } else if (temp < -0x7FFF) {
                paddleBoat->rotY += var_v1;
            } else if (temp < 0) {
                paddleBoat->rotY -= var_v1;
            }
            paddleBoat->velocity[0] = paddleBoat->position[0] - temp_f26;
            paddleBoat->velocity[1] = paddleBoat->position[1] - temp_f28;
            paddleBoat->velocity[2] = paddleBoat->position[2] - temp_f30;
            paddleBoatActor = &gActorList[paddleBoat->actorIndex];
            paddleBoatActor->pos[0] = paddleBoat->position[0];
            paddleBoatActor->pos[1] = paddleBoat->position[1];
            paddleBoatActor->pos[2] = paddleBoat->position[2];
            if (gIsMirrorMode != 0) {
                paddleBoatActor->rot[1] = -paddleBoat->rotY;
            } else {
                paddleBoatActor->rot[1] = paddleBoat->rotY;
            }
            paddleBoatActor->velocity[0] = paddleBoat->velocity[0];
            paddleBoatActor->velocity[1] = paddleBoat->velocity[1];
            paddleBoatActor->velocity[2] = paddleBoat->velocity[2];
        }
    }
}

void handle_paddle_boats_interactions(Player* player) {
    s32 someIndex;
    PaddleBoatStuff* tempPaddleWheelBoat;
    f32 x_diff;
    f32 y_diff;
    f32 z_diff;
    f32 playerX;
    f32 playerZ;
    f32 playerY;

    if (!((player->effects & UNKNOWN_EFFECT_0x1000000)) && (!(player->effects & HIT_BY_ITEM_EFFECT))) {
        playerX = player->pos[0];
        playerY = player->pos[1];
        playerZ = player->pos[2];
        for (someIndex = 0; someIndex < NUM_ACTIVE_PADDLE_BOATS; someIndex++) {
            tempPaddleWheelBoat = &gPaddleBoats[someIndex];
            if (tempPaddleWheelBoat->isActive == 1) {
                x_diff = playerX - tempPaddleWheelBoat->position[0];
                y_diff = playerY - tempPaddleWheelBoat->position[1];
                z_diff = playerZ - tempPaddleWheelBoat->position[2];
                if ((x_diff > -300.0) && (x_diff < 300.0)) {
                    if ((z_diff > -300.0) && (z_diff < 300.0)) {
                        if ((is_collide_with_vehicle(tempPaddleWheelBoat->position[0], tempPaddleWheelBoat->position[2],
                                                     tempPaddleWheelBoat->velocity[0], tempPaddleWheelBoat->velocity[2],
                                                     200.0f, 60.0f, playerX, playerZ) == 1) &&
                            (y_diff < 60.0)) {
                            player->soundEffects |= HIT_PADDLE_BOAT_SOUND_EFFECT;
                        }
                    }
                }
            }
        }
    }
}

void initialize_toads_turnpike_vehicle(f32 speedA, f32 speedB, s32 numVehicles, s32 arg3, VehicleStuff* vehicleList,
                                       TrackPathPoint* pathPointList) {
    VehicleStuff* veh;
    TrackPathPoint* temp_v0;
    s32 i;
    u16 pathPointOffset;
    s32 numPathPoints = gPathCountByPathIndex[0];
    for (i = 0; i < numVehicles; i++) {
        pathPointOffset = (((i * numPathPoints) / numVehicles) + arg3) % numPathPoints;
        veh = &vehicleList[i];
        temp_v0 = &pathPointList[pathPointOffset];
        veh->position[0] = (f32) temp_v0->posX;
        veh->position[1] = (f32) temp_v0->posY;
        veh->position[2] = (f32) temp_v0->posZ;
        veh->actorIndex = -1;
        veh->pathPointIndex = pathPointOffset;
        veh->unused = 0;
        veh->velocity[0] = 0.0f;
        veh->velocity[1] = 0.0f;
        veh->velocity[2] = 0.0f;
        veh->someFlags = 0;
        veh->someFlagsTheSequel = 0;
        if (gModeSelection == TIME_TRIALS) {
            veh->someType = (i % 3);
        } else {
            veh->someType = random_int(3);
        }
        veh->someMultiplierTheSequel = (f32) ((f64) (f32) (veh->someType - 1) * 0.6);
        if (((gCCSelection > CC_50) || (gModeSelection == TIME_TRIALS)) && (veh->someType == 2)) {
            veh->speed = speedA;
        } else {
            veh->speed = speedB;
        }
        veh->rotation[0] = 0;
        veh->rotation[2] = 0;
        if (gIsInExtra == false) {
            veh->rotation[1] = func_8000D6D0(veh->position, (s16*) &veh->pathPointIndex, veh->speed,
                                             veh->someMultiplierTheSequel, 0, 3);
        } else {
            veh->rotation[1] =
                func_8000D940(veh->position, (s16*) &veh->pathPointIndex, veh->speed, veh->someMultiplierTheSequel, 0);
        }
    }
    sVehicleSoundRenderCounter = 10;
}

f32 func_80013C74(s16 someType, s16 pathPointIndex) {
    f32 var_f2;

    var_f2 = 0.0f;
    if (pathPointIndex < 0x28A) {
        switch (someType) {
            case 0:
                var_f2 = -0.7f;
                break;
            case 1:
                break;
            case 2:
                var_f2 = 0.7f;
                break;
            default:
                break;
        }
    } else {
        switch (someType) {
            case 0:
            case 1:
                var_f2 = -0.5f;
                break;
            case 2:
                var_f2 = 0.5f;
                break;
            default:
                break;
        }
    }
    return var_f2;
}

void update_vehicle_follow_path_point(VehicleStuff* vehicle) {
    f32 temp_f0_2;
    f32 temp_f0_3;
    f32 sp5C;
    f32 sp58;
    f32 sp54;
    f32 temp_f2_2;
    s16 var_a1;
    s16 thing;
    Vec3f sp40;
    Vec3f sp34;
    struct Actor* vehicleActor;

    sp5C = vehicle->position[0];
    sp58 = vehicle->position[1];
    sp54 = vehicle->position[2];
    sp40[0] = sp58;
    sp40[1] = 0.0f;
    sp40[2] = 0.0f;
    temp_f0_2 = func_80013C74(vehicle->someType, vehicle->pathPointIndex);
    if (vehicle->someMultiplierTheSequel < temp_f0_2) {
        vehicle->someMultiplierTheSequel = vehicle->someMultiplierTheSequel + 0.06;
        if (temp_f0_2 < vehicle->someMultiplierTheSequel) {
            vehicle->someMultiplierTheSequel = temp_f0_2;
        }
    }
    if (temp_f0_2 < vehicle->someMultiplierTheSequel) {
        vehicle->someMultiplierTheSequel = vehicle->someMultiplierTheSequel - 0.06;
        if (vehicle->someMultiplierTheSequel < temp_f0_2) {
            vehicle->someMultiplierTheSequel = temp_f0_2;
        }
    }
    if (gIsInExtra == false) {
        var_a1 = func_8000D6D0(vehicle->position, (s16*) &vehicle->pathPointIndex, vehicle->speed,
                               vehicle->someMultiplierTheSequel, 0, 3);
    } else {
        var_a1 = func_8000D940(vehicle->position, (s16*) &vehicle->pathPointIndex, vehicle->speed,
                               vehicle->someMultiplierTheSequel, 0);
    }
    adjust_angle(&vehicle->rotation[1], var_a1, 100);
    temp_f0_3 = vehicle->position[0] - sp5C;
    temp_f2_2 = vehicle->position[2] - sp54;
    sp34[0] = vehicle->position[1];
    sp34[1] = 0.0f;
    sp34[2] = sqrtf((temp_f0_3 * temp_f0_3) + (temp_f2_2 * temp_f2_2));
    thing = get_xz_angle_between_points(sp40, sp34);
    adjust_angle(&vehicle->rotation[0], -thing, 100);
    vehicle->velocity[0] = vehicle->position[0] - sp5C;
    vehicle->velocity[1] = vehicle->position[1] - sp58;
    vehicle->velocity[2] = vehicle->position[2] - sp54;
    vehicleActor = &gActorList[vehicle->actorIndex];
    vehicleActor->pos[0] = vehicle->position[0];
    vehicleActor->pos[1] = vehicle->position[1];
    vehicleActor->pos[2] = vehicle->position[2];
    vehicleActor->rot[0] = vehicle->rotation[0];
    if (gIsMirrorMode != 0) {
        vehicleActor->rot[1] = -vehicle->rotation[1];
    } else {
        vehicleActor->rot[1] = vehicle->rotation[1];
    }
    vehicleActor->rot[2] = vehicle->rotation[2];
    vehicleActor->velocity[0] = vehicle->velocity[0];
    vehicleActor->velocity[1] = vehicle->velocity[1];
    vehicleActor->velocity[2] = vehicle->velocity[2];
}

void handle_vehicle_interactions(s32 playerId, Player* player, VehicleStuff* vehicle, f32 distanceX, f32 distanceY,
                                 s32 vehicleCount, u32 soundBits) {
    f32 deltaX;
    f32 deltaZ;
    f32 deltaY;

    s32 i;

    f32 playerX;
    f32 playerY;
    f32 playerZ;

    if (((D_801631E0[playerId] != true) || ((((player->type & PLAYER_HUMAN) != 0)) && !(player->type & PLAYER_CPU))) &&
        !(player->effects & UNKNOWN_EFFECT_0x1000000)) {

        playerX = player->pos[0];
        playerY = player->pos[1];
        playerZ = player->pos[2];

        for (i = 0; i < vehicleCount; i++) {
            deltaX = playerX - vehicle->position[0];
            deltaY = playerY - vehicle->position[1];
            deltaZ = playerZ - vehicle->position[2];

            if (((deltaX) > -100.0) && ((deltaX) < 100.0)) {
                if ((deltaY > -20.0) && (deltaY < 20.0)) {
                    if (((deltaZ) > -100.0) && ((deltaZ) < 100.0)) {
                        if (is_collide_with_vehicle(vehicle->position[0], vehicle->position[2], vehicle->velocity[0],
                                                    vehicle->velocity[2], distanceX, distanceY, playerX,
                                                    playerZ) == (s32) 1) {
                            player->soundEffects |= HIT_FAKE_ITEM_SOUND_EFFECT;
                        }
                    }
                }
            }

            // Human player specific interactions
            if ((player->type & PLAYER_HUMAN) && !(player->type & PLAYER_CPU)) {
                if (((deltaX) > -300.0) && ((deltaX) < 300.0) && ((deltaY > -20.0)) && (deltaY < 20.0) &&
                    (((deltaZ) > -300.0)) && ((deltaZ) < 300.0)) {
                    if ((sVehicleSoundRenderCounter > 0) && (vehicle->someFlags == 0)) {
                        sVehicleSoundRenderCounter--;
                        vehicle->someFlags |= (RENDER_VEHICLE << playerId);
                        func_800C9D80(vehicle->position, vehicle->velocity, soundBits);
                    }
                } else {
                    if (vehicle->someFlags != 0) {
                        vehicle->someFlags &= ~(RENDER_VEHICLE << playerId);
                        if (vehicle->someFlags == 0) {
                            sVehicleSoundRenderCounter++;
                            func_800C9EF4(vehicle->position, soundBits);
                        }
                    }
                }

                if (((deltaX) > -200.0) && ((deltaX) < 200.0) && ((deltaY > -20.0)) && (deltaY < 20.0) &&
                    (((deltaZ) > -200.0)) && ((deltaZ) < 200.0)) {
                    if (!(vehicle->someFlagsTheSequel & ((1 << playerId)))) {

                        bool shouldInteract = false;
                        u16 path = gPathCountByPathIndex[0];
                        s32 t1;
                        s32 t2;

                        switch (gIsInExtra) {
                            case false:
                                t1 = is_path_point_in_range(vehicle->pathPointIndex,
                                                            gNearestPathPointByPlayerId[playerId], 10, 0, path);
                                if ((gIsPlayerWrongDirection[playerId] == 0) && (t1 > 0) &&
                                    (player->speed < vehicle->speed)) {
                                    shouldInteract = true;
                                }
                                if ((gIsPlayerWrongDirection[playerId] == 1) && (t1 > 0)) {
                                    shouldInteract = true;
                                }
                                break;
                            case true:
                                t2 = is_path_point_in_range(vehicle->pathPointIndex,
                                                            gNearestPathPointByPlayerId[playerId], 0, 10, path);
                                if (t2 > 0) {
                                    if (random_int(2) == 0) {
                                        // temp_v1_2 = gIsPlayerWrongDirection[playerId];
                                        if (gIsPlayerWrongDirection[playerId] == 0) {
                                            shouldInteract = true;
                                        }
                                        if ((gIsPlayerWrongDirection[playerId] == 1) &&
                                            (player->speed < vehicle->speed)) {
                                            shouldInteract = true;
                                        }
                                    } else {
                                        vehicle->someFlagsTheSequel |= ((1 << playerId));
                                    }
                                }
                                break;
                        }
                        if (shouldInteract == true) {

                            u32 soundBits2 = SOUND_ARG_LOAD(0x19, 0x01, 0x70, 0x3B);

                            switch (soundBits) {
                                case SOUND_ARG_LOAD(0x51, 0x01, 0x80, 0x05):
                                    soundBits2 = SOUND_ARG_LOAD(0x19, 0x01, 0x70, 0x3B);
                                    if (random_int(4) == 0) {
                                        soundBits2 = SOUND_ARG_LOAD(0x19, 0x01, 0x70, 0x3C);
                                    }
                                    break;
                                case SOUND_ARG_LOAD(0x51, 0x01, 0x80, 0x02):
                                    if (random_int(2) != 0) {
                                        soundBits2 = SOUND_ARG_LOAD(0x19, 0x01, 0x70, 0x3D);
                                    } else {
                                        soundBits2 = SOUND_ARG_LOAD(0x19, 0x01, 0x70, 0x3E);
                                    }
                                    break;
                                case SOUND_ARG_LOAD(0x51, 0x01, 0x80, 0x03):
                                    if (random_int(2) != 0) {
                                        soundBits2 = SOUND_ARG_LOAD(0x19, 0x01, 0x70, 0x3F);
                                    } else {
                                        soundBits2 = SOUND_ARG_LOAD(0x19, 0x01, 0x70, 0x40);
                                    }
                                    break;
                                case SOUND_ARG_LOAD(0x51, 0x01, 0x80, 0x04):
                                    if (random_int(2) != 0) {
                                        soundBits2 = SOUND_ARG_LOAD(0x19, 0x01, 0x70, 0x41);
                                    } else {
                                        soundBits2 = SOUND_ARG_LOAD(0x19, 0x01, 0x70, 0x42);
                                    }
                                    break;
                            }
                            vehicle->someFlagsTheSequel |= ((1 << playerId));
                            func_800C98B8(vehicle->position, vehicle->velocity, soundBits2);
                        }
                    }
                } else {
                    if (vehicle->someFlagsTheSequel & ((1 << playerId))) {
                        vehicle->someFlagsTheSequel &= ~((1 << playerId));
                    }
                }
            }
            vehicle++;
        }
    }
}

f32 player_track_position_factor_vehicle(s16 someType, f32 arg1, s16 pathIndex) {
    if (pathIndex < 0x28A) {
        switch (someType) {
            case 0:
                if (arg1 < 0.0) {
                    arg1 = 0.0f;
                }
                break;
            case 1:
                if (arg1 < 0.0) {
                    arg1 = -0.8f;
                } else {
                    arg1 = 0.8f;
                }
                break;
            case 2:
                if (arg1 >= 0.0) {
                    arg1 = 0.0f;
                }
                break;
            default:
                break;
        }
    } else {
        switch (someType) {
            case 0:
            case 1:
                arg1 = 0.5f;
                break;
            case 2:
                arg1 = -0.5f;
                break;
            default:
                break;
        }
    }
    return arg1;
}

void update_player_track_position_factor_from_vehicle(s32 playerId, s32 vehicleCount, VehicleStuff* vehicle) {
    UNUSED s32 var_v1;
    s32 pathPointOffset;
    s32 var_s2;
    s32 pathPointCount;
    u16 vehiclePathPoint;
    UNUSED VehicleStuff* tempVehicle;

    pathPointCount = gPathCountByPathIndex[0];
    if (!(gPlayers[playerId].speed < 1.6666666666666667)) {
        for (var_s2 = 0; var_s2 < vehicleCount; var_s2++, vehicle++) {
            vehiclePathPoint = vehicle->pathPointIndex;
            for (pathPointOffset = 0; pathPointOffset < 0x18; pathPointOffset += 3) {
                if (((sSomeNearestPathPoint + pathPointOffset) % pathPointCount) == vehiclePathPoint) {
                    gPlayerTrackPositionFactorInstruction[playerId].target = player_track_position_factor_vehicle(
                        vehicle->someType, gTrackPositionFactor[playerId], vehiclePathPoint);
                    return;
                }
            }
        }
    }
}

void init_vehicles_box_trucks(void) {
    f32 a = ((gCCSelection * 90.0) / 216.0f) + 4.583333333333333;
    f32 b = ((gCCSelection * 90.0) / 216.0f) + 2.9166666666666665;
    s32 numTrucks = NUM_RACE_BOX_TRUCKS;
    if (gModeSelection == TIME_TRIALS) {
        numTrucks = NUM_TIME_TRIAL_BOX_TRUCKS;
    }
    initialize_toads_turnpike_vehicle(a, b, numTrucks, 0, gBoxTruckList, &gTrackPaths[0][0]);
}

void update_vehicle_box_trucks(void) {
    s32 loopIndex;
    for (loopIndex = 0; loopIndex < NUM_RACE_BOX_TRUCKS; loopIndex++) {
        update_vehicle_follow_path_point(&gBoxTruckList[loopIndex]);
    }
}

void handle_box_trucks_interactions(s32 playerId, Player* player) {
    handle_vehicle_interactions(playerId, player, gBoxTruckList, 55.0f, 12.5f, NUM_RACE_BOX_TRUCKS,
                                SOUND_ARG_LOAD(0x51, 0x01, 0x80, 0x03));
}

void update_player_track_position_factor_from_box_trucks(s32 playerId) {
    update_player_track_position_factor_from_vehicle(playerId, NUM_RACE_BOX_TRUCKS, gBoxTruckList);
}

void init_vehicles_school_buses(void) {
    s32 numBusses;
    f32 a = ((gCCSelection * 90.0) / 216.0f) + 4.583333333333333;
    f32 b = ((gCCSelection * 90.0) / 216.0f) + 2.9166666666666665;

    numBusses = NUM_RACE_SCHOOL_BUSES;
    if (gModeSelection == TIME_TRIALS) {
        numBusses = NUM_TIME_TRIAL_SCHOOL_BUSES;
    }
    initialize_toads_turnpike_vehicle(a, b, numBusses, 75, gSchoolBusList, &gTrackPaths[0][0]);
}

void update_vehicle_school_bus(void) {
    s32 loopIndex;
    for (loopIndex = 0; loopIndex < NUM_RACE_SCHOOL_BUSES; loopIndex++) {
        update_vehicle_follow_path_point(&gSchoolBusList[loopIndex]);
    }
}

void handle_school_buses_interactions(s32 playerId, Player* player) {
    handle_vehicle_interactions(playerId, player, gSchoolBusList, 70.0f, 12.5f, NUM_RACE_SCHOOL_BUSES,
                                SOUND_ARG_LOAD(0x51, 0x01, 0x80, 0x02));
}

void update_player_track_position_factor_from_buses(s32 playerId) {
    update_player_track_position_factor_from_vehicle(playerId, NUM_RACE_SCHOOL_BUSES, gSchoolBusList);
}

void init_vehicles_trucks(void) {
    s32 numTrucks;
    f32 a = ((gCCSelection * 90.0) / 216.0f) + 4.583333333333333;
    f32 b = ((gCCSelection * 90.0) / 216.0f) + 2.9166666666666665;

    numTrucks = NUM_RACE_TANKER_TRUCKS;
    if (gModeSelection == TIME_TRIALS) {
        numTrucks = NUM_TIME_TRIAL_TANKER_TRUCKS;
    }
    initialize_toads_turnpike_vehicle(a, b, numTrucks, 50, gTankerTruckList, &gTrackPaths[0][0]);
}

void update_vehicle_tanker_trucks(void) {
    s32 loopIndex;
    for (loopIndex = 0; loopIndex < NUM_RACE_TANKER_TRUCKS; loopIndex++) {
        update_vehicle_follow_path_point(&gTankerTruckList[loopIndex]);
    }
}

void handle_tanker_trucks_interactions(s32 playerId, Player* player) {
    handle_vehicle_interactions(playerId, player, gTankerTruckList, 55.0f, 12.5f, NUM_RACE_TANKER_TRUCKS,
                                SOUND_ARG_LOAD(0x51, 0x01, 0x80, 0x04));
}

void update_player_track_position_factor_from_tanker_truck(s32 playerId) {
    update_player_track_position_factor_from_vehicle(playerId, NUM_RACE_TANKER_TRUCKS, gTankerTruckList);
}

void init_vehicles_cars(void) {
    s32 numCars;
    f32 a = ((gCCSelection * 90.0) / 216.0f) + 4.583333333333333;
    f32 b = ((gCCSelection * 90.0) / 216.0f) + 2.9166666666666665;

    numCars = NUM_RACE_CARS;
    if (gModeSelection == TIME_TRIALS) {
        numCars = NUM_TIME_TRIAL_CARS;
    }
    initialize_toads_turnpike_vehicle(a, b, numCars, 25, gCarList, &gTrackPaths[0][0]);
}

void update_vehicle_cars(void) {
    s32 loopIndex;
    for (loopIndex = 0; loopIndex < NUM_RACE_CARS; loopIndex++) {
        update_vehicle_follow_path_point(&gCarList[loopIndex]);
    }
}

void handle_cars_interactions(s32 playerId, Player* player) {
    handle_vehicle_interactions(playerId, player, gCarList, 11.5f, 8.5f, NUM_RACE_CARS,
                                SOUND_ARG_LOAD(0x51, 0x01, 0x80, 0x05));
}

void update_player_track_position_factor_from_cars(s32 playerId) {
    update_player_track_position_factor_from_vehicle(playerId, NUM_RACE_CARS, gCarList);
}
