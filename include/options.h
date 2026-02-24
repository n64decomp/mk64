#ifndef OPTIONS_H
#define OPTIONS_H

// Tracks option
typedef enum TracksOption {
    TRACKS_DEFAULT = 0,
    TRACKS_RANDOM = 1,
} TracksOption;

// Game options struct - extendable
// Use plain C integer types to avoid depending on <stdint.h> in cross
// toolchains that may not provide it in the include path.
typedef struct GameOptions {
    unsigned char tracks; // TracksOption
} GameOptions;

extern GameOptions gOptions;

#endif // OPTIONS_H
