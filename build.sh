arg=-j
echo $1
if [ $1 == "clean" ]; then
    arg=clean
elif [ $1 == "single-thread" ]; then
    arg=-j1
fi

make -C tools $arg || exit 1
if [ ! $arg == "clean" ]; then
    make assets || exit 1
fi
make $arg || exit 1