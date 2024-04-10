# Mario Kart 64
This work-in-progress decompilation of Mario Kart 64 pursues historical and educational elements within the game found via taking it apart and putting it back together. Inspiration to do so not only emanates from the game's hardware and technology but also its immensely positive effects on the cultures and families of nearly every nationality.

This repository does not contain assets. Compiling requires asset extraction from a prior copy of the game.

It supports and builds the following versions:

| ROM Output        | Revision| SHA-1 Checksum                           |
|-------------------|---------|------------------------------------------|
| mk64.us.z64       | USA     | 579c48e211ae952530ffc8738709f078d5dd215e |
| mk64.eu-1.0.z64   | EUR 1.0 | a729039453210b84f17019dda3f248d5888f7690 |
| mk64.eu-final.z64 | EUR 1.1 | f6b5f519dd57ea59e9f013cc64816e9d273b2329 |

## Progress

Total progress consists of all code segments together.

Game code progress consists of `main`, `ending` and `racing`.

[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=totalProgress)](https://ci.valandil.ca/job/mk64/job/master/)
[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=gameProgress)](https://ci.valandil.ca/job/mk64/job/master/)

[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=bytesLeft)](https://ci.valandil.ca/job/mk64/job/master/)
[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=m2c)](https://ci.valandil.ca/job/mk64/job/master/)
[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=nonmatching)](https://ci.valandil.ca/job/mk64/job/master/)  

- [![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=mainProgress)](https://ci.valandil.ca/job/mk64/job/master/)
- [![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=endingProgress)](https://ci.valandil.ca/job/mk64/job/master/)
- [![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=racingProgress)](https://ci.valandil.ca/job/mk64/job/master/)
- [![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=audioProgress)](https://ci.valandil.ca/job/mk64/job/master/)
- [![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=osProgress)](https://ci.valandil.ca/job/mk64/job/master/)

## Quick Start

```
git submodule update --init --recursive
```
```
./build.sh
```

## Building

Build instructions located in the [API docs](https://n64decomp.github.io/mk64/compiling.html)  
See also, the comprehensive API and documentation which includes an overview of the code-base while also discussing significant concepts, features, and modding.

## Current State

The code-base may change significanty overtime as naming and documentation continues. The code-base is shiftable.

Some menu textures are compressed using a format called tkmk00. A byte-matching compressor/decompressor does not yet exist.   

## Project Structure
	
	mk64
	├── asm: Handwritten assembly code, rom header and boot
	│   ├── non_matchings: Assembly for non-matching sections
	│   └── os: Libultra handwritten assembly code
	├── assets: Textures
	├── courses: Course data, geography, display lists and staff ghosts
	├── build: Output directory
	├── data: Misc data, text, audio banks, and instrument sets
	├── docs: Build guides
	├── include: Header files
	├── music: Sequences
	├── src: C source code for the game
	|   ├── actors: Individual actors split out from other files
	│   ├── audio: Sample tables and audio code
	│   ├── data: Misc data referenced in other C files
	|   ├── debug: Custom debug code
	|   ├── ending: Podium ceremony and credits code
	│   ├── os: Libultra C code
	|   └── racing: Race and game engine code
	├── textures: Texture data, bitmaps
	|   ├── common: Textures common to many courses
	|   ├── courses: Course specific textures
	|   ├── crash screen: Crash screen font image
	│   ├── raw: Raw textures
    │   ├── standalone: Whole textures
	|   ├── startup_logo: Reflection map
	|   └── trophy: Ceremony cutscene podium and trophy textures
	└── tools: build tools

## Documentation

Documentation available online at [https://n64decomp.github.io/mk64/](https://n64decomp.github.io/mk64/).

Documentation generated using [Doxygen](https://www.doxygen.nl/index.html). Run `make doc` to test locally. Documentation resides in `docs/html`. Open index.html to view the site.

## Contributing

Pull requests are welcome. For major changes, please discuss in the Discord.

Run `clang-format` on your code to ensure it meets the project's coding standards.

Official Discord: [discord.gg/DuYH3Fh](https://discord.gg/DuYH3Fh)
