#include <ultra64.h>
#include <macros.h>

#include "audio/data.h"
#include "audio/internal.h"
#include "audio/seqplayer.h"
#include "audio/load.h"
#include "audio/heap.h"
#include "audio/effects.h"
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

void seq_channel_layer_process_script(struct SequenceChannelLayer *layer) {
    struct SequencePlayer *seqPlayer;
    struct SequenceChannel *seqChannel;
    UNUSED u32 pad0;
    struct M64ScriptState *state;
    struct Portamento *portamento;
    struct AudioBankSound *sound;
    struct Instrument *instrument;
    struct Drum *drum;
    s32 temp_a0_5;
    u16 sp3A;
    s32 sameSound;
    UNUSED u32 pad1;
    u8 cmd;
    UNUSED u8 cmdSemitone;
    f32 tuning;
    s32 vel;
    UNUSED s32 usedSemitone;
    f32 freqScale;
    f32 temp_f12;
    f32 temp_f2;

    sameSound = TRUE;
    if (layer->enabled == FALSE) {
        return;
    }

    if (layer->delay > 1) {
        layer->delay--;
        if (!layer->stopSomething && layer->delay <= layer->duration) {
            seq_channel_layer_note_decay(layer);
            layer->stopSomething = TRUE;
        }
        return;
    }

    if (!layer->continuousNotes) {
        seq_channel_layer_note_decay(layer);
    }

    if (PORTAMENTO_MODE(layer->portamento) == PORTAMENTO_MODE_1 ||
        PORTAMENTO_MODE(layer->portamento) == PORTAMENTO_MODE_2) {
        layer->portamento.mode = 0;
    }

    seqChannel = layer->seqChannel;
    seqPlayer = seqChannel->seqPlayer;
    layer->notePropertiesNeedInit = TRUE;

    for (;;) {
        state = &layer->scriptState;
        cmd = m64_read_u8(state);

        if (cmd <= 0xc0) {
            break;
        }

        switch (cmd) {
            case 0xff: // layer_end; function return or end of script
                if (state->depth == 0) {
                    // N.B. this function call is *not* inlined even though it's
                    // within the same file, unlike in the rest of this function.
                    seq_channel_layer_disable(layer);
                    return;
                }
                state->pc = state->stack[--state->depth];
                break;

            case 0xfc: // layer_call
                if (0 && state->depth >= 4) {
                }
                sp3A = m64_read_s16(state);
                state->stack[state->depth++] = state->pc;
                state->pc = seqPlayer->seqData + sp3A;
                break;

            case 0xf8: // layer_loop; loop start, N iterations (or 256 if N = 0)
                if (0 && state->depth >= 4) {
                }
                state->remLoopIters[state->depth] = m64_read_u8(state);
                state->stack[state->depth++] = state->pc;
                break;

            case 0xf7: // layer_loopend
                if (--state->remLoopIters[state->depth - 1] != 0) {
                    state->pc = state->stack[state->depth - 1];
                } else {
                    state->depth--;
                }
                break;

            case 0xfb: // layer_jump
                sp3A = m64_read_s16(state);
                state->pc = seqPlayer->seqData + sp3A;
                break;

            case 0xf4:
                state->pc += (s8)m64_read_u8(state);
                break;

            case 0xc1: // layer_setshortnotevelocity
            case 0xca: // layer_setpan
                temp_a0_5 = *(state->pc++);
                if (cmd == 0xc1) {
                    layer->velocitySquare = (f32)(temp_a0_5 * temp_a0_5) / 16129.0f;
                } else {
                    layer->pan = temp_a0_5;
                }
                break;

            case 0xc2: // layer_transpose; set transposition in semitones
            case 0xc9: // layer_setshortnoteduration
                temp_a0_5 = *(state->pc++);
                if (cmd == 0xc9) {
                    layer->noteDuration = temp_a0_5;
                } else {
                    layer->transposition = temp_a0_5;
                }
                break;

            case 0xc4: // layer_somethingon
            case 0xc5: // layer_somethingoff
                if (cmd == 0xc4) {
                    layer->continuousNotes = TRUE;
                } else {
                    layer->continuousNotes = FALSE;
                }
                seq_channel_layer_note_decay(layer);
                break;

            case 0xc3: // layer_setshortnotedefaultplaypercentage
                sp3A = m64_read_compressed_u16(state);
                layer->shortNoteDefaultPlayPercentage = sp3A;
                break;

            case 0xc6: // layer_setinstr
                cmd = m64_read_u8(state);
                if (cmd >= 0x7f) {
                    if (cmd == 0x7f) {
                        layer->instOrWave = 0;
                    } else {
                        layer->instOrWave = cmd;
                        layer->instrument = NULL;
                    }

                    if (1) {
                    }

                    if (cmd == 0xff) {
                        layer->adsr.releaseRate = 0;
                    }
                    break;
                }

                if ((layer->instOrWave = get_instrument(seqChannel, cmd, &layer->instrument, &layer->adsr)) == 0) {
                    layer->instOrWave = 0xff;
                }
                break;

            case 0xc7: // layer_portamento
                layer->portamento.mode = m64_read_u8(state);

                // cmd is reused for the portamento's semitone
                cmd = m64_read_u8(state) + seqChannel->transposition +
                    layer->transposition + seqPlayer->transposition;

                if (cmd >= 0x80) {
                    cmd = 0;
                }

                layer->portamentoTargetNote = cmd;

                // If special, the next param is u8 instead of var
                if (PORTAMENTO_IS_SPECIAL(layer->portamento)) {
                    layer->portamentoTime = *((state)->pc++);
                    break;
                }

                sp3A = m64_read_compressed_u16(state);
                layer->portamentoTime = sp3A;
                break;

            case 0xc8: // layer_disableportamento
                layer->portamento.mode = 0;
                break;

            case 0xcb:
                sp3A = m64_read_s16(state);
                layer->adsr.envelope = (struct AdsrEnvelope *) (seqPlayer->seqData + sp3A);
                layer->adsr.releaseRate = m64_read_u8(state);
                break;

            case 0xcc:
                layer->ignoreDrumPan = TRUE;
                break;

            default:
                switch (cmd & 0xf0) {
                    case 0xd0: // layer_setshortnotevelocityfromtable
                        sp3A = seqPlayer->shortNoteVelocityTable[cmd & 0xf];
                        layer->velocitySquare = (f32)(sp3A * sp3A) / 16129.0f;
                        break;
                    case 0xe0: // layer_setshortnotedurationfromtable
                        layer->noteDuration = seqPlayer->shortNoteDurationTable[cmd & 0xf];
                        break;
                    default:
                        break;
                }
        }
    }

    if (cmd == 0xc0) { // layer_delay
        layer->delay = m64_read_compressed_u16(state);
        layer->stopSomething = TRUE;
    } else {
        layer->stopSomething = FALSE;

        if (seqChannel->largeNotes == TRUE) {
            switch (cmd & 0xc0) {
                case 0x00: // layer_note0 (play percentage, velocity, duration)
                    sp3A = m64_read_compressed_u16(state);
                    vel = *(state->pc++);
                    layer->noteDuration = *(state->pc++);
                    layer->playPercentage = sp3A;
                    break;

                case 0x40: // layer_note1 (play percentage, velocity)
                    sp3A = m64_read_compressed_u16(state);
                    vel = *(state->pc++);
                    layer->noteDuration = 0;
                    layer->playPercentage = sp3A;
                    break;

                case 0x80: // layer_note2 (velocity, duration; uses last play percentage)
                    sp3A = layer->playPercentage;
                    vel = *(state->pc++);
                    layer->noteDuration = *(state->pc++);
                    break;
            }
            if ((vel >= 0x80) || (vel < 0)) {
                vel = 0x0000007F;
            }
            // the remaining bits are used for the semitone
            cmd -= (cmd & 0xc0);
            layer->velocitySquare = ((f32)(vel) * (f32)vel) / 16129.0f;
        } else {
            switch (cmd & 0xc0) {
                case 0x00: // play note, type 0 (play percentage)
                    sp3A = m64_read_compressed_u16(state);
                    layer->playPercentage = sp3A;
                    break;

                case 0x40: // play note, type 1 (uses default play percentage)
                    sp3A = layer->shortNoteDefaultPlayPercentage;
                    break;

                case 0x80: // play note, type 2 (uses last play percentage)
                    sp3A = layer->playPercentage;
                    break;
            }

            // the remaining bits are used for the semitone
            cmd -= cmd & 0xc0;
        }

        layer->delay = sp3A;
        layer->duration = layer->noteDuration * sp3A >> 8;
        if ((seqPlayer->muted && (seqChannel->muteBehavior & MUTE_BEHAVIOR_STOP_NOTES) != 0)
            || seqChannel->stopSomething2
        ) {
            layer->stopSomething = TRUE;

        } else {
            s32 temp = layer->instOrWave;
            if (temp == 0xff) {
                if (!seqChannel->hasInstrument) return;
                temp = seqChannel->instOrWave;
            }
            if (temp == 0)
            { // drum
                // cmd is reused for the drum semitone
                cmd += seqChannel->transposition + layer->transposition;

                drum = get_drum(seqChannel->bankId, cmd);
                if (drum == NULL) {
                    layer->stopSomething = TRUE;
                    layer->delayUnused = layer->delay;
                    return;
                } else {
                    layer->adsr.envelope = drum->envelope;
                    layer->adsr.releaseRate = drum->releaseRate;
                    if (!layer->ignoreDrumPan) {
                        layer->pan = drum->pan;
                    }
                    layer->sound = &drum->sound;
                    layer->freqScale = layer->sound->tuning;
                }
            } else { // instrument
                // cmd is reused for the instrument semitone
                cmd += seqPlayer->transposition + seqChannel->transposition + layer->transposition;

                if (cmd >= 0x80) {
                    layer->stopSomething = TRUE;
                } else {
                    if (layer->instOrWave == 0xffu) {
                        instrument = seqChannel->instrument;
                    } else {
                        instrument = layer->instrument;
                    }

                    if (layer->portamento.mode != 0) {
                        if (layer->portamentoTargetNote < cmd) {
                            vel = cmd;
                        } else {
                            vel = layer->portamentoTargetNote;
                        }

                        if (instrument != NULL) {
                            sound = instrument_get_audio_bank_sound(instrument, vel);
                            sameSound = (sound == layer->sound);
                            layer->sound = sound;
                            tuning = sound->tuning;
                        } else {
                            layer->sound = NULL;
                            tuning = 1.0f;
                        }

                        temp_f2 = gNoteFrequencies[cmd] * tuning;
                        temp_f12 = gNoteFrequencies[layer->portamentoTargetNote] * tuning;

                        portamento = &layer->portamento;
                        switch (PORTAMENTO_MODE(layer->portamento)) {
                            case PORTAMENTO_MODE_1:
                            case PORTAMENTO_MODE_3:
                            case PORTAMENTO_MODE_5:
                                freqScale = temp_f12;
                                break;

                            case PORTAMENTO_MODE_2:
                            case PORTAMENTO_MODE_4:
                            default:
                                freqScale = temp_f2;
                                break;
                        }

                        portamento->extent = temp_f2 / freqScale - 1.0f;

                        if (PORTAMENTO_IS_SPECIAL(layer->portamento)) {
                            portamento->speed = US_FLOAT(32512.0) * FLOAT_CAST(seqPlayer->tempo)
                                                / ((f32) layer->delay * (f32) gTempoInternalToExternal
                                                   * FLOAT_CAST(layer->portamentoTime));
                        } else {
                            portamento->speed = US_FLOAT(127.0) / FLOAT_CAST(layer->portamentoTime);
                        }
                        portamento->cur = 0.0f;
                        layer->freqScale = freqScale;
                        if (PORTAMENTO_MODE(layer->portamento) == PORTAMENTO_MODE_5) {
                            layer->portamentoTargetNote = cmd;
                        }
                    } else if (instrument != NULL) {
                        sound = instrument_get_audio_bank_sound(instrument, cmd);
                        sameSound = (sound == layer->sound);
                        layer->sound = sound;
                        layer->freqScale = gNoteFrequencies[cmd] * sound->tuning;
                    } else {
                        layer->sound = NULL;
                        layer->freqScale = gNoteFrequencies[cmd];
                    }
                }
            }
            layer->delayUnused = layer->delay;
        }
    }

    if (layer->stopSomething == TRUE) {
        if (layer->note != NULL || layer->continuousNotes) {
            seq_channel_layer_note_decay(layer);
        }
        return;
    }

    cmd = FALSE;
    if (!layer->continuousNotes) {
        cmd = TRUE;
    } else if (layer->note == NULL || layer->status == SOUND_LOAD_STATUS_NOT_LOADED) {
        cmd = TRUE;
    } else if (sameSound == FALSE) {
        seq_channel_layer_note_decay(layer);
        cmd = TRUE;
    }
    else if (layer != layer->note->parentLayer) {
        cmd = TRUE;
    }
    else if (layer->sound == NULL) {
        init_synthetic_wave(layer->note, layer);
    }

    if (cmd != FALSE) {
        layer->note = alloc_note(layer);
    }

    if (layer->note != NULL && layer->note->parentLayer == layer) {
        note_vibrato_init(layer->note);
    }
    if (seqChannel) {
    }
}

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

