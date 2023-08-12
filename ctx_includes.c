#include "include/libc/math.h"
#include "include/libc/stdarg.h"
#include "include/libc/stddef.h"
#include "include/libc/stdio.h"
#include "include/libc/stdlib.h"
#include "include/libc/string.h"
#include "include/actor_types.h"
#include "include/common_structs.h"
#include "include/config.h"
#include "include/course_offsets.h"
#include "include/defines.h"
#include "include/functions.h"
#include "include/global.h"
#include "include/kart_attributes.h"
#include "include/macros.h"
#include "include/objects.h"
#include "include/segment_symbols.h"
#include "include/segments.h"
#include "include/sounds.h"
#include "include/trig_tables.h"
#include "include/types.h"
#include "include/ultra64.h"
#include "include/variables.h"
#include "include/vehicles.h"
#include "include/waypoints.h"
#include "include/PR/abi.h"
#include "include/PR/gbi.h"
#include "include/PR/gs2dex.h"
#include "include/PR/gu.h"
#include "include/PR/libaudio.h"
#include "include/PR/libultra.h"
#include "include/PR/mbi.h"
#include "include/PR/os.h"
#include "include/PR/os_ai.h"
#include "include/PR/os_cache.h"
#include "include/PR/os_cont.h"
#include "include/PR/os_eeprom.h"
#include "include/PR/os_exception.h"
#include "include/PR/os_internal.h"
#include "include/PR/os_libc.h"
#include "include/PR/os_message.h"
#include "include/PR/os_misc.h"
#include "include/PR/os_pi.h"
#include "include/PR/os_rdp.h"
#include "include/PR/os_thread.h"
#include "include/PR/os_time.h"
#include "include/PR/os_tlb.h"
#include "include/PR/os_vi.h"
#include "include/PR/R4300.h"
#include "include/PR/rcp.h"
#include "include/PR/sptask.h"
#include "include/PR/ucode.h"
#include "include/PR/ultratypes.h"
#include "src/os/bstring.h"
#include "src/os/controller.h"
#include "src/os/hardware.h"
#include "src/os/libaudio_internal.h"
#include "src/os/libultra_internal.h"
#include "src/os/new_func.h"
#include "src/os/osAi.h"
#include "src/os/osContInternal.h"
#include "src/os/osint.h"
#include "src/os/piint.h"
#include "src/os/printf.h"
#include "src/audio/data.h"
#include "src/audio/effects.h"
#include "src/audio/external.h"
#include "src/audio/heap.h"
#include "src/audio/internal.h"
#include "src/audio/load.h"
#include "src/audio/playback.h"
#include "src/audio/port_eu.h"
#include "src/audio/seqplayer.h"
#include "src/audio/synthesis.h"
#include "src/actors.h"
#include "src/actors_extended.h"
#include "src/camera.h"
#include "src/camera_junk.h"
#include "src/ceremony_and_credits.h"
#include "src/common_textures.h"
#include "src/credits.h"
#include "src/data_segment2.h"
#include "src/framebuffers.h"
#include "src/kart_dma.h"
#include "src/main.h"
#include "src/math_util.h"
#include "src/math_util_2.h"
#include "src/memory.h"
#include "src/menus.h"
#include "src/profiler.h"
#include "src/race_logic.h"
#include "src/render_courses.h"
#include "src/skybox_and_splitscreen.h"
#include "src/spawn_players.h"
#include "src/staff_ghosts.h"
#include "src/textures.h"
#include "src/code_800029B0.h"
#include "src/code_80004740.h"
#include "src/code_80005FD0.h"
#include "src/code_8001F980.h"
#include "src/code_80027D00.h"
#include "src/code_8003DC40.h"
#include "src/hud_renderer.h"
#include "src/code_80057C60.h"
#include "src/code_8006E9C0.h"
#include "src/code_80071F00.h"
#include "src/code_80086E70.h"
#include "src/code_8008C1D0.h"
#include "src/code_80091440.h"
#include "src/code_80091750.h"
#include "src/code_800AF9B0.h"
#include "src/code_800B45E0.h"
#include "src/code_80280000.h"
#include "src/podium_ceremony_actors.h"
#include "src/code_80281780.h"
#include "src/code_80281C40.h"
#include "src/code_802AAA70.h"
