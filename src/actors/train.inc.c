// wheels
void update_actor_train_engine(struct TrainCar *arg0) {
    arg0->wheelRot -= 0x666;

    if (arg0->unk_08 != 0.0f) {
        arg0->unk_08 = 0.0f;
        func_800C9D80(arg0->pos, arg0->velocity, 0x51018000);
    }
}

// wheels
void update_actor_train_car1(struct TrainCar *tender) {
    tender->wheelRot -= 0x4FA;
}

// wheels
void update_actor_train_car2(struct TrainCar *arg0) {
    arg0->wheelRot -= 0x666;
}
