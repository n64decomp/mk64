void _start() { //80000400
    memset(0x800F6910, 0, 0xA0FC0);
    sp = 0x80152300;
    main();
    //presumably returns to an OS routine...
}


void main() { //80000484
    osInitialize();
    CreateThread(thread1, 1, thread1_main, NULL, thread1_stack, 0x64);
}


initGame() { //80001264  XXX verify what this does
    f_0x800010CC();
    heapEndPtr = heapEnd;

    SetSegmentBase(0, 0x80000000);
    f_802A7CF0(0x801978D0, 0x80242F00);
    f_80000BEC();
    osInvalDCache(somethingCopiedFromROM, 0x5810);

    //load something from ROM 0x724220 -> RAM somethingCopiedFromROM size 0x5810
    //osPiStartDma(msgbuf, prio, direction, devAddr, vAddr, nBytes, msgQueue)
    osPiStartDma(dma_iomesg, OS_MESG_PRI_NORMAL, OS_READ,
        0x724220, somethingCopiedFromROM, 0x5810, dma_msgqueue);
    osRecvMesg(dma_msgqueue, dma_mesg, OS_MESG_BLOCK);

    SetSegmentBase(2, f_802A7D70(0x12AAE0, 0x132B50));

    //load an MIO0 file from 0x132B50 and decompress to *0x8015F728
    u32 addr =  0x132B50; //this file apparently holds textures
    u32 size = (0x145470 - addr) & 0xFFFFFFF0;
    mio0File *file = heapEnd - size;

    osPiStartDma(dma_iomesg, OS_MESG_PRI_NORMAL, OS_READ,
        addr, file, size, dma_msgqueue);
    osRecvMesg(dma_msgqueue, dma_mesg, OS_MESG_BLOCK);

    //*0x8015F728 has value 0x80228940 when I look
    //that's ~0x655C0 from heapEnd, about 405K. maybe heapStart?
    u32 rawSize = (file->rawSize + 0xF) & 0xFFFFFFF0;
    mio0Decode(file, *0x8015F728);

    SetSegmentBase(0xD, *0x8015F728);
    *0x8015F728 = *0x8015F728 + rawSize;
    *0x8015F734 = *0x8015F728 + rawSize;
    //0x8015F734 has value 0x801CCAA0
}
