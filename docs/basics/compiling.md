@page compiling Installing mk64 Decomp
# Build Instructions
The build system has the following package requirements:

    binutils-mips >= 2.27
    python3 >= 3.6
    libaudiofile

[TOC]

To add submodules run `git submodule update --init --recursive` after cloning.

# Linux
```
sudo apt install build-essential pkg-config git binutils-mips-linux-gnu python3 zlib1g-dev libaudiofile-dev libcapstone-dev
```

### Arch

```
sudo pacman -S base-devel capstone python
```
Install the following AUR package:
* [mips64-elf-binutils](https://aur.archlinux.org/packages/mips64-elf-binutils) (AUR)

Review the [n64decomp/sm64](https://github.com/n64decomp/sm64) readme for instructions to compile in other distributions.

# Windows

Not recommended. Use WSL unless this is your only option. 

[Instructions here](buildwindows.html)

# macOS

Install [Homebrew](https://brew.sh), then install the following dependencies:
```
brew update
brew install python3 capstone coreutils make pkg-config tehzz/n64-dev/mips64-elf-binutils
```

Build using `gmake` ensuring homebrew `make` is used instead of the old macOS system `make`.

# Docker

Build the Docker image:
```
docker build -t mk64 .
```

When building and using other tools, append the following in front of every command you run:
```bash
docker run --rm -v ${PWD}:/mk64 mk64
```

For example:
```bash
docker run --rm -v ${PWD}:/mk64 mk64 make -C tools
docker run --rm -v ${PWD}:/mk64 mk64 make
```

# Building US

Place a US version of Mario Kart 64 called `baserom.us.z64` into the project folder for asset extraction.

Run the following commands after pulling:
```bash
make -C tools
make -j
```

# Building EU

Building EU requires US to be built first. See above.

mk64 decomp supports two EU versions
* EU 1.0 `eu-1.0`
* EU 1.1 `eu-final`

Build using
```
make -j VERSION=eu-1.0
```
or
```
make -j VERSION=eu-final
```

First-diff/diff commands for EU
```
python3 first-diff.py --eu
./diff <function> -eu
```