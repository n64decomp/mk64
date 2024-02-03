@page buildwindows Compiling for Windows
## Compiling mk64 Decomp In Windows

***This method is not recommended nor supported. However, it is the only solution to build in W7/W8. WSL is the path of least resistance, use that not this***

> Building decomp using msys on Windows is a journey..  A journey akin to crawling over broken glass in the dark.
- leogames

But with this setup normally work in 100% of the cases. In case of issue make a issue on github.

### Requirements
- Clone the repo or download the zip on your computer
- Dowload toolchain from [here](https://github.com/coco875/mk64-tools/releases/download/v0.0.2/mips-tools-chain-windows.zip)

### Setup
1. Extract the toolchain in the same folder as the repo (some files will be overwritten, it's normal)
2. Open a terminal in the repo folder and run `"mingw64/bin/make"`
3. Wait for the build to finish and Enjoy!