void sequence_channel_process_script(struct SequenceChannel *seqChannel) {
    struct M64ScriptState *state;
    struct SequencePlayer *seqPlayer;
    u8 cmd;
    s8 temp;
    u8 loBits;
    u16 sp5A;
    s32 sp38;
    s8 value;
    s32 i;
    u8 *seqData;

    if (!seqChannel->enabled) {
        return;
    }
    if (seqChannel->stopScript) {
        for (i = 0; i < LAYERS_MAX; i++) {
            if (seqChannel->layers[i] != NULL) {
                seq_channel_layer_process_script(seqChannel->layers[i]);
            }
        }
        return;
    }
    seqPlayer = seqChannel->seqPlayer;
    if (seqPlayer->muted && ((seqChannel->muteBehavior & 0x80) != 0)) {
        return;
    }
    if (seqChannel->delay != 0) {
        seqChannel->delay--;
    }
    state = &seqChannel->scriptState;
    if (seqChannel->delay == 0) {
        for (;;) {
            cmd = m64_read_u8(state);
            if (cmd > 0xc0) {
                switch (cmd) {
                case 0xFF:
                    if (state->depth);
                    if(1);
                    if(1);
                    if(1);
                    if (state->depth == 0) {
                        sequence_channel_disable(seqChannel);
                        goto out;
                    } else {
                        state->pc = state->stack[--state->depth];
                    }
                    break;

                case 0xFE:
                    goto out;

                case 0xFD:
                    seqChannel->delay = m64_read_compressed_u16(state);
                    goto out;

                case 0xEA:
                    seqChannel->stopScript = 1;
                    goto out;

                case 0xFC:
                    sp5A = m64_read_s16(state);
                    state->stack[state->depth++] = state->pc;
                    state->pc = seqPlayer->seqData + sp5A;
                    break;

                case 0xF8:
                    state->remLoopIters[state->depth] = m64_read_u8(state);
                    state->stack[state->depth] = state->pc;
                    state->depth += 1;
                    break;

                case 0xF7:
                    state->remLoopIters[state->depth - 1]--;
                    if (state->remLoopIters[state->depth - 1] != 0) {
                        state->pc = state->stack[state->depth - 1];
                    }
                    else {
                        state->depth--;
                    }
                    break;

                case 0xF6:
                    state->depth -= 1;
                    break;

                case 0xF5:
                case 0xF9:
                case 0xFA:
                case 0xFB:
                    sp5A = m64_read_s16(state);
                    if ((cmd == 0xFA) && (value != 0)) {
                        break;
                    }
                    if ((cmd == 0xF9) && (value >= 0)) {
                        break;
                    }
                    if ((cmd == 0xF5) && (value < 0)) {
                        break;
                    }
                    state->pc = seqPlayer->seqData + sp5A;
                    break;

                case 0xF2:
                case 0xF3:
                case 0xF4:
                    temp = m64_read_u8(state);
                    if ((cmd == 0xF3) && (value != 0)) {
                        break;
                    }
                    if ((cmd == 0xF2) && (value >= 0)) {
                        break;
                    }
                    state->pc += temp;
                    break;

                case 0xF1:
                    note_pool_clear(&seqChannel->notePool);
                    note_pool_fill(&seqChannel->notePool, m64_read_u8(state));
                    break;

                case 0xF0:
                    note_pool_clear(&seqChannel->notePool);
                    break;

                case 0xC2:
                    sp5A = m64_read_s16(state);
                    seqChannel->dynTable = (void *) (seqPlayer->seqData + sp5A);
                    break;

                case 0xC5:
                    if (value != (-1)) {
                        seqData = (*seqChannel->dynTable)[value];
                        sp38 = (u16) ((seqData[0] << 8) + seqData[1]);
                        seqChannel->dynTable = (void *) (seqPlayer->seqData + sp38);
                    }
                    break;

                case 0xEB:
                    cmd = m64_read_u8(state);
                    sp38 = ((u16 *) gAlBankSets)[seqPlayer->seqId];
                    loBits = *(sp38 + gAlBankSets);
                    cmd = gAlBankSets[(((s32) sp38) + loBits) - cmd];
                    if (get_bank_or_seq(1, 2, cmd) != NULL) {
                        seqChannel->bankId = cmd;
                    }

                case 0xC1:
                    set_instrument(seqChannel, m64_read_u8(state));
                    break;

                case 0xC3:
                    seqChannel->largeNotes = 0;
                    break;

                case 0xC4:
                    seqChannel->largeNotes = 1;
                    break;

                case 0xDF:
                    sequence_channel_set_volume(seqChannel, m64_read_u8(state));
                    seqChannel->changes.as_bitfields.volume = 1;
                    break;

                case 0xE0:
                    seqChannel->volumeScale = ((f32) ((s32) m64_read_u8(state))) / 128.0f;
                    seqChannel->changes.as_bitfields.volume = 1;
                    break;

                case 0xDE:
                    sp5A = m64_read_s16(state);
                    seqChannel->freqScale = ((f32) ((s32) sp5A)) / 32768.0f;
                    seqChannel->changes.as_bitfields.freqScale = 1;
                    break;

                case 0xD3:
                    cmd = m64_read_u8(state) + 127;
                    seqChannel->freqScale = gPitchBendFrequencyScale[cmd];
                    seqChannel->changes.as_bitfields.freqScale = 1;
                    break;

                case 0xDD:
                    seqChannel->newPan = m64_read_u8(state);
                    seqChannel->changes.as_bitfields.pan = 1;
                    break;

                case 0xDC:
                    seqChannel->panChannelWeight = m64_read_u8(state);
                    seqChannel->changes.as_bitfields.pan = 1;
                    break;

                case 0xDB:
                    temp = *(state->pc++);
                    seqChannel->transposition = temp;
                    break;

                case 0xDA:
                    sp5A = m64_read_s16(state);
                    seqChannel->adsr.envelope = (struct AdsrEnvelope *) (seqPlayer->seqData + sp5A);
                    break;

                case 0xD9:
                    seqChannel->adsr.releaseRate = m64_read_u8(state);
                    break;

                case 0xD8:
                    seqChannel->vibratoExtentTarget = m64_read_u8(state) * 8;
                    seqChannel->vibratoExtentStart = 0;
                    seqChannel->vibratoExtentChangeDelay = 0;
                    break;

                case 0xD7:
                    seqChannel->vibratoRateStart = seqChannel->vibratoRateTarget = m64_read_u8(state) * 32;
                    seqChannel->vibratoRateChangeDelay = 0;
                    break;

                case 0xE2:
                    seqChannel->vibratoExtentStart = m64_read_u8(state) * 8;
                    seqChannel->vibratoExtentTarget = m64_read_u8(state) * 8;
                    seqChannel->vibratoExtentChangeDelay = m64_read_u8(state) * 0x10;
                    break;

                case 0xE1:
                    seqChannel->vibratoRateStart = m64_read_u8(state) << 5;
                    seqChannel->vibratoRateTarget = m64_read_u8(state) << 5;
                    seqChannel->vibratoRateChangeDelay = m64_read_u8(state) * 0x10;
                    break;

                case 0xE3:
                    seqChannel->vibratoDelay = m64_read_u8(state) * 0x10;
                    break;

                case 0xD4:
                    seqChannel->reverbVol = m64_read_u8(state);
                    break;

                case 0xC6:
                    cmd = m64_read_u8(state);
                    sp5A = ((u16 *) gAlBankSets)[seqPlayer->seqId];
                    loBits = *(sp5A + gAlBankSets);
                    cmd = gAlBankSets[(sp5A + loBits) - cmd];
                    if (get_bank_or_seq(1, 2, cmd) != NULL) {
                        seqChannel->bankId = cmd;
                    }
                    break;

                case 0xC7:
                    cmd = m64_read_u8(state);
                    sp5A = m64_read_s16(state);
                    seqData = seqPlayer->seqData + sp5A;
                    *seqData = ((u8) value) + cmd;
                    break;

                case 0xC8:
                case 0xC9:
                case 0xCC:
                    temp = m64_read_u8(state);
                    if (cmd == 0xC8) {
                        value -= temp;
                    } else if (cmd == 0xCC) {
                        value = temp;
                    } else {
                        value &= temp;
                    }
                    break;

                case 0xCA:
                    seqChannel->muteBehavior = m64_read_u8(state);
                    break;

                case 0xCB:
                    sp38 = ((u16) m64_read_s16(state)) + value;
                    value = seqPlayer->seqData[sp38];
                    break;

                case 0xD0:
                    seqChannel->stereoHeadsetEffects = m64_read_u8(state);
                    break;

                case 0xD1:
                    seqChannel->noteAllocPolicy = m64_read_u8(state);
                    break;

                case 0xD2:
                    seqChannel->adsr.sustain = m64_read_u8(state);
                    break;

                case 0xE5:
                    seqChannel->reverbIndex = m64_read_u8(state);
                    break;

                case 0xE4:
                    if (value != (-1)) {
                        if (state->depth);
                        seqData = (*seqChannel->dynTable)[value];
                        state->stack[state->depth++] = state->pc;
                        sp38 = (u16) ((seqData[0] << 8) + seqData[1]);
                        state->pc = seqPlayer->seqData + sp38;
                    }
                    break;

                case 0xE6:
                    seqChannel->bookOffset = m64_read_u8(state);
                    break;

                case 0xE7:
                    sp5A = m64_read_s16(state);
                    seqData = seqPlayer->seqData + sp5A;
                    seqChannel->muteBehavior = *(seqData++);
                    seqChannel->noteAllocPolicy = *(seqData++);
                    seqChannel->notePriority = *(seqData++);
                    seqChannel->transposition = (s8) (*(seqData++));
                    seqChannel->newPan = *(seqData++);
                    seqChannel->panChannelWeight = *(seqData++);
                    seqChannel->reverbVol = *(seqData++);
                    seqChannel->reverbIndex = *(seqData++);
                    seqChannel->changes.as_bitfields.pan = 1;
                    break;

                case 0xE8:
                    seqChannel->muteBehavior = m64_read_u8(state);
                    seqChannel->noteAllocPolicy = m64_read_u8(state);
                    seqChannel->notePriority = m64_read_u8(state);
                    seqChannel->transposition = (s8) m64_read_u8(state);
                    seqChannel->newPan = m64_read_u8(state);
                    seqChannel->panChannelWeight = m64_read_u8(state);
                    seqChannel->reverbVol = m64_read_u8(state);
                    seqChannel->reverbIndex = m64_read_u8(state);
                    seqChannel->changes.as_bitfields.pan = 1;
                    break;

                case 0xEC:
                    seqChannel->vibratoExtentTarget = 0;
                    seqChannel->vibratoExtentStart = 0;
                    seqChannel->vibratoExtentChangeDelay = 0;
                    seqChannel->vibratoRateTarget = 0;
                    seqChannel->vibratoRateStart = 0;
                    seqChannel->vibratoRateChangeDelay = 0;
                    seqChannel->freqScale = 1.0f;
                    break;

                case 0xE9:
                    seqChannel->notePriority = m64_read_u8(state);
                    break;

                case 0xEF:
                    m64_read_s16(state);
                    m64_read_u8(state);
                    break;
                }
            } else {
                loBits = cmd & 0xf;
                switch (cmd & 0xF0) {
                case 0x0:
                    if (seqChannel->layers[loBits] != NULL) {
                        value = seqChannel->layers[loBits]->finished;
                    } else {
                        value = -1;
                    }
                    break;

                case 0x70:
                    seqChannel->soundScriptIO[loBits] = value;
                    break;

                case 0x80:
                    value = seqChannel->soundScriptIO[loBits];
                    if (loBits < 4) {
                        seqChannel->soundScriptIO[loBits] = -1;
                    }
                    break;

                case 0x50:
                    value -= seqChannel->soundScriptIO[loBits];
                    break;

                case 0x60:
                    seqChannel->delay = loBits;
                    goto out;

                case 0x90:
                    sp5A = m64_read_s16(state);
                    if (seq_channel_set_layer(seqChannel, loBits) == 0) {
                        seqChannel->layers[loBits]->scriptState.pc = seqPlayer->seqData + sp5A;
                    }
                    break;

                case 0xA0:
                    seq_channel_layer_free(seqChannel, loBits);
                    break;

                case 0xB0:
                    if ((value != (-1)) && (seq_channel_set_layer(seqChannel, loBits) != (-1))) {
                        seqData = (*seqChannel->dynTable)[value];
                        sp5A = (seqData[0] << 8) + seqData[1];
                        seqChannel->layers[loBits]->scriptState.pc = seqPlayer->seqData + sp5A;
                    }
                    break;

                case 0x10:
                    sp5A = m64_read_s16(state);
                    sequence_channel_enable(seqPlayer, loBits, seqPlayer->seqData + sp5A);
                    break;

                case 0x20:
                    sequence_channel_disable(seqPlayer->channels[loBits]);
                    break;

                case 0x30:
                    cmd = m64_read_u8(state);
                    seqPlayer->channels[loBits]->soundScriptIO[cmd] = value;
                    break;

                case 0x40:
                    cmd = m64_read_u8(state);
                    value = seqPlayer->channels[loBits]->soundScriptIO[cmd];
                    break;
                }
            }
        }
    }
    out:
    for (i = 0; i < LAYERS_MAX; i++) {
        if (seqChannel->layers[i] != 0) {
            seq_channel_layer_process_script(seqChannel->layers[i]);
        }
    }
}

