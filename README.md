# Mario Kart 64

MP is currently not functional. PR's accepted. Please open an issue if a bug is found.
Functionally equivallent code is accepted. All code must be inspired from legitimate sources and analysis of the game.

Current progress:
Game logic allows all eight players to cross finish line without failing.
Eighth player is forced to complete the race by turning into a CPU.

Todo:
Skip certain menu elements
Pause at end of races until everyone is ready to continue
Possibly edit ending sequence but it should be okay.
Make race end regardless of where the eighth player is on the map.
Prevent character scrolling banner from popping up until all players have finished.

Extras:
Possibly balance kart stats

This repo contains a work-in-progress decompilation of Mario Kart 64 (U). The project pursues historical and educational elements found within the game via taking it apart and putting it back together. Inspiration to do so not only emanates from the game's hardware and technology but also its immensely positive effects on the cultures and families of nearly every nationality. See [progress](#Progress) for more information.

It builds the following ROM:

* mk64.us.z64 `sha1: 579c48e211ae952530ffc8738709f078d5dd215e`

This repository does not contain assets. Compiling requires asset extraction from a prior copy of the game.

## Dependencies

The build system has the following package requirements:

    binutils-mips >= 2.27
    python3 >= 3.6
    libaudiofile
    qemu-irix

Debian / Ubuntu
```
sudo apt install build-essential pkg-config git binutils-mips-linux-gnu python3 zlib1g-dev libaudiofile-dev
```
Download latest package from qemu-irix Releases
```
sudo dpkg -i qemu-irix-2.11.0-2169-g32ab296eef_amd64.deb
```
(Optional) Clone https://github.com/n64decomp/qemu-irix and follow the install instructions in the README.

## Building

Place a US version of Mario Kart 64 called `baserom.us.z64` into the project folder for asset extraction.

Run the following commands after pulling:

* make -C tools
* make

## Progress

The Mario Kart 64 code-base contains thirty-six C files, around twenty-eight files remain for decompilation. This does not account for other kinds of files such as data. The source is in an experimental 'shiftable' state that may allow modding but glitches and crashes are prevalent and the code-base will alter significantly overtime. As such, feedback that raises awareness of new issues are welcome. Please review issue #1 prior to issue submission to avoid duplicates.

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
	│   └── audio: sample tables
	├── textures: texture data, bitmaps
	│   ├── raw: raw textures
  	│   └── standalone: whole textures
	└── tools: build tools

## Contributing

Pull requests are welcome. For major changes, please open an issue first to
discuss what you would like to change.

Run `clang-format` on your code to ensure it meets the project's coding standards.

Official Discord: [discord.gg/DuYH3Fh](https://discord.gg/DuYH3Fh)
