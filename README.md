# Mario Kart 64

This repo contains a work in progress decompilation of Mario Kart 64 (U).

It builds the following ROMs:

* mk64.us.z64 `sha1: 579c48e211ae952530ffc8738709f078d5dd215e`

Integration of asset extraction is an ongoing process.

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

`sudo dpkg -i qemu-irix-2.11.0-2169-g32ab296eef_amd64.deb`

(Optional) Clone https://github.com/n64decomp/qemu-irix and follow the install instructions in the README.

## Building

Place a US version of Mario Kart 64 called `baserom.<VERSION>.z64` into the project folder for asset extraction.

Run the following commands after pulling:

* make -C tools
* make

## Contributing


Pull requests are welcome.

Run `clang-format` on your code to ensure it meets the project's coding standards.

Official Discord: [discord.gg/DuYH3Fh](https://discord.gg/DuYH3Fh)