#ifdef MIPS_TO_C
//generated by m2c commit eefca95b040d7ee0c617bc58f9ac6cd1cf7bce87 on Aug-14-2023
? func_800BB584(u8, u8 **, s32 *);                  /* extern */
? sequence_channel_process_script(s32);                               /* extern */
extern s16 gTempoInternalToExternal;

void sequence_player_process_sequence(struct SequencePlayer *arg0) {
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
                if (temp_v0_3 >= gTempoInternalToExternal) {
                    temp_a0 = arg0->delay;
                    arg0->tempoAcc = temp_v0_3 - gTempoInternalToExternal;
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
                                    if (gTempoInternalToExternal < (s32) var_v0_2) {
                                        arg0->tempo = (u16) gTempoInternalToExternal;
                                        var_v0_2 = gTempoInternalToExternal & 0xFFFF;
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
                            sequence_channel_process_script((s32) temp_a0_5);
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
GLOBAL_ASM("asm/non_matchings/audio/seqplayer/sequence_player_process_sequence.s")
#endif

void process_sequences(s32 iterationsRemaining) {
    s32 i;
    for (i = 0; i < SEQUENCE_PLAYERS; i++) {
        if (gSequencePlayers[i].enabled == TRUE) {
            sequence_player_process_sequence(&gSequencePlayers[i]);
            sequence_player_process_sound(&gSequencePlayers[i]);
        }
    }
    process_notes();
}

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
