#!/bin/bash

# --- Useful Variables --- #

# This is the specific binutils version that will be downloaded
binutils=binutils-2.36

# Where the built files will end up. 
# If this directory doesn't already exist it will be created automatically.
destFolder=./tools/binutils

# The temporary folder name to work from.
tempFolder=build_temp

# The prefix appended to the start of the built files.
prefix=mips64-elf-

# Folder names within the binutils directory.
binFolder=binutils
ldFolder=ld
gasFolder=gas

# How many threads to use with make (All of them)
threadCount=$(nproc --all)

# --- Useful Macros --- #

PRINT_STEP () {
echo "($1) ==== $2 ==== "
}

INSTALL_FILE() {
cp ./$tempFolder/$binutils/$2/$1 $destFolder/$prefix$1
echo "Installed mips64-elf-$1"
}

RENAME_AND_INSTALL_FILE() {
cp ./$tempFolder/$binutils/$2/$1 $destFolder/$prefix$3
echo "Installed mips64-elf-$3"
}

# --- Script --- #

# Make the destintation folder if it already doesn't exist.
mkdir -p $destFolder

# Having a temp folder makes things easy to cleanup
#rm -Rf $tempFolder # This will remove the temp folder if it exists for some reason.
mkdir $tempFolder
cd $tempFolder

PRINT_STEP 1 "DOWNLOADING BINUTILS FROM GNU.ORG"
wget ftp://ftp.gnu.org/gnu/binutils/$binutils.tar.xz

PRINT_STEP 2 "EXTRACTING TAR FILE"
tar -xf $binutils.tar.xz

PRINT_STEP 3 "CONFIGURING THE MAKEFILE"
cd $binutils

# Credit goes to queueRAM for letting me know what the correct arguments are.
./configure --target=mips64-elf --prefix=/usr --with-sysroot=/usr/mips64-elf --with-gnu-as --with-gnu-ld --enable-64-bit-bfd --enable-multilib --enable-plugins --disable-gold --disable-nls --disable-shared --disable-werror

PRINT_STEP 4 "MAKING BINUTILS"
make -j$threadCount

cd ../..

PRINT_STEP 5 "INSTALLING BUILT FILES"

# Add or remove programs here.
INSTALL_FILE ar $binFolder
INSTALL_FILE objcopy $binFolder
INSTALL_FILE objdump $binFolder
RENAME_AND_INSTALL_FILE as-new $gasFolder as
RENAME_AND_INSTALL_FILE ld-new $ldFolder ld

PRINT_STEP 6 "CLEANING UP"
#rm -Rf $tempFolder

PRINT_STEP - "DONE!"
