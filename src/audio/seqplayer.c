#include <ultra64.h>
#include <macros.h>

#include "audio/data.h"
#include "audio/internal.h"
#include "audio/seqplayer.h"
#include "audio/load.h"
#include "audio/heap.h"
#include "audio/playback.h"
#include "audio/external.h"

// sequence_channel_init
void sequence_channel_init(struct SequenceChannel *seqChannel) {
    s32 i;

    seqChannel->enabled = FALSE;
    seqChannel->finished = FALSE;
    seqChannel->stopScript = FALSE;
    seqChannel->stopSomething2 = FALSE;
    seqChannel->hasInstrument = FALSE;
    seqChannel->stereoHeadsetEffects = FALSE;
    seqChannel->transposition = 0;
    seqChannel->largeNotes = FALSE;
    seqChannel->bookOffset = 0;
    seqChannel->changes.as_u8 = 0xff;
    seqChannel->scriptState.depth = 0;
    seqChannel->newPan = 0x40;
    seqChannel->panChannelWeight = 0x80;
    seqChannel->noteUnused = NULL;
    seqChannel->reverbIndex = 0;
    seqChannel->reverbVol = 0;
    seqChannel->notePriority = NOTE_PRIORITY_DEFAULT;
    seqChannel->delay = 0;
    seqChannel->adsr.envelope = gDefaultEnvelope;
    seqChannel->adsr.releaseRate = 0x20;
    seqChannel->adsr.sustain = 0;
    seqChannel->vibratoRateTarget = 0x800;
    seqChannel->vibratoRateStart = 0x800;
    seqChannel->vibratoExtentTarget = 0;
    seqChannel->vibratoExtentStart = 0;
    seqChannel->vibratoRateChangeDelay = 0;
    seqChannel->vibratoExtentChangeDelay = 0;
    seqChannel->vibratoDelay = 0;
    seqChannel->volume = 1.0f;
    seqChannel->volumeScale = 1.0f;
    seqChannel->freqScale = 1.0f;
    for (i = 0; i < 8; i++) {
        seqChannel->soundScriptIO[i] = -1;
    }
    seqChannel->unused = FALSE;
    init_note_lists(&seqChannel->notePool);
}

s32 seq_channel_set_layer(struct SequenceChannel *seqChannel, s32 layerIndex) {
    struct SequenceChannelLayer *layer;

    if (seqChannel->layers[layerIndex] == NULL) {
        struct SequenceChannelLayer *layer;
        layer = audio_list_pop_back(&gLayerFreeList);
        seqChannel->layers[layerIndex] = layer;
        if (layer == NULL) {
            seqChannel->layers[layerIndex] = NULL;
            return -1;
        }
    } else {
        seq_channel_layer_note_decay(seqChannel->layers[layerIndex]);
    }

    layer = seqChannel->layers[layerIndex];
    layer->seqChannel = seqChannel;
    layer->adsr = seqChannel->adsr;
    layer->adsr.releaseRate = 0;
    layer->enabled = TRUE;
    layer->stopSomething = FALSE;
    layer->continuousNotes = FALSE;
    layer->finished = FALSE;
    layer->ignoreDrumPan = FALSE;
    layer->portamento.mode = 0;
    layer->scriptState.depth = 0;
    layer->status = SOUND_LOAD_STATUS_NOT_LOADED;
    layer->noteDuration = 0x80;
    layer->pan = 0x40;
    layer->transposition = 0;
    layer->delay = 0;
    layer->duration = 0;
    layer->delayUnused = 0;
    layer->note = NULL;
    layer->instrument = NULL;
    layer->freqScale = 1.0f;
    layer->velocitySquare = 0.0f;
    layer->instOrWave = 0xff;
    return 0;
}

void seq_channel_layer_disable(struct SequenceChannelLayer *layer) {
    if (layer != NULL) {
        seq_channel_layer_note_decay(layer);
        layer->enabled = FALSE;
        layer->finished = TRUE;
    }
}

void seq_channel_layer_free(struct SequenceChannel *seqChannel, s32 layerIndex) {
    struct SequenceChannelLayer *layer = seqChannel->layers[layerIndex];

    if (layer != NULL) {
        audio_list_push_back(&gLayerFreeList, &layer->listItem);
        seq_channel_layer_disable(layer);
        seqChannel->layers[layerIndex] = NULL;
    }
}

void sequence_channel_disable(struct SequenceChannel *seqChannel) {
    s32 i;
    for (i = 0; i < LAYERS_MAX; i++) {
        seq_channel_layer_free(seqChannel, i);
    }

    note_pool_clear(&seqChannel->notePool);
    seqChannel->enabled = FALSE;
    seqChannel->finished = TRUE;
}

struct SequenceChannel *allocate_sequence_channel(void) {
    s32 i;
    for (i = 0; i < SEQUENCE_CHANNELS; i++) {
        if (gSequenceChannels[i].seqPlayer == NULL) {
            return &gSequenceChannels[i];
        }
    }
    return &gSequenceChannelNone;
}

void sequence_player_init_channels(struct SequencePlayer *seqPlayer, u16 channelBits) {
    struct SequenceChannel *seqChannel;
    s32 i;

    for (i = 0; i < CHANNELS_MAX; i++) {
        if (channelBits & 1) {
            seqChannel = seqPlayer->channels[i];
            if (IS_SEQUENCE_CHANNEL_VALID(seqChannel) == TRUE && seqChannel->seqPlayer == seqPlayer) {
                sequence_channel_disable(seqChannel);
                seqChannel->seqPlayer = NULL;
            }
            seqChannel = allocate_sequence_channel();
            if (IS_SEQUENCE_CHANNEL_VALID(seqChannel) == FALSE) {
                eu_stubbed_printf_0("Audio:Track:Warning: No Free Notetrack\n");
                gAudioErrorFlags = i + 0x10000;
                seqPlayer->channels[i] = seqChannel;
            } else {
                sequence_channel_init(seqChannel);
                seqPlayer->channels[i] = seqChannel;
                seqChannel->seqPlayer = seqPlayer;
                seqChannel->bankId = seqPlayer->defaultBank[0];
                seqChannel->muteBehavior = seqPlayer->muteBehavior;
                seqChannel->noteAllocPolicy = seqPlayer->noteAllocPolicy;
            }
        }
        channelBits = channelBits >> 1;
    }
}

void sequence_player_disable_channels(struct SequencePlayer *seqPlayer, u16 channelBits) {
    struct SequenceChannel *seqChannel;
    s32 i;

    eu_stubbed_printf_0("SUBTRACK DIM\n");
    for (i = 0; i < CHANNELS_MAX; i++) {
        if (channelBits & 1) {
            seqChannel = seqPlayer->channels[i];
            if (IS_SEQUENCE_CHANNEL_VALID(seqChannel) == TRUE) {
                if (seqChannel->seqPlayer == seqPlayer) {
                    sequence_channel_disable(seqChannel);
                    seqChannel->seqPlayer = NULL;
                }
                else {
                    stubbed_printf("Audio:Track: Warning SUBTRACK PARENT CHANGED\n");
                }
                seqPlayer->channels[i] = &gSequenceChannelNone;
            }
        }
        channelBits = channelBits >> 1;
    }
}

void sequence_channel_enable(struct SequencePlayer *seqPlayer, u8 channelIndex, void *script) {
    struct SequenceChannel *seqChannel = seqPlayer->channels[channelIndex];
    s32 i;
    if (IS_SEQUENCE_CHANNEL_VALID(seqChannel) == FALSE) {
        stubbed_printf("SEQID %d,BANKID %d\n", seqPlayer->seqId, seqPlayer->defaultBank[0]);
        stubbed_printf("ERR:SUBTRACK %d NOT ALLOCATED\n", channelIndex);
    } else {
        seqChannel->enabled = TRUE;
        seqChannel->finished = FALSE;
        seqChannel->scriptState.depth = 0;
        seqChannel->scriptState.pc = script;
        seqChannel->delay = 0;
        for (i = 0; i < LAYERS_MAX; i++) {
            if (seqChannel->layers[i] != NULL) {
                seq_channel_layer_free(seqChannel, i);
            }
        }
    }
}

void sequence_player_disable(struct SequencePlayer *seqPlayer) {
    sequence_player_disable_channels(seqPlayer, 0xffff);
    note_pool_clear(&seqPlayer->notePool);
    seqPlayer->finished = TRUE;
    seqPlayer->enabled = FALSE;

    if (IS_SEQ_LOAD_COMPLETE(seqPlayer->seqId) && gSeqLoadStatus[seqPlayer->seqId] != 5) {
        gSeqLoadStatus[seqPlayer->seqId] = SOUND_LOAD_STATUS_DISCARDABLE;
    }

    if (IS_BANK_LOAD_COMPLETE(seqPlayer->defaultBank[0]) && gBankLoadStatus[seqPlayer->defaultBank[0]] != 5) {
        gBankLoadStatus[seqPlayer->defaultBank[0]] = 4;
    }

    // (Note that if this is called from alloc_bank_or_seq, the side will get swapped
    // later in that function. Thus, we signal that we want to load into the slot
    // of the bank that we no longer need.)
    if (seqPlayer->defaultBank[0] == gBankLoadedPool.temporary.entries[0].id) {
        gBankLoadedPool.temporary.nextSide = 1;
    } else if (seqPlayer->defaultBank[0] == gBankLoadedPool.temporary.entries[1].id) {
        gBankLoadedPool.temporary.nextSide = 0;
    }
}

