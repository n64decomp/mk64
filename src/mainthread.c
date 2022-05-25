osResetType g_reset_type; //at 0x8015011C

OSThread *thread1 = 0x801524C0;
void *thread1_stack = 0x80154670;

OSMesgQueue *thread2_queue = 0x8015F460;
OSMesg *thread2_cmdbuf = 0x8015F3E0; //0x20 entries

OSThread *thread3 = 0x80154670;
void *thread3_stack = 0x80156820;
OSMesgQueue *thread3_queue = 0x8014EFB8;

OSThread *thread4 = 0x8015AB80;
void *thread4_stack = 0x8015CD30;

OSThread *thread5 = 0x801589D0;
void *thread5_stack = 0x8015AB80;

OSMesgQueue *thread5_msgq1 = 0x8014EF88;
OSMesgQueue *thread5_msgq2 = 0x8014EF70;
OSMesg *thread5_msg1 = 0x8014F00C;
OSMesg *thread5_msg2 = 0x8014F008;

OSThread *thread9 = 0x80162790;
void *thread9_stack = 0x80162D40;

OSMesg *dma_mesg = 0x8014F098;
OSIoMesg *dma_iomesg = 0x8014F0A0;
OSMesgQueue *dma_msgqueue = 0x8014EF58;
void *somethingCopiedFromROM = 0x802BA370; //size 0x5810

OSViMode *vimode_ntsc = 0x800EA6C0;
OSViMode *vimode_not_ntsc = 0x800EAF80;

int mainThreadPrevTask; //0x800DC50C
int mainThreadTask; //0x800DC524


void render_loop_case_67() { //80002118
    u32 *c4a8 = 0x800DC4A8;
    something *c4b0 = 0x800DC4B0;

    if( *c4a8) return;
    if(!*c4b0) return;
    if( c4b0->u32_at_48) return;
    f_8000365C(0); //calls osGetTime()
    f_8000067C(1); //something involving SP tasks
}


void render_loop_case_66() { //80002168
    alwaysCountingFloat += *(double*)0x800EB640;
    (*(s16*)0x800DC58C)++;
    f_80001FAC();

    //at 0x800DC4A0: 8014EF50 8014EF48 803B70D8 803B70D8
    //latter two are often zero. thread queue?

    if(*0x800DC4AC) { //800021C0
        if(*0x800DC4A8) f_80001F70();
        else { //800021E0
            f_800036EC();
            f_8000067C(2);
        }
    }
    else if(!*0x800DC4A8) { //80002208
        something *p = *0x800DC4B0;
        if(p && p->u32_at_48 != 3) { //80002224
            f_8000365C(0);
            f_8000067C(1);
        }
    }

    //80002234
    something *v0 = *(0x800DC4A0);
    if(v0) { //80002248
        //osSendMesg(OSMesgQueue, OSMesg, s32 flag)
        osSendMesg(v0->OSMesgQueue_at_0, v0->OSMesg_at_4, 0);
    }

    //80002254
    something *v0 = *(0x800DC4A4);
    if(v0) { //80002268
        osSendMesg(v0->OSMesgQueue_at_0, v0->OSMesg_at_4, 0);
    }
}


void render_loop_case_65() { //80002284
    something *v0 = *(0x800DC4B0);
    OSMesgQueue *a0 = vo->OSMesgQueue_at_40;
    if(a0) {
        osSendMesg(a0, v0->OSMesg_at_44, 0);
    }
    f_8000365C(2);

    v0->u32_at_48 = 4;
    v0->u32_at_0 = 0;
}


void render_loop_case_64() { //800022DC
    something *v0 = 0x800DC4A8;
    a3 = *v0;
    *v0 = 0;
    t6 = a3->u32_at_48;
    if(t6 == 2) { //80002308
        if(!f_800CDD60(a3)) { //80002318
            a3->u32_at_48 = 3;
            f_8000365C(1);
        }
        f_800036EC();
        f_8000067C(2);
        return;
    }

    //80002344
    do {
        a3->u32_at_48 = 3;
    } while(a3->u32_at_0 != 2);
    f_800036EC();

    something *v0 = *(0x800DC4B0);
    if(v0) {
        v1 = v0->u32_at_48;
        if(v1 != 3) {
            if(v1 != 2) {
                f_8000365C(0);
            }
            //80002394
            f_8000067C(1);
        }
    }

    //OSTimer has an OSMesgQueue followed by an OSMesg
    //so this struct might be one containing an OSTimer?

    //800023A4
    *(u32*)0x800DC4AC = 0;
    OSMesgQueue *a0 = a3->OSMesgQueue_at_40;
    if(a0) {
        osSendMesg(a0, a3->OSMesg_at_44, 0);
        if(0) { //800023CC - unreachable branch
            f_8000365C(1);
        }
    }
}
