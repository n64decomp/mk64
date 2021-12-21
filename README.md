[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=totalProgress)](https://ci.valandil.ca/job/mk64/job/master/)
[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=codeProgress)](https://ci.valandil.ca/job/mk64/job/master/)
[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=audioProgress)](https://ci.valandil.ca/job/mk64/job/master/)

[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=bytesLeft)](https://ci.valandil.ca/job/mk64/job/master/)
[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=m2c)](https://ci.valandil.ca/job/mk64/job/master/)
[![Build Status](https://ci.valandil.ca/buildStatus/icon?job=mk64%2Fmaster&config=nonmatching)](https://ci.valandil.ca/job/mk64/job/master/)  

C Files left: ~23 out of 35
# Mario Kart 64

This repo contains a work-in-progress decompilation of Mario Kart 64 (U). The project pursues historical and educational elements within the game found via taking it apart and putting it back together. Inspiration to do so not only emanates from the game's hardware and technology but also its immensely positive effects on the cultures and families of nearly every nationality. See [progress](#Progress) for more information.

It builds the following ROM:

* mk64.us.z64 `sha1: 579c48e211ae952530ffc8738709f078d5dd215e`

This repository does not contain assets. Compiling requires asset extraction from a prior copy of the game.

## Dependencies

The build system has the following package requirements:

    binutils-mips >= 2.27
    python3 >= 3.6
    libaudiofile

To add submodules run `git submodule update --init --recursive` after cloning.

##### Debian / Ubuntu
```
sudo apt install build-essential pkg-config git binutils-mips-linux-gnu python3 zlib1g-dev libaudiofile-dev
```

##### Arch Linux

To install build dependencies:
```
sudo pacman -S base-devel capstone python
```
Install the following AUR packages:
* [mips64-elf-binutils](https://aur.archlinux.org/packages/mips64-elf-binutils) (AUR)

Review the n64decomp/sm64 readme for instructions to compile in other distributions.

##### Windows

Compiling on Windows requires `MSYS2 MinGW x64`. The setup process is a tad intensive.  

[Instructions here](docs/BUILD_WINDOWS.md)

## Building

Place a US version of Mario Kart 64 called `baserom.us.z64` into the project folder for asset extraction.

Run the following commands after pulling:

* make -C tools
* make

## Progress

The source is in a 'shiftable' state that may allow modding but glitches may exist. Keep in-mind the code-base will alter significantly overtime. Feedback that raises awareness of new shift issues are welcome as a comment on issue #6. Note that some segments must be moved manually to prevent them colliding into each other.  

Some menu textures are compressed using a format called tkmk00. A byte-matching compressor/decompressor does not yet exist.   

## Project Structure
	
	mk64
	├── asm: Handwritten assembly code, rom header and boot
	│   ├── non_matchings: asm for non-matching sections
	│   └── audio: assembly code
	├── bin: Kart textures, course vertex, and textures
	├── build: Output directory
	├── data: Data, text, audio banks, and instrument sets.
	├── include: header files
	├── courses: level scripts, geo layout, offsets and display lists
	├── lib: SDK library code
	├── music: sequences
	├── src: C source code for the game
	│   └── audio: sample tables and audio source
	│   └── os: libultra
	├── textures: texture data, bitmaps
	│   ├── raw: raw textures
  	│   └── standalone: whole textures
	└── tools: build tools

## Contributing

Pull requests are welcome. For major changes, please open an issue first to
discuss what you would like to change.

Run `clang-format` on your code to ensure it meets the project's coding standards.

Official Discord: [discord.gg/DuYH3Fh](https://discord.gg/DuYH3Fh)