void audio_list_push_back(struct AudioListItem *list, struct AudioListItem *item) {
    if (item->prev != NULL) {
        eu_stubbed_printf_0("Error:Same List Add\n");
    } else {
        list->prev->next = item;
        item->prev = list->prev;
        item->next = list;
        list->prev = item;
        list->u.count++;
        item->pool = list->pool;
    }
}

void *audio_list_pop_back(struct AudioListItem *list) {
    struct AudioListItem *item = list->prev;
    if (item == list) {
        return NULL;
    }
    item->prev->next = list;
    list->prev = item->prev;
    item->prev = NULL;
    list->u.count--;
    return item->u.value;
}

void init_layer_freelist(void) {
    s32 i;

    gLayerFreeList.prev = &gLayerFreeList;
    gLayerFreeList.next = &gLayerFreeList;
    gLayerFreeList.u.count = 0;
    gLayerFreeList.pool = NULL;

    for (i = 0; i < ARRAY_COUNT(gSequenceLayers); i++) {
        gSequenceLayers[i].listItem.u.value = &gSequenceLayers[i];
        gSequenceLayers[i].listItem.prev = NULL;
        audio_list_push_back(&gLayerFreeList, &gSequenceLayers[i].listItem);
    }
}

u8 m64_read_u8(struct M64ScriptState *state) {
    return *(state->pc++);
}

s16 m64_read_s16(struct M64ScriptState *state) {
    s16 ret = *(state->pc++) << 8;
    ret = *(state->pc++) | ret;
    return ret;
}

