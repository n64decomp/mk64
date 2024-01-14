@page compiling Compiling mk64
## Dependencies

The build system has the following package requirements:

    binutils-mips >= 2.27
    python3 >= 3.6
    libaudiofile

To add submodules run `git submodule update --init --recursive` after cloning.

## EU Specific Steps (All versions)
Both EU builds first requires US to be built first:
```
make -j
```

Now build either EU 1.0 `eu-1.0` or EU 1.1 `eu-final`
```
make -j VERSION=eu-final
```

diff/first-diff commands
```
python3 first-diff.py --eu
./diff <function> -eu
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

#### Docker

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

## Building

Place a US version of Mario Kart 64 called `baserom.us.z64` into the project folder for asset extraction.

Run the following commands after pulling:
```bash
make -C tools
make
```