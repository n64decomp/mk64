void CreateThread(OSThread *thread, int id, void *entry, void *argp,
void *stack, int priority) { //80000450
    thread->next  = NULL;
    thread->queue = NULL;
    osCreateThread(thread, id, entry, argp, stack, priority);
}


void createDebugThread() { //800046B8
    osCreateMesgQueue(thread9_queue, thread9_msg, 1);
    osCreateThread(thread9, 9, thread9_main, NULL, thread9_stack, 0x7F);
    //not using CreateThread wrapper here
}

void startDebugThread() { //80004718
    osStartThread(thread9);
}


void thread1_main(void *arg) { //800004E0 - idle thread
    //arg: passed as arg of thread 3 where it's never used

    osCreateViManager(0xFE);
    if(tv_type == OS_TV_NTSC) osViSetMode(vimode_ntsc);
    else osViSetMode(vimode_not_ntsc);
    osViBlack(1); //blank the screen
    osViSetSpecialFeatures(OS_VI_GAMMA_OFF);

    //osCreatePiManager(priority, OSMesgQueue, OSMesg*, cmdMsgCnt)
    osCreatePiManager(0x96, thread2_queue, thread2_cmdbuf, 0x20);

    g_reset_type = reset_type;
    createDebugThread();
    startDebugThread();

    CreateThread(thread3, 3, thread3_main, arg, thread3_stack, 0x64);
    osStartThread(thread3);

    osSetThreadPri(NULL, 0); //set current thread to idle
    while(1); //never reached
}


void thread3_main(void *arg) { //800023E4 - graphic thread?
    //arg: not used
    frameBuffers[0] = frameBuffer0; //one of these might be depth buffer
    frameBuffers[1] = frameBuffer1;
    frameBuffers[2] = frameBuffer2;
    memset(frameBuffer1, 0, 320 * 240 * sizeof(u16));
    SetupMessageQueues();
    initGame();

    CreateThread (thread4, 4, thread4_main, NULL, thread4_stack, 0x14);
    osStartThread(thread4);
    CreateThread (thread5, 5, thread5_main, NULL, thread5_stack, 0x0A);
    osStartThread(thread5);

    OSMesg msg;
    while(1) {
        osRecvMesg(thread3_queue, &msg, OS_MESG_BLOCK);
        switch(msg) {
            case 0x66: render_loop_case_66(); break;
            case 0x64: render_loop_case_64(); break;
            case 0x65: render_loop_case_65(); break;
            case 0x67: render_loop_case_67(); break;
            default: break;
        }
    }
}


void thread5_main(void *arg) { //8000277C - main game logic
    //osCreateMesgQueue(OSMesgQueue *mq, OSMesg *msg, s32 count)
    osCreateMesgQueue(thread5_msgq1, thread5_msg1, 1);
    osCreateMesgQueue(thread5_msgq2, thread5_msg2, 1);
    _InitControllers();
    if(g_reset_type == COLD_RESET) f_80003010();
    f_800020D8(2, 0x8014EF48, 0x8014EF70, 1);

    v0 = *0x800DC600; //8000031C
    *0x8015F8B8 = v0;
    *0x8015F8BC = v0 + 0x02; //throw in lots of redundant opcodes here
    *0x8015F8C0 = v0 + 0x0B;
    *0x8015F8C4 = v0 + 0x17;
    *0x8015F8C8 = v0 + 0x19;
    *0x8015F8CC = v0 + 0x1C;
    readControllers();
    f_800C5CB8();

    while(1) {
        f_800CB2C4();

        if(mainThreadTask != mainThreadPrevTask) {
            mainThreadPrevTask = mainThreadTask;
            f_80002684();
        }

        f_80003550(0);
        f_80000EB4();
        readControllers();
        f_80001ECC();
        f_80000CE8();
        f_80000F34();
    }
}


void thread9_main(void *arg) { //80004530 - debug thread
    OSMesgQueue thread9_queue; //80162D40; sp + 0x00
    OSMesg thread9_msg;//80162D58; sp + 0x18; not used
    u16* framebuffer;  //80162D5C; sp + 0x1C; value 0x8036A780
    u32 curButtonIdx;  //80162D60; sp + 0x20
    something sp_24;   //80162D64; sp + 0x24
    OSMesg msg;        //80162D84; sp + 0x44

    osSetEventMsg(OS_EVENT_FAULT, &thread9_queue, 0x10);
    osSetEventMsg(OS_EVENT_CPU_BREAK, &thread9_queue, 0x10);
    curButtonIdx = 0;

    //crashScreenCounter is at 0x800DC670

    while(1) {
        do {
            //wait for crash
            do { //800045BC
                osRecvMesg(&thread9_queue, &msg, OS_MESG_BLOCK);
                OSThread *faultThread = getFaultedThread();
                sp_24->u32_at_0 = 0;
            } while(!faultThread);
            //nothing done with faultThread? only checking there is one?
            //maybe crashScreenDrawInfo looks it up again?

            if(!crashScreenCounter) { //800045E8
                //XXX how does framebuffer get updated?
                crashScreenDrawSquare(framebuffer);
                do { //wait for correct button sequence
                    u16 buttons; //v0
                    do { //800045F0
                        readControllers();
                        buttons = controllerStates[0]->prevButtons; //u16 800F6916
                    } while(!buttons);

                    //80004608
                    if(buttons == crashScreenCodeButtons[curButtonIdx << 1]) {
                        curButtonIdx++;
                    }
                    else curButtonIdx = 0;

                    //80004630
                } while(crashScreenCodeButtons[curButtonIdx << 1] != 0xFFFF);

                //80004648
                crashScreenDrawInfo(sp_24->u32_at_0, framebuffer);
            }
        } while(crashScreenCounter >= 5);

        //80004668
        crashScreenCounter++;
        //unsure what the purpose of this counter is.
        //it gets incremented in crashScreenDrawInfo()
    }
}