u16 m64_read_compressed_u16(struct M64ScriptState *state) {
    u16 ret = *(state->pc++);
    if (ret & 0x80) {
        ret = (ret << 8) & 0x7f00;
        ret = *(state->pc++) | ret;
    }
    return ret;
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-14-2023
extern s16 D_803B70B4;

void seq_channel_layer_process_script(struct SequenceChannelLayer *layer) {
    struct SequenceChannel *sp68;
    s32 sp44;
    f32 temp_f0;
    f32 temp_f2;
    f32 var_f0;
    f32 var_f0_2;
    f32 var_f4;
    s16 temp_v0_11;
    s16 temp_v0_4;
    s16 temp_v0_6;
    s16 temp_v1;
    s32 temp_a1;
    s32 temp_s2;
    s32 temp_t4_2;
    s32 temp_t5;
    s32 temp_t6;
    s32 temp_t8;
    s32 temp_v0_17;
    s32 temp_v0_19;
    s32 temp_v0_3;
    s32 temp_v0_8;
    s32 temp_v1_12;
    s32 temp_v1_6;
    s32 temp_v1_7;
    s32 temp_v1_8;
    s32 var_a2;
    s32 var_s2;
    s32 var_s2_2;
    s32 var_s2_3;
    struct AudioBankSound *temp_v1_13;
    struct Drum *temp_v0_15;
    struct Instrument *var_a0_2;
    struct M64ScriptState *temp_s0;
    struct Note *temp_a0_4;
    struct Note *temp_a0_5;
    struct Portamento *temp_v0_18;
    struct SequenceChannel *temp_v0_2;
    struct SequencePlayer *temp_s4;
    u16 temp_v0_10;
    u16 temp_v0_12;
    u16 temp_v0_13;
    u16 temp_v0_14;
    u16 temp_v0_7;
    u16 var_a0;
    u16 var_s3;
    u32 temp_v0;
    u32 temp_v0_20;
    u8 *temp_v1_10;
    u8 *temp_v1_11;
    u8 *temp_v1_4;
    u8 *temp_v1_5;
    u8 *temp_v1_9;
    u8 temp_a0;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_t4;
    u8 temp_v0_16;
    u8 temp_v0_9;
    u8 temp_v1_2;
    u8 temp_v1_3;
    u8 var_a2_2;
    u8 var_v0;
    void *temp_v0_5;

    sp44 = 1;
    temp_v0 = layer->unk0;
    if ((temp_v0 >> 0x1F) != 0) {
        temp_v1 = layer->delay;
        if (temp_v1 >= 2) {
            layer->delay = temp_v1 - 1;
            if (!(temp_v0 & 0x20000000) && (layer->duration >= layer->delay)) {
                seq_channel_layer_note_decay(layer);
                layer->unk0 = (s8) ((u8) layer->unk0 | 0x20);
            }
        } else {
            if (!(temp_v0 & 0x10000000)) {
                seq_channel_layer_note_decay(layer);
            }
            temp_t8 = layer->portamento.mode & ~0x80;
            if ((temp_t8 == 1) || (temp_t8 == 2)) {
                layer->portamento.mode = 0;
            }
            temp_v0_2 = layer->seqChannel;
            temp_s0 = &layer->scriptState;
            temp_s4 = temp_v0_2->seqPlayer;
            layer->unk0 = (s8) ((u8) layer->unk0 | 4);
            var_s3 = sp4A;
            sp68 = temp_v0_2;
loop_11:
            temp_v0_3 = m64_read_u8(temp_s0);
            temp_s2 = temp_v0_3 & 0xFF;
            if (temp_v0_3 >= 0xC1) {
                switch (temp_v0_3) {                /* switch 5; irregular */
                case 0xFF:                          /* switch 5 */
                    temp_v1_2 = temp_s0->depth;
                    if (temp_v1_2 == 0) {
                        seq_channel_layer_disable(layer);
                        return;
                    }
                    temp_t4 = (temp_v1_2 - 1) & 0xFF;
                    temp_s0->depth = temp_t4;
                    temp_s0->pc = temp_s0->stack[temp_t4];
                    goto loop_11;
                case 0xFC:                          /* switch 5 */
                    temp_v0_4 = m64_read_s16(temp_s0);
                    temp_t5 = temp_v0_4 & 0xFFFF;
                    temp_s0->stack[temp_s0->depth] = temp_s0->pc;
                    var_s3 = temp_v0_4 & 0xFFFF;
                    temp_s0->depth += 1;
                    temp_s0->pc = &temp_s4->seqData[temp_t5];
                    goto loop_11;
                case 0xF8:                          /* switch 5 */
                    temp_s0->remLoopIters[temp_s0->depth] = m64_read_u8(temp_s0);
                    temp_s0->stack[temp_s0->depth] = temp_s0->pc;
                    temp_s0->depth += 1;
                    goto loop_11;
                case 0xF7:                          /* switch 5 */
                    temp_v0_5 = temp_s0 + temp_s0->depth;
                    temp_v0_5->unk13 = (u8) (temp_v0_5->unk13 - 1);
                    temp_v1_3 = temp_s0->depth;
                    if ((temp_s0 + temp_v1_3)->unk13 != 0) {
                        temp_s0->pc = *(temp_s0 + (temp_v1_3 * 4));
                    } else {
                        temp_s0->depth = temp_v1_3 - 1;
                    }
                    goto loop_11;
                case 0xFB:                          /* switch 5 */
                    temp_v0_6 = m64_read_s16(temp_s0);
                    var_s3 = temp_v0_6 & 0xFFFF;
                    temp_s0->pc = &temp_s4->seqData[temp_v0_6 & 0xFFFF];
                    goto loop_11;
                case 0xF4:                          /* switch 5 */
                    temp_s0->pc = &temp_s0->pc[m64_read_u8(temp_s0)];
                    goto loop_11;
                case 0xC1:                          /* switch 5 */
                case 0xCA:                          /* switch 5 */
                    temp_v1_4 = temp_s0->pc;
                    temp_a0 = *temp_v1_4;
                    temp_s0->pc = temp_v1_4 + 1;
                    if (temp_v0_3 == 0xC1) {
                        layer->velocitySquare = (f32) (temp_a0 * temp_a0) / 16129.0f;
                    } else {
                        layer->pan = temp_a0;
                    }
                    goto loop_11;
                case 0xC2:                          /* switch 5 */
                case 0xC9:                          /* switch 5 */
                    temp_v1_5 = temp_s0->pc;
                    temp_a0_2 = *temp_v1_5;
                    temp_s0->pc = temp_v1_5 + 1;
                    if (temp_v0_3 == 0xC9) {
                        layer->noteDuration = temp_a0_2;
                    } else {
                        layer->transposition = (s16) temp_a0_2;
                    }
                    goto loop_11;
                case 0xC4:                          /* switch 5 */
                case 0xC5:                          /* switch 5 */
                    if (temp_v0_3 == 0xC4) {
                        layer->unk0 = (s8) ((u8) layer->unk0 | 0x10);
                    } else {
                        layer->unk0 = (s8) ((u8) layer->unk0 & 0xFFEF);
                    }
                    seq_channel_layer_note_decay(layer);
                    goto loop_11;
                case 0xC3:                          /* switch 5 */
                    temp_v0_7 = m64_read_compressed_u16(temp_s0);
                    var_s3 = temp_v0_7 & 0xFFFF;
                    layer->shortNoteDefaultPlayPercentage = (s16) temp_v0_7;
                    goto loop_11;
                case 0xC6:                          /* switch 5 */
                    temp_v0_8 = m64_read_u8(temp_s0);
                    if (temp_v0_8 >= 0x7F) {
                        if (temp_v0_8 == 0x7F) {
                            layer->instOrWave = 0;
                        } else {
                            layer->instOrWave = (u8) temp_v0_8;
                            layer->instrument = NULL;
                        }
                        if (temp_v0_8 == 0xFF) {
                            layer->adsr.releaseRate = 0;
                        }
                    } else {
                        temp_v0_9 = get_instrument(sp68, temp_v0_8 & 0xFF & 0xFF, &layer->instrument, &layer->adsr);
                        layer->instOrWave = temp_v0_9;
                        if (temp_v0_9 == 0) {
                            layer->instOrWave = 0xFF;
                        }
                    }
                    goto loop_11;
                case 0xC7:                          /* switch 5 */
                    layer->portamento.mode = m64_read_u8(temp_s0);
                    temp_t6 = (m64_read_u8(temp_s0) + sp68->transposition + layer->transposition + temp_s4->transposition) & 0xFF;
                    var_s2 = temp_t6;
                    if (temp_t6 >= 0x80) {
                        var_s2 = 0;
                    }
                    layer->portamentoTargetNote = (u8) var_s2;
                    if (layer->portamento.mode & 0x80) {
                        layer->portamentoTime = (u16) *temp_s0->pc;
                        temp_s0->pc += 1;
                    } else {
                        temp_v0_10 = m64_read_compressed_u16(temp_s0);
                        var_s3 = temp_v0_10 & 0xFFFF;
                        layer->portamentoTime = temp_v0_10;
                    }
                    goto loop_11;
                case 0xC8:                          /* switch 5 */
                    layer->portamento.mode = 0;
                    goto loop_11;
                case 0xCB:                          /* switch 5 */
                    temp_v0_11 = m64_read_s16(temp_s0);
                    var_s3 = temp_v0_11 & 0xFFFF;
                    layer->adsr.envelope = (struct AdsrEnvelope *) &temp_s4->seqData[temp_v0_11 & 0xFFFF];
                    layer->adsr.releaseRate = m64_read_u8(temp_s0);
                    goto loop_11;
                case 0xCC:                          /* switch 5 */
                    layer->unk0 = (s8) ((u8) layer->unk0 | 2);
                    goto loop_11;
                default:                            /* switch 5 */
                    temp_v1_6 = temp_v0_3 & 0xF0;
                    switch (temp_v1_6) {            /* switch 6; irregular */
                    case 0xD0:                      /* switch 6 */
                        var_s3 = (u16) temp_s4->shortNoteVelocityTable[temp_v0_3 & 0xF];
                        layer->velocitySquare = (f32) (var_s3 * var_s3) / 16129.0f;
                        break;
                    case 0xE0:                      /* switch 6 */
                        layer->noteDuration = temp_s4->shortNoteDurationTable[temp_v0_3 & 0xF];
                        break;
                    }
                    goto loop_11;
                }
            } else {
                temp_v1_7 = temp_v0_3 & 0xC0;
                if (temp_v0_3 == 0xC0) {
                    layer->delay = m64_read_compressed_u16(temp_s0);
                    layer->unk0 = (s8) ((u8) layer->unk0 | 0x20);
                    goto block_119;
                }
                layer->unk0 = (s8) ((u8) layer->unk0 & 0xFFDF);
                if (((u32) (sp68->unk0 << 6) >> 0x1F) == 1) {
                    temp_v1_8 = temp_v0_3 & 0xC0;
                    if (temp_v1_8 != 0) {
                        if (temp_v1_8 != 0x40) {
                            var_a0 = var_s3;
                            if (temp_v1_8 != 0x80) {
                                var_a2 = sp34;
                            } else {
                                temp_v1_9 = temp_s0->pc;
                                var_a2 = (s32) *temp_v1_9;
                                temp_s0->pc = temp_v1_9 + 1;
                                var_a0 = (u16) layer->playPercentage;
                                layer->noteDuration = temp_v1_9[1];
                                temp_s0->pc += 1;
                            }
                        } else {
                            temp_v0_12 = m64_read_compressed_u16(temp_s0);
                            temp_v1_10 = temp_s0->pc;
                            var_a0 = temp_v0_12 & 0xFFFF;
                            var_a2 = (s32) *temp_v1_10;
                            temp_s0->pc = temp_v1_10 + 1;
                            layer->noteDuration = 0;
                            layer->playPercentage = (s16) temp_v0_12;
                        }
                    } else {
                        temp_v0_13 = m64_read_compressed_u16(temp_s0);
                        temp_v1_11 = temp_s0->pc;
                        var_a0 = temp_v0_13 & 0xFFFF;
                        var_a2 = (s32) *temp_v1_11;
                        temp_s0->pc = temp_v1_11 + 1;
                        layer->noteDuration = temp_v1_11[1];
                        temp_s0->pc += 1;
                        layer->playPercentage = (s16) temp_v0_13;
                    }
                    if ((var_a2 >= 0x80) || (var_a2 < 0)) {
                        var_a2 = 0x0000007F;
                    }
                    temp_f0 = (f32) var_a2;
                    var_s2_2 = (temp_s2 - (temp_s2 & 0xC0)) & 0xFF;
                    layer->velocitySquare = (temp_f0 * temp_f0) / 16129.0f;
                } else {
                    switch (temp_v1_7) {            /* switch 4; irregular */
                    case 0x0:                       /* switch 4 */
                        temp_v0_14 = m64_read_compressed_u16(temp_s0);
                        var_s3 = temp_v0_14 & 0xFFFF;
                        layer->playPercentage = (s16) temp_v0_14;
                        break;
                    case 0x40:                      /* switch 4 */
                        var_s3 = (u16) layer->shortNoteDefaultPlayPercentage;
                        break;
                    case 0x80:                      /* switch 4 */
                        var_s3 = (u16) layer->playPercentage;
                        break;
                    }
                    var_a0 = var_s3;
                    var_s2_2 = (temp_s2 - (temp_s2 & 0xC0)) & 0xFF;
                }
                layer->delay = (s16) var_a0;
                layer->duration = (s16) ((s32) (layer->noteDuration * var_a0) >> 8);
                if (((temp_s4->unk0 & 0x20000000) && (sp68->muteBehavior & 0x40)) || (temp_v1_12 = sp68->unk0, (temp_v1_12 & 0x10000000))) {
                    layer->unk0 = (s8) ((u8) layer->unk0 | 0x20);
                    goto block_119;
                }
                temp_a0_3 = layer->instOrWave;
                var_v0 = temp_a0_3;
                if (temp_a0_3 == 0xFF) {
                    if (temp_v1_12 & 0x08000000) {
                        var_v0 = (u8) sp68->instOrWave;
                        goto block_88;
                    }
                } else {
block_88:
                    if (var_v0 == 0) {
                        temp_v0_15 = get_drum((s32) sp68->bankId, (var_s2_2 + sp68->transposition + layer->transposition) & 0xFF);
                        temp_v1_13 = temp_v0_15 + 4;
                        if (temp_v0_15 == NULL) {
                            layer->unk0 = (s8) ((u8) layer->unk0 | 0x20);
                            layer->delayUnused = layer->delay;
                            return;
                        }
                        layer->adsr.envelope = temp_v0_15->envelope;
                        layer->adsr.releaseRate = temp_v0_15->releaseRate;
                        if (!(layer->unk0 & 0x02000000)) {
                            layer->pan = temp_v0_15->pan;
                        }
                        layer->sound = temp_v1_13;
                        var_f4 = temp_v1_13->tuning;
                        goto block_117;
                    }
                    temp_a1 = (var_s2_2 + temp_s4->transposition + sp68->transposition + layer->transposition) & 0xFF;
                    if (temp_a1 >= 0x80) {
                        layer->unk0 = (s8) ((u8) layer->unk0 | 0x20);
                    } else {
                        if (temp_a0_3 == 0xFF) {
                            var_a0_2 = sp68->instrument;
                        } else {
                            var_a0_2 = layer->instrument;
                        }
                        if (layer->portamento.mode != 0) {
                            temp_v0_16 = layer->portamentoTargetNote;
                            var_a2_2 = temp_v0_16;
                            if ((s32) temp_v0_16 < temp_a1) {
                                var_a2_2 = (u8) temp_a1;
                            }
                            if (var_a0_2 != NULL) {
                                temp_v0_17 = instrument_get_audio_bank_sound(var_a0_2, (s32) var_a2_2);
                                sp44 = temp_v0_17 == (s32) layer->sound;
                                layer->sound = (struct AudioBankSound *) temp_v0_17;
                                var_f0 = temp_v0_17->unk4;
                            } else {
                                var_f0 = 1.0f;
                                layer->sound = NULL;
                            }
                            temp_f2 = gNoteFrequencies[temp_a1] * var_f0;
                            temp_t4_2 = layer->portamento.mode & ~0x80;
                            switch (temp_t4_2) {    /* switch 3 */
                            case 1:                 /* switch 3 */
                            case 3:                 /* switch 3 */
                            case 5:                 /* switch 3 */
                                var_f0_2 = gNoteFrequencies[layer->portamentoTargetNote] * var_f0;
                                break;
                            default:                /* switch 3 */
                            case 2:                 /* switch 3 */
                            case 4:                 /* switch 3 */
                                var_f0_2 = temp_f2;
                                break;
                            }
                            temp_v0_18 = &layer->portamento;
                            temp_v0_18->extent = (temp_f2 / var_f0_2) - 1.0f;
                            if (layer->portamento.mode & 0x80) {
                                temp_v0_18->speed = ((f32) temp_s4->tempo * 32512.0f) / ((f32) layer->delay * (f32) D_803B70B4 * (f32) layer->portamentoTime);
                            } else {
                                temp_v0_18->speed = 127.0f / (f32) layer->portamentoTime;
                            }
                            temp_v0_18->cur = 0.0f;
                            layer->freqScale = var_f0_2;
                            if ((layer->portamento.mode & ~0x80) == 5) {
                                layer->portamentoTargetNote = (u8) temp_a1;
                            }
                        } else if (var_a0_2 != NULL) {
                            temp_v0_19 = instrument_get_audio_bank_sound(var_a0_2, temp_a1);
                            sp44 = temp_v0_19 == (s32) layer->sound;
                            layer->sound = (struct AudioBankSound *) temp_v0_19;
                            layer->freqScale = gNoteFrequencies[temp_a1] * temp_v0_19->unk4;
                        } else {
                            layer->sound = NULL;
                            var_f4 = gNoteFrequencies[temp_a1];
block_117:
                            layer->freqScale = var_f4;
                        }
                    }
                    layer->delayUnused = layer->delay;
block_119:
                    temp_v0_20 = layer->unk0;
                    if (((u32) (temp_v0_20 * 4) >> 0x1F) == 1) {
                        if ((layer->note != NULL) || (temp_v0_20 & 0x10000000)) {
                            seq_channel_layer_note_decay(layer);
                        }
                    } else {
                        var_s2_3 = 0;
                        if (!(temp_v0_20 & 0x10000000)) {
                            var_s2_3 = 1;
                        } else {
                            temp_a0_4 = layer->note;
                            if ((temp_a0_4 == NULL) || (layer->status == 0)) {
                                var_s2_3 = 1;
                            } else if (sp44 == 0) {
                                seq_channel_layer_note_decay(layer);
                                var_s2_3 = 1;
                            } else if (layer != temp_a0_4->parentLayer) {
                                var_s2_3 = 1;
                            } else if (layer->sound == NULL) {
                                init_synthetic_wave(temp_a0_4, layer);
                            }
                        }
                        if (var_s2_3 != 0) {
                            layer->note = alloc_note(layer);
                        }
                        temp_a0_5 = layer->note;
                        if ((temp_a0_5 != NULL) && (layer == temp_a0_5->parentLayer)) {
                            note_vibrato_init(temp_a0_5);
                        }
                    }
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/seqplayer/seq_channel_layer_process_script.s")
#endif

u8 get_instrument(struct SequenceChannel *seqChannel, u8 instId, struct Instrument **instOut, struct AdsrSettings *adsr) {
    struct Instrument *inst;
    inst = get_instrument_inner(seqChannel->bankId, instId);
    if (inst == NULL) {
        *instOut = NULL;
        return 0;
    }
    adsr->envelope = inst->envelope;
    adsr->releaseRate = inst->releaseRate;
    *instOut = inst;
    instId++;
    return instId;
}

void set_instrument(struct SequenceChannel *seqChannel, u8 instId) {
    if (instId >= 0x80) {
        seqChannel->instOrWave = instId;
        seqChannel->instrument = NULL;
    } else if (instId == 0x7f) {
        seqChannel->instOrWave = 0;
        seqChannel->instrument = (struct Instrument *) 1;
    } else {
        if ((seqChannel->instOrWave = get_instrument(seqChannel, instId, &seqChannel->instrument, &seqChannel->adsr)) == 0)
        {
            seqChannel->hasInstrument = FALSE;
            return;
        }
    }
    seqChannel->hasInstrument = TRUE;
}

void sequence_channel_set_volume(struct SequenceChannel *seqChannel, u8 volume) {
    seqChannel->volume = FLOAT_CAST(volume) / US_FLOAT(127.0);
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-14-2023
void func_800BFD90(struct SequenceChannel *seqChannel) {
    u8 sp55;
    s16 sp52;
    s32 sp34;
    f32 temp_f18;
    f32 temp_f6;
    f32 temp_f8;
    s16 temp_v0_4;
    s16 temp_v0_8;
    s32 temp_a0_4;
    s32 temp_a1;
    s32 temp_a1_2;
    s32 temp_s0;
    s32 temp_s0_5;
    s32 temp_t3;
    s32 temp_v0_2;
    s32 temp_v1_7;
    s32 var_s0;
    s32 var_s0_2;
    s8 var_s3;
    struct M64ScriptState *temp_s1;
    struct NotePool *temp_s0_2;
    struct SequenceChannel *var_s1;
    struct SequenceChannel *var_s1_2;
    struct SequenceChannelLayer *temp_a0;
    struct SequenceChannelLayer *temp_a0_5;
    struct SequenceChannelLayer *temp_v1_6;
    struct SequencePlayer *temp_s4;
    u16 temp_a3;
    u16 temp_a3_2;
    u16 temp_t5;
    u16 temp_v1;
    u16 temp_v1_3;
    u16 var_v0;
    u32 temp_t6;
    u32 temp_v0;
    u8 *temp_v0_6;
    u8 *temp_v1_5;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_s0_3;
    u8 temp_s0_4;
    u8 temp_t0;
    u8 temp_t7;
    u8 temp_v0_5;
    u8 temp_v0_7;
    void *temp_v0_3;
    void *temp_v1_2;
    void *temp_v1_4;
    void *temp_v1_8;

    temp_v0 = seqChannel->unk0;
    if ((temp_v0 >> 0x1F) != 0) {
        var_s0 = 0;
        if (temp_v0 & 0x20000000) {
            var_s1 = seqChannel;
            do {
                temp_a0 = var_s1->layers[0];
                if (temp_a0 != NULL) {
                    seq_channel_layer_process_script(temp_a0);
                }
                var_s0 += 4;
                var_s1 += 4;
            } while (var_s0 != 0x10);
            return;
        }
        temp_s4 = seqChannel->seqPlayer;
        if (!(temp_s4->unk0 & 0x20000000) || !(seqChannel->muteBehavior & 0x80)) {
            temp_v1 = seqChannel->delay;
            temp_s1 = &seqChannel->scriptState;
            var_v0 = temp_v1;
            if (temp_v1 != 0) {
                temp_t5 = temp_v1 - 1;
                seqChannel->delay = temp_t5;
                var_v0 = temp_t5 & 0xFFFF;
            }
            var_s3 = sp4B;
            if (var_v0 == 0) {
            case 0xCD:                              /* switch 3 */
            case 0xCE:                              /* switch 3 */
            case 0xCF:                              /* switch 3 */
            case 0xD5:                              /* switch 3 */
            case 0xD6:                              /* switch 3 */
            case 0xED:                              /* switch 3 */
            case 0xEE:                              /* switch 3 */
            default:                                /* switch 2 */
loop_12:
                temp_v0_2 = m64_read_u8(temp_s1);
                temp_s0 = temp_v0_2 & 0xFF;
                switch (temp_v0_2) {                /* switch 3; irregular */
                case 0xFF:                          /* switch 3 */
                    temp_a0_2 = temp_s1->depth;
                    if (temp_a0_2 == 0) {
                        sequence_channel_disable(seqChannel);
                    } else {
                        temp_t7 = (temp_a0_2 - 1) & 0xFF;
                        temp_s1->depth = temp_t7;
                        temp_s1->pc = temp_s1->stack[temp_t7];
                        goto loop_12;
                    }
                    break;
                case 0xFD:                          /* switch 3 */
                    seqChannel->delay = m64_read_compressed_u16(temp_s1);
                    break;
                case 0xEA:                          /* switch 3 */
                    seqChannel->unk0 = (s8) ((u8) seqChannel->unk0 | 0x20);
                    break;
                case 0xFC:                          /* switch 3 */
                    temp_t3 = m64_read_s16(temp_s1) & 0xFFFF;
                    temp_s1->stack[temp_s1->depth] = temp_s1->pc;
                    temp_s1->depth += 1;
                    temp_s1->pc = &temp_s4->seqData[temp_t3];
                    goto loop_12;
                case 0xF8:                          /* switch 3 */
                    temp_s1->remLoopIters[temp_s1->depth] = m64_read_u8(temp_s1);
                    temp_s1->stack[temp_s1->depth] = temp_s1->pc;
                    temp_s1->depth += 1;
                    goto loop_12;
                case 0xF7:                          /* switch 3 */
                    temp_v0_3 = temp_s1 + temp_s1->depth;
                    temp_v0_3->unk13 = (u8) (temp_v0_3->unk13 - 1);
                    temp_a0_3 = temp_s1->depth;
                    if ((temp_s1 + temp_a0_3)->unk13 != 0) {
                        temp_s1->pc = *(temp_s1 + (temp_a0_3 * 4));
                    } else {
                        temp_s1->depth = temp_a0_3 - 1;
                    }
                    goto loop_12;
                case 0xF6:                          /* switch 3 */
                    temp_s1->depth -= 1;
                    goto loop_12;
                case 0xF5:                          /* switch 3 */
                case 0xF9:                          /* switch 3 */
                case 0xFA:                          /* switch 3 */
                case 0xFB:                          /* switch 3 */
                    temp_v0_4 = m64_read_s16(temp_s1);
                    if (((temp_s0 != 0xFA) || (var_s3 == 0)) && ((temp_s0 != 0xF9) || (var_s3 < 0)) && ((temp_s0 != 0xF5) || (var_s3 >= 0))) {
                        temp_s1->pc = &temp_s4->seqData[temp_v0_4 & 0xFFFF];
                    }
                    goto loop_12;
                case 0xF2:                          /* switch 3 */
                case 0xF3:                          /* switch 3 */
                case 0xF4:                          /* switch 3 */
                    temp_v0_5 = m64_read_u8(temp_s1);
                    if (((temp_s0 != 0xF3) || (var_s3 == 0)) && ((temp_s0 != 0xF2) || (var_s3 < 0))) {
                        temp_s1->pc = &temp_s1->pc[(s8) temp_v0_5];
                    }
                    goto loop_12;
                case 0xF1:                          /* switch 3 */
                    temp_s0_2 = &seqChannel->notePool;
                    note_pool_clear(temp_s0_2);
                    note_pool_fill(temp_s0_2, m64_read_u8(temp_s1));
                    goto loop_12;
                case 0xF0:                          /* switch 3 */
                    note_pool_clear(&seqChannel->notePool);
                    goto loop_12;
                case 0xC2:                          /* switch 3 */
                    seqChannel->dynTable = (u8 (*)[][2]) &temp_s4->seqData[m64_read_s16(temp_s1) & 0xFFFF];
                    goto loop_12;
                case 0xC5:                          /* switch 3 */
                    if (var_s3 != -1) {
                        temp_v1_2 = seqChannel->dynTable + (var_s3 * 2);
                        seqChannel->dynTable = (u8 (*)[][2]) &temp_s4->seqData[(temp_v1_2->unk1 + (temp_v1_2->unk0 << 8)) & 0xFFFF];
                    }
                    goto loop_12;
                case 0xEB:                          /* switch 3 */
                    temp_a3 = *(gAlBankSets + (temp_s4->seqId * 2));
                    temp_s0_3 = gAlBankSets[(temp_a3 + gAlBankSets[temp_a3]) - m64_read_u8(temp_s1)];
                    if (get_bank_or_seq(1, 2, (s32) temp_s0_3) != NULL) {
                        seqChannel->bankId = temp_s0_3;
                    }
                    /* fallthrough */
                case 0xC1:                          /* switch 3 */
                    set_instrument(seqChannel, m64_read_u8(temp_s1) & 0xFF);
                    goto loop_12;
                case 0xC3:                          /* switch 3 */
                    seqChannel->unk0 = (s8) ((u8) seqChannel->unk0 & 0xFFFD);
                    goto loop_12;
                case 0xC4:                          /* switch 3 */
                    seqChannel->unk0 = (s8) ((u8) seqChannel->unk0 | 2);
                    goto loop_12;
                case 0xDF:                          /* switch 3 */
                    sequence_channel_set_volume(seqChannel, m64_read_u8(temp_s1) & 0xFF);
                    seqChannel->changes.as_u8 |= 0x40;
                    goto loop_12;
                case 0xE0:                          /* switch 3 */
                    temp_f6 = (f32) m64_read_u8(temp_s1);
                    seqChannel->changes.as_u8 |= 0x40;
                    seqChannel->volumeScale = temp_f6 * 0.0078125f;
                    goto loop_12;
                case 0xDE:                          /* switch 3 */
                    temp_f18 = (f32) (m64_read_s16(temp_s1) & 0xFFFF);
                    seqChannel->changes.as_u8 |= 0x80;
                    seqChannel->freqScale = temp_f18 / 32768.0f;
                    goto loop_12;
                case 0xD3:                          /* switch 3 */
                    temp_f8 = gPitchBendFrequencyScale[(m64_read_u8(temp_s1) + 0x7F) & 0xFF];
                    seqChannel->changes.as_u8 |= 0x80;
                    seqChannel->freqScale = temp_f8;
                    goto loop_12;
                case 0xDD:                          /* switch 3 */
                    seqChannel->newPan = m64_read_u8(temp_s1);
                    seqChannel->changes.as_u8 |= 0x20;
                    goto loop_12;
                case 0xDC:                          /* switch 3 */
                    seqChannel->panChannelWeight = m64_read_u8(temp_s1);
                    seqChannel->changes.as_u8 |= 0x20;
                    goto loop_12;
                case 0xDB:                          /* switch 3 */
                    temp_v0_6 = temp_s1->pc;
                    temp_s1->pc = temp_v0_6 + 1;
                    seqChannel->transposition = (s16) (s8) *temp_v0_6;
                    goto loop_12;
                case 0xDA:                          /* switch 3 */
                    seqChannel->adsr.envelope = (struct AdsrEnvelope *) &temp_s4->seqData[m64_read_s16(temp_s1) & 0xFFFF];
                    goto loop_12;
                case 0xD9:                          /* switch 3 */
                    seqChannel->adsr.releaseRate = m64_read_u8(temp_s1);
                    goto loop_12;
                case 0xD8:                          /* switch 3 */
                    seqChannel->vibratoExtentTarget = m64_read_u8(temp_s1) * 8;
                    seqChannel->vibratoExtentStart = 0;
                    seqChannel->vibratoExtentChangeDelay = 0;
                    goto loop_12;
                case 0xD7:                          /* switch 3 */
                    temp_v1_3 = m64_read_u8(temp_s1) << 5;
                    seqChannel->vibratoRateTarget = temp_v1_3;
                    seqChannel->vibratoRateStart = temp_v1_3;
                    seqChannel->vibratoRateChangeDelay = 0;
                    goto loop_12;
                case 0xE2:                          /* switch 3 */
                    seqChannel->vibratoExtentStart = m64_read_u8(temp_s1) * 8;
                    seqChannel->vibratoExtentTarget = m64_read_u8(temp_s1) * 8;
                    seqChannel->vibratoExtentChangeDelay = m64_read_u8(temp_s1) * 0x10;
                    goto loop_12;
                case 0xE1:                          /* switch 3 */
                    seqChannel->vibratoRateStart = m64_read_u8(temp_s1) << 5;
                    seqChannel->vibratoRateTarget = m64_read_u8(temp_s1) << 5;
                    seqChannel->vibratoRateChangeDelay = m64_read_u8(temp_s1) * 0x10;
                    goto loop_12;
                case 0xE3:                          /* switch 3 */
                    seqChannel->vibratoDelay = m64_read_u8(temp_s1) * 0x10;
                    goto loop_12;
                case 0xD4:                          /* switch 3 */
                    seqChannel->reverbVol = m64_read_u8(temp_s1);
                    goto loop_12;
                case 0xC6:                          /* switch 3 */
                    temp_a3_2 = *(gAlBankSets + (temp_s4->seqId * 2));
                    temp_s0_4 = gAlBankSets[(temp_a3_2 + gAlBankSets[temp_a3_2]) - m64_read_u8(temp_s1)];
                    if (get_bank_or_seq(1, 2, (s32) temp_s0_4) != NULL) {
                        seqChannel->bankId = temp_s0_4;
                    }
                    goto loop_12;
                case 0xC7:                          /* switch 3 */
                    sp34 = var_s3 & 0xFF;
                    temp_s0_5 = m64_read_u8(temp_s1) & 0xFF;
                    temp_s4->seqData[m64_read_s16(temp_s1) & 0xFFFF] = sp34 + temp_s0_5;
                    goto loop_12;
                case 0xC8:                          /* switch 3 */
                case 0xC9:                          /* switch 3 */
                case 0xCC:                          /* switch 3 */
                    temp_v0_7 = m64_read_u8(temp_s1);
                    if (temp_s0 == 0xC8) {
                        var_s3 -= temp_v0_7;
                    } else if (temp_s0 == 0xCC) {
                        var_s3 = (s8) temp_v0_7;
                    } else {
                        var_s3 &= temp_v0_7;
                    }
                    goto loop_12;
                case 0xCA:                          /* switch 3 */
                    seqChannel->muteBehavior = m64_read_u8(temp_s1);
                    goto loop_12;
                case 0xCB:                          /* switch 3 */
                    var_s3 = (s8) temp_s4->seqData[(m64_read_s16(temp_s1) & 0xFFFF) + var_s3];
                    goto loop_12;
                case 0xD0:                          /* switch 3 */
                    seqChannel->unk0 = (s8) (((m64_read_u8(temp_s1) * 4) & 4) | ((u8) seqChannel->unk0 & 0xFFFB));
                    goto loop_12;
                case 0xD1:                          /* switch 3 */
                    seqChannel->noteAllocPolicy = m64_read_u8(temp_s1);
                    goto loop_12;
                case 0xD2:                          /* switch 3 */
                    seqChannel->adsr.sustain = m64_read_u8(temp_s1);
                    goto loop_12;
                case 0xE5:                          /* switch 3 */
                    seqChannel->reverbIndex = m64_read_u8(temp_s1);
                    goto loop_12;
                case 0xE4:                          /* switch 3 */
                    if (var_s3 != -1) {
                        temp_s1->stack[temp_s1->depth] = temp_s1->pc;
                        temp_v1_4 = seqChannel->dynTable + (var_s3 * 2);
                        temp_s1->depth += 1;
                        temp_s1->pc = &temp_s4->seqData[(temp_v1_4->unk1 + (temp_v1_4->unk0 << 8)) & 0xFFFF];
                    }
                    goto loop_12;
                case 0xE6:                          /* switch 3 */
                    seqChannel->bookOffset = m64_read_u8(temp_s1);
                    goto loop_12;
                case 0xE7:                          /* switch 3 */
                    temp_v1_5 = &temp_s4->seqData[m64_read_s16(temp_s1) & 0xFFFF];
                    seqChannel->muteBehavior = *temp_v1_5;
                    seqChannel->noteAllocPolicy = temp_v1_5[7].unk-6;
                    seqChannel->notePriority = temp_v1_5[7].unk-5;
                    seqChannel->transposition = (s16) temp_v1_5[7].unk-4;
                    seqChannel->newPan = temp_v1_5[7].unk-3;
                    seqChannel->panChannelWeight = temp_v1_5[7].unk-2;
                    seqChannel->reverbVol = temp_v1_5[7].unk-1;
                    seqChannel->changes.as_u8 |= 0x20;
                    seqChannel->reverbIndex = temp_v1_5[7];
                    goto loop_12;
                case 0xE8:                          /* switch 3 */
                    seqChannel->muteBehavior = m64_read_u8(temp_s1);
                    seqChannel->noteAllocPolicy = m64_read_u8(temp_s1);
                    seqChannel->notePriority = m64_read_u8(temp_s1);
                    seqChannel->transposition = (s16) m64_read_u8(temp_s1);
                    seqChannel->newPan = m64_read_u8(temp_s1);
                    seqChannel->panChannelWeight = m64_read_u8(temp_s1);
                    seqChannel->reverbVol = m64_read_u8(temp_s1);
                    seqChannel->reverbIndex = m64_read_u8(temp_s1);
                    seqChannel->changes.as_u8 |= 0x20;
                    goto loop_12;
                case 0xEC:                          /* switch 3 */
                    seqChannel->vibratoExtentTarget = 0;
                    seqChannel->vibratoExtentStart = 0;
                    seqChannel->vibratoExtentChangeDelay = 0;
                    seqChannel->vibratoRateTarget = 0;
                    seqChannel->vibratoRateStart = 0;
                    seqChannel->vibratoRateChangeDelay = 0;
                    seqChannel->freqScale = 1.0f;
                    goto loop_12;
                case 0xE9:                          /* switch 3 */
                    seqChannel->notePriority = m64_read_u8(temp_s1);
                    goto loop_12;
                case 0xEF:                          /* switch 3 */
                    m64_read_s16(temp_s1);
                    m64_read_u8(temp_s1);
                    goto loop_12;
                default:                            /* switch 3 */
                    temp_t6 = temp_v0_2 & 0xF0;
                    temp_a0_4 = temp_v0_2 & 0xF;
                    temp_t0 = temp_a0_4 & 0xFF;
                    switch (temp_t6) {              /* switch 2 */
                    case 0x0:                       /* switch 2 */
                        temp_v1_6 = seqChannel->layers[temp_a0_4 & 0xFF];
                        if (temp_v1_6 != NULL) {
                            var_s3 = (s8) ((u32) (*temp_v1_6 * 2) >> 0x1F);
                        } else {
                            var_s3 = -1;
                        }
                        goto loop_12;
                    case 0x70:                      /* switch 2 */
                        seqChannel->soundScriptIO[temp_a0_4 & 0xFF] = var_s3;
                        goto loop_12;
                    case 0x80:                      /* switch 2 */
                        temp_v1_7 = temp_a0_4 & 0xFF;
                        var_s3 = seqChannel->soundScriptIO[temp_v1_7];
                        if (temp_v1_7 < 4) {
                            seqChannel->soundScriptIO[temp_v1_7] = -1;
                        }
                        goto loop_12;
                    case 0x50:                      /* switch 2 */
                        var_s3 -= seqChannel->soundScriptIO[temp_a0_4 & 0xFF];
                        goto loop_12;
                    case 0x60:                      /* switch 2 */
                        seqChannel->delay = temp_a0_4 & 0xFF;
                        break;
                    case 0x90:                      /* switch 2 */
                        temp_v0_8 = m64_read_s16(temp_s1);
                        temp_a1 = temp_s0 & 0xF;
                        sp34 = temp_a1;
                        sp52 = temp_v0_8;
                        if (seq_channel_set_layer(seqChannel, temp_a1) == 0) {
                            seqChannel->layers[sp34]->scriptState.pc = &temp_s4->seqData[(u16) sp52];
                        }
                        goto loop_12;
                    case 0xA0:                      /* switch 2 */
                        seq_channel_layer_free(seqChannel, temp_s0 & 0xF);
                        goto loop_12;
                    case 0xB0:                      /* switch 2 */
                        if (var_s3 != -1) {
                            temp_a1_2 = temp_s0 & 0xF;
                            sp34 = temp_a1_2;
                            if (seq_channel_set_layer(seqChannel, temp_a1_2) != -1) {
                                temp_v1_8 = seqChannel->dynTable + (var_s3 * 2);
                                seqChannel->layers[sp34]->scriptState.pc = &temp_s4->seqData[(temp_v1_8->unk1 + (temp_v1_8->unk0 << 8)) & 0xFFFF];
                            }
                        }
                        goto loop_12;
                    case 0x10:                      /* switch 2 */
                        sequence_channel_enable(temp_s4, temp_s0 & 0xF, &temp_s4->seqData[m64_read_s16(temp_s1) & 0xFFFF]);
                        goto loop_12;
                    case 0x20:                      /* switch 2 */
                        sequence_channel_disable(temp_s4->channels[temp_s0 & 0xF]);
                        goto loop_12;
                    case 0x30:                      /* switch 2 */
                        sp55 = temp_t0;
                        temp_s4->channels[temp_t0]->soundScriptIO[m64_read_u8(temp_s1)] = var_s3;
                        goto loop_12;
                    case 0x40:                      /* switch 2 */
                        sp55 = temp_t0;
                        var_s3 = temp_s4->channels[temp_t0]->soundScriptIO[m64_read_u8(temp_s1)];
                        goto loop_12;
                    }
                    break;
                }
            }
            var_s1_2 = seqChannel;
            var_s0_2 = 0;
            do {
                temp_a0_5 = var_s1_2->layers[0];
                if (temp_a0_5 != NULL) {
                    seq_channel_layer_process_script(temp_a0_5);
                }
                var_s0_2 += 4;
                var_s1_2 += 4;
            } while (var_s0_2 != 0x10);
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/seqplayer/func_800BFD90.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-14-2023
? func_800BB584(u8, u8 **, s32 *);                  /* extern */
? func_800BFD90(s32);                               /* extern */
extern s16 D_803B70B4;

void func_800C08CC(struct SequencePlayer *arg0) {
    struct NotePool *sp38;
    s32 sp34;
    struct SequencePlayer *sp30;
    OSMesgQueue *temp_s0;
    s16 temp_v0_10;
    s16 temp_v0_7;
    s32 *temp_a2;
    s32 temp_s2;
    s32 temp_t2_2;
    s32 temp_v0_3;
    s32 temp_v0_5;
    s32 temp_v1_3;
    s32 var_s3;
    s32 var_v0_3;
    struct M64ScriptState *temp_s0_2;
    struct NotePool *temp_a0_4;
    struct SequenceChannel *temp_a0_5;
    struct SequencePlayer *var_v1;
    u16 temp_a0;
    u16 temp_t2;
    u16 temp_v1_5;
    u16 var_v0_2;
    u32 temp_v0;
    u8 **temp_a1;
    u8 *temp_v0_2;
    u8 *temp_v1;
    u8 *temp_v1_2;
    u8 *temp_v1_6;
    u8 *var_v0;
    u8 temp_a0_2;
    u8 temp_a0_3;
    u8 temp_a1_2;
    u8 temp_s2_2;
    u8 temp_t9;
    u8 temp_v0_11;
    u8 temp_v0_4;
    u8 temp_v0_8;
    u8 temp_v0_9;
    u8 temp_v1_4;
    u8 var_a0;
    void *temp_v0_6;

    temp_v0 = arg0->unk0;
    if ((temp_v0 >> 0x1F) != 0) {
        if (((u32) (temp_v0 * 0x10) >> 0x1F) == 1) {
            temp_s0 = &arg0->bankDmaMesgQueue;
            if (osRecvMesg(temp_s0, NULL, 0) != -1) {
                temp_a1 = &arg0->bankDmaCurrMemAddr;
                temp_a2 = &arg0->bankDmaRemaining;
                if (arg0->bankDmaRemaining == 0) {
                    arg0->unk0 = (s8) ((u8) arg0->unk0 & 0xFFF7);
                    func_800BB584(arg0->loadingBankId, temp_a1, temp_a2);
                    temp_v0_2 = &gBankLoadStatus[arg0->loadingBankId];
                    if (*temp_v0_2 != 5) {
                        *temp_v0_2 = 2;
                    }
                } else {
                    audio_dma_partial_copy_async(&arg0->bankDmaCurrDevAddr, temp_a1, temp_a2, temp_s0, &arg0->bankDmaIoMesg);
                }
            }
        } else if (((u32) (temp_v0 * 8) >> 0x1F) == 1) {
            if (osRecvMesg(&arg0->seqDmaMesgQueue, NULL, 0) != -1) {
                arg0->unk0 = (s8) ((u8) arg0->unk0 & 0xFFEF);
                temp_v1 = &gSeqLoadStatus[arg0->seqId];
                if (*temp_v1 != 5) {
                    *temp_v1 = 2;
                }
                goto block_11;
            }
        } else {
block_11:
            temp_v1_2 = &gSeqLoadStatus[arg0->seqId];
            temp_a1_2 = *temp_v1_2;
            if (((s32) temp_a1_2 < 2) || (var_v0 = &gBankLoadStatus[arg0->defaultBank[0]], var_a0 = *var_v0, (((s32) var_a0 < 2) != 0))) {
                sequence_player_disable(arg0);
                return;
            }
            if (temp_a1_2 != 5) {
                *temp_v1_2 = 2;
                var_v0 = &gBankLoadStatus[arg0->defaultBank[0]];
                var_a0 = *var_v0;
            }
            if (var_a0 != 5) {
                *var_v0 = 2;
            }
            if (!(arg0->unk0 & 0x20000000) || !(arg0->muteBehavior & 0x80)) {
                temp_t2 = arg0->tempoAcc + arg0->tempo;
                arg0->tempoAcc = temp_t2;
                temp_v0_3 = temp_t2 & 0xFFFF;
                if (temp_v0_3 >= D_803B70B4) {
                    temp_a0 = arg0->delay;
                    arg0->tempoAcc = temp_v0_3 - D_803B70B4;
                    if ((s32) temp_a0 >= 2) {
                        arg0->delay = temp_a0 - 1;
                    } else {
                        temp_s0_2 = &arg0->scriptState;
                        arg0->unk0 = (s8) ((u8) arg0->unk0 | 4);
                        var_s3 = sp58;
loop_24:
                        temp_v0_4 = m64_read_u8(temp_s0_2);
                        temp_s2 = temp_v0_4 & 0xFF;
                        if (temp_v0_4 == 0xFF) {
                            temp_a0_2 = temp_s0_2->depth;
                            if (temp_a0_2 == 0) {
                                sequence_player_disable(arg0);
                            } else {
                                temp_t9 = (temp_a0_2 - 1) & 0xFF;
                                temp_s0_2->depth = temp_t9;
                                temp_s0_2->pc = temp_s0_2->stack[temp_t9];
                                goto block_28;
                            }
                        } else {
block_28:
                            temp_v1_3 = temp_v0_4 & 0xFF;
                            temp_v0_5 = temp_v1_3 & 0xF0;
                            if (temp_v1_3 == 0xFD) {
                                arg0->delay = m64_read_compressed_u16(temp_s0_2);
                            } else if (temp_v1_3 == 0xFE) {
                                arg0->delay = 1;
                            } else {
                                switch (temp_v1_3) { /* switch 3; irregular */
                                case 0xFC:          /* switch 3 */
                                    temp_t2_2 = m64_read_s16(temp_s0_2) & 0xFFFF;
                                    temp_s0_2->stack[temp_s0_2->depth] = temp_s0_2->pc;
                                    temp_s0_2->depth += 1;
                                    temp_s0_2->pc = &arg0->seqData[temp_t2_2];
                                    break;
                                case 0xF8:          /* switch 3 */
                                    temp_s0_2->remLoopIters[temp_s0_2->depth] = m64_read_u8(temp_s0_2);
                                    temp_s0_2->stack[temp_s0_2->depth] = temp_s0_2->pc;
                                    temp_s0_2->depth += 1;
                                    break;
                                case 0xF7:          /* switch 3 */
                                    temp_v0_6 = temp_s0_2 + temp_s0_2->depth;
                                    temp_v0_6->unk13 = (u8) (temp_v0_6->unk13 - 1);
                                    temp_a0_3 = temp_s0_2->depth;
                                    if ((temp_s0_2 + temp_a0_3)->unk13 != 0) {
                                        temp_s0_2->pc = *(temp_s0_2 + (temp_a0_3 * 4));
                                    } else {
                                        temp_s0_2->depth = temp_a0_3 - 1;
                                    }
                                    break;
                                case 0xF5:          /* switch 3 */
                                case 0xF9:          /* switch 3 */
                                case 0xFA:          /* switch 3 */
                                case 0xFB:          /* switch 3 */
                                    temp_v0_7 = m64_read_s16(temp_s0_2);
                                    if (((temp_s2 != 0xFA) || (var_s3 == 0)) && ((temp_s2 != 0xF9) || (var_s3 < 0)) && ((temp_s2 != 0xF5) || (var_s3 >= 0))) {
                                        temp_s0_2->pc = &arg0->seqData[temp_v0_7 & 0xFFFF];
                                    }
                                    break;
                                case 0xF2:          /* switch 3 */
                                case 0xF3:          /* switch 3 */
                                case 0xF4:          /* switch 3 */
                                    temp_v0_8 = m64_read_u8(temp_s0_2);
                                    if (((temp_s2 != 0xF3) || (var_s3 == 0)) && ((temp_s2 != 0xF2) || (var_s3 < 0))) {
                                        temp_s0_2->pc = &temp_s0_2->pc[(s8) temp_v0_8];
                                    }
                                    break;
                                case 0xF1:          /* switch 3 */
                                    temp_a0_4 = &arg0->notePool;
                                    sp38 = temp_a0_4;
                                    note_pool_clear(temp_a0_4);
                                    note_pool_fill(temp_a0_4, m64_read_u8(temp_s0_2));
                                    break;
                                case 0xF0:          /* switch 3 */
                                    note_pool_clear(&arg0->notePool);
                                    break;
                                case 0xDF:          /* switch 3 */
                                    arg0->transposition = 0;
                                    /* fallthrough */
                                case 0xDE:          /* switch 3 */
                                    arg0->transposition += m64_read_u8(temp_s0_2);
                                    break;
                                case 0xDC:          /* switch 3 */
                                case 0xDD:          /* switch 3 */
                                    temp_v0_9 = m64_read_u8(temp_s0_2);
                                    if (temp_s2 == 0xDD) {
                                        arg0->tempo = (temp_v0_9 & 0xFF) * 0x30;
                                    } else {
                                        arg0->tempo += (s8) temp_v0_9 * 0x30;
                                    }
                                    var_v0_2 = arg0->tempo;
                                    if (D_803B70B4 < (s32) var_v0_2) {
                                        arg0->tempo = (u16) D_803B70B4;
                                        var_v0_2 = D_803B70B4 & 0xFFFF;
                                    }
                                    if ((s16) var_v0_2 <= 0) {
                                        arg0->tempo = 1;
                                    }
                                    break;
                                case 0xDA:          /* switch 3 */
                                    temp_s2_2 = m64_read_u8(temp_s0_2) & 0xFF;
                                    temp_v0_10 = m64_read_s16(temp_s0_2);
                                    switch (temp_s2_2) { /* switch 4; irregular */
                                    case 0:         /* switch 4 */
                                    case 1:         /* switch 4 */
                                        if (arg0->state != 2) {
                                            arg0->fadeTimerUnkEu = (u16) temp_v0_10;
                                            arg0->state = temp_s2_2;
                                        }
                                        break;
                                    case 2:         /* switch 4 */
                                        arg0->fadeRemainingFrames = (u16) temp_v0_10;
                                        arg0->state = temp_s2_2;
                                        arg0->fadeVelocity = (0.0f - arg0->fadeVolume) / (f32) (temp_v0_10 & 0xFFFF);
                                        break;
                                    }
                                    break;
                                case 0xDB:          /* switch 3 */
                                    temp_v0_11 = m64_read_u8(temp_s0_2);
                                    temp_v1_4 = arg0->state;
                                    switch (temp_v1_4) { /* switch 5; irregular */
                                    case 2:         /* switch 5 */
                                        break;
                                    case 1:         /* switch 5 */
                                        arg0->state = 0;
                                        arg0->fadeVolume = 0.0f;
                                        /* fallthrough */
                                    case 0:         /* switch 5 */
                                        temp_v1_5 = arg0->fadeTimerUnkEu;
                                        arg0->fadeRemainingFrames = temp_v1_5;
                                        if (temp_v1_5 != 0) {
                                            arg0->fadeVelocity = (((f32) temp_v0_11 / 127.0f) - arg0->fadeVolume) / (f32) (temp_v1_5 & 0xFFFF);
                                        } else {
                                            arg0->fadeVolume = (f32) temp_v0_11 / 127.0f;
                                        }
                                        break;
                                    }
                                    break;
                                case 0xD9:          /* switch 3 */
                                    arg0->fadeVolumeScale = (f32) m64_read_u8(temp_s0_2) / 127.0f;
                                    break;
                                case 0xD7:          /* switch 3 */
                                    sequence_player_init_channels(arg0, m64_read_s16(temp_s0_2) & 0xFFFF);
                                    break;
                                case 0xD6:          /* switch 3 */
                                    sequence_player_disable_channels(arg0, m64_read_s16(temp_s0_2) & 0xFFFF);
                                    break;
                                case 0xD5:          /* switch 3 */
                                    arg0->muteVolumeScale = (f32) m64_read_u8(temp_s0_2) / 127.0f;
                                    break;
                                case 0xD4:          /* switch 3 */
                                    arg0->unk0 = (s8) ((u8) arg0->unk0 | 0x20);
                                    break;
                                case 0xD3:          /* switch 3 */
                                    arg0->muteBehavior = m64_read_u8(temp_s0_2);
                                    break;
                                case 0xD1:          /* switch 3 */
                                case 0xD2:          /* switch 3 */
                                    temp_v1_6 = &arg0->seqData[m64_read_s16(temp_s0_2) & 0xFFFF];
                                    if (temp_s2 == 0xD2) {
                                        arg0->shortNoteVelocityTable = temp_v1_6;
                                    } else {
                                        arg0->shortNoteDurationTable = temp_v1_6;
                                    }
                                    break;
                                case 0xD0:          /* switch 3 */
                                    arg0->noteAllocPolicy = m64_read_u8(temp_s0_2);
                                    break;
                                case 0xCC:          /* switch 3 */
                                    var_s3 = m64_read_u8(temp_s0_2);
                                    break;
                                case 0xC9:          /* switch 3 */
                                    var_s3 &= m64_read_u8(temp_s0_2);
                                    break;
                                case 0xC8:          /* switch 3 */
                                    var_s3 -= m64_read_u8(temp_s0_2);
                                    break;
                                default:            /* switch 3 */
                                    switch (temp_v0_5) { /* switch 6; irregular */
                                    case 0x0:       /* switch 6 */
                                        var_s3 = (s32) ((u32) (*arg0->channels[temp_v1_3 & 0xF] * 2) >> 0x1F);
                                        break;
                                    case 0x50:      /* switch 6 */
                                        var_s3 -= arg0->seqVariationEu[0];
                                        break;
                                    case 0x70:      /* switch 6 */
                                        arg0->seqVariationEu[0] = (s8) var_s3;
                                        break;
                                    case 0x80:      /* switch 6 */
                                        var_s3 = (s32) arg0->seqVariationEu[0];
                                        break;
                                    case 0x90:      /* switch 6 */
                                        sequence_channel_enable(arg0, temp_s2 & 0xF, &arg0->seqData[m64_read_s16(temp_s0_2) & 0xFFFF]);
                                        break;
                                    }
                                    break;
                                }
                                goto loop_24;
                            }
                        }
                    }
                    var_v1 = arg0;
                    var_v0_3 = 0;
                    do {
                        temp_a0_5 = var_v1->channels[0];
                        if (((s32) &gSequenceChannelNone != (s32) temp_a0_5) == 1) {
                            sp34 = var_v0_3;
                            sp30 = var_v1;
                            func_800BFD90((s32) temp_a0_5);
                        }
                        var_v0_3 += 4;
                        var_v1 += 4;
                    } while (var_v0_3 != 0x00000040);
                }
            }
        }
    }
}
#else
GLOBAL_ASM("asm/non_matchings/audio/seqplayer/func_800C08CC.s")
#endif

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-14-2023
? func_800C08CC(struct SequencePlayer *);           /* extern */

void func_800C1138(s32 arg0) {
    struct SequencePlayer *var_s0;

    var_s0 = gSequencePlayers;
    do {
        if (((u32) *var_s0 >> 0x1F) == 1) {
            func_800C08CC(var_s0);
            sequence_player_process_sound(var_s0);
        }
        var_s0 += 0x148;
    } while (var_s0 != gSequenceChannels);
    process_notes();
}
#else
GLOBAL_ASM("asm/non_matchings/audio/seqplayer/func_800C1138.s")
#endif

void init_sequence_player(u32 player) {
    struct SequencePlayer *seqPlayer = &gSequencePlayers[player];
    sequence_player_disable(seqPlayer);
    seqPlayer->delay = 0;
    seqPlayer->state = 1;
    seqPlayer->fadeRemainingFrames = 0;
    seqPlayer->fadeTimerUnkEu = 0;
    seqPlayer->tempoAcc = 0;
    seqPlayer->tempo = 120 * TEMPO_SCALE; // 120 BPM
    seqPlayer->transposition = 0;
    seqPlayer->noteAllocPolicy = 0;
    seqPlayer->shortNoteVelocityTable = gDefaultShortNoteVelocityTable;
    seqPlayer->shortNoteDurationTable = gDefaultShortNoteDurationTable;
    seqPlayer->fadeVolume = 1.0f;
    seqPlayer->fadeVolumeScale = 1.0f;
    seqPlayer->fadeVelocity = 0.0f;
    seqPlayer->volume = 0.0f;
    seqPlayer->muteVolumeScale = 0.5f;
}

void init_sequence_players(void) {
    // Initialization function, called from audio_init
    s32 i, j;

    for (i = 0; i < ARRAY_COUNT(gSequenceChannels); i++) {
        gSequenceChannels[i].seqPlayer = NULL;
        gSequenceChannels[i].enabled = FALSE;
        // @bug Size of wrong array. Zeroes out second half of gSequenceChannels[0],
        // all of gSequenceChannels[1..31], and part of gSequenceLayers[0].
        // However, this is only called at startup, so it's harmless.
#ifdef AVOID_UB
#define LAYERS_SIZE LAYERS_MAX
#else
#define LAYERS_SIZE ARRAY_COUNT(gSequenceLayers)
#endif
        for (j = 0; j < LAYERS_SIZE; j++) {
            gSequenceChannels[i].layers[j] = NULL;
        }
    }

    init_layer_freelist();

    for (i = 0; i < ARRAY_COUNT(gSequenceLayers); i++) {
        gSequenceLayers[i].seqChannel = NULL;
        gSequenceLayers[i].enabled = FALSE;
    }

    for (i = 0; i < SEQUENCE_PLAYERS; i++) {
        for (j = 0; j < CHANNELS_MAX; j++) {
            gSequencePlayers[i].channels[j] = &gSequenceChannelNone;
        }

        gSequencePlayers[i].seqVariationEu[0] = -1;
        gSequencePlayers[i].muteBehavior = MUTE_BEHAVIOR_STOP_SCRIPT | MUTE_BEHAVIOR_STOP_NOTES | MUTE_BEHAVIOR_SOFTEN;
        gSequencePlayers[i].enabled = FALSE;
        gSequencePlayers[i].muted = FALSE;
        gSequencePlayers[i].bankDmaInProgress = FALSE;
        gSequencePlayers[i].seqDmaInProgress = FALSE;
        init_note_lists(&gSequencePlayers[i].notePool);
        init_sequence_player(i);
    }
}
