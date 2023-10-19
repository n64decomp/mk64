# Mario Kart 64

```diff
- Note -

The decomp has altered its approach to calculating progress.
The Game Code Progress value below is not correct.
The prior calculations had a bug and did not include os code in the total decompilable bytes
due to prior technical restrictions which are now resolved.
```

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

This work-in-progress decompilation of Mario Kart 64 (U) and (E1.0) pursues historical and educational elements within the game found via taking it apart and putting it back together. Inspiration to do so not only emanates from the game's hardware and technology but also its immensely positive effects on the cultures and families of nearly every nationality. See [progress](#Progress) for more information.

It builds the following ROMs:

* mk64.us.z64 `sha1: 579c48e211ae952530ffc8738709f078d5dd215e`
* mk64.eu.z64 `sha1: a729039453210b84f17019dda3f248d5888f7690`

This repository does not contain assets. Compiling requires asset extraction from a prior copy of the game.

## Dependencies

The build system has the following package requirements:

    binutils-mips >= 2.27
    python3 >= 3.6
    libaudiofile

To add submodules run `git submodule update --init --recursive` after cloning.

## EU 1.0 Specific Steps
EU 1.0 first requires asset extraction from US
```
make -j
make -j VERSION=eu
```

#### Debian / Ubuntu
```
sudo apt install build-essential pkg-config git binutils-mips-linux-gnu python3 zlib1g-dev libaudiofile-dev libcapstone-dev
```

#### Arch Linux

To install build dependencies:
```
sudo pacman -S base-devel capstone python
```
Install the following AUR packages:
* [mips64-elf-binutils](https://aur.archlinux.org/packages/mips64-elf-binutils) (AUR)

Review the n64decomp/sm64 readme for instructions to compile in other distributions.

#### Windows

Compiling on Windows requires `MSYS2 MinGW x64`. The setup process is a tad intensive.  

[Instructions here](docs/BUILD_WINDOWS.md)

#### macOS

Install [Homebrew](https://brew.sh), then install the following dependencies:
```
brew update
brew install python3 capstone coreutils make pkg-config tehzz/n64-dev/mips64-elf-binutils
```

When building, use `gmake` to ensure that homebrew `make` is used instead of the old, macOS system `make`.

## Building

Place a US version of Mario Kart 64 called `baserom.us.z64` into the project folder for asset extraction.

Run the following commands after pulling:
```bash
make -C tools
make
```

## Progress

The source is in a 'shiftable' state that may allow modding but glitches may exist. Keep in-mind the code-base will alter significantly overtime. Feedback that raises awareness of new shift issues are welcome as a comment on issue #6. Note that some segments must be moved manually to prevent them colliding into each other.  

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

[Doxygen](https://www.doxygen.nl/index.html) is used to generate documentation. To generate the documentation, run `doxygen Doxyfile` from the project root. The documentation will be generated in the `docs/html` folder.
The documentation is also available online at [https://n64decomp.github.io/mk64/](https://n64decomp.github.io/mk64/).

## Contributing

Pull requests are welcome. For major changes, please discuss in the Discord.

Run `clang-format` on your code to ensure it meets the project's coding standards.

Official Discord: [discord.gg/DuYH3Fh](https://discord.gg/DuYH3Fh)
