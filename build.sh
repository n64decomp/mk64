arg=-j
echo $1
if [ $1 == "clean" ]; then
    arg=clean
elif [ $1 == "single-thread" ]; then
    arg=-j1
fi

make -C tools $arg
if [ ! $arg == "clean" ]; then
    make assets
fi
make $arg