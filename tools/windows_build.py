import subprocess

bp = subprocess.Popen("tools/mingw64/w64devkit.exe", stdin=subprocess.PIPE)
bp.stdin.write(b"make assets -j && make -j && exit\n")
bp.stdin.close()
exit(bp.wait())