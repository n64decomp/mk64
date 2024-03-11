import re
import argparse

def convert(file):
    open_file = open(file, 'r')
    lines = open_file.readlines()
    lines_out = []
    for line in lines:
        if re.match(r" *\{\{ *-*\d+, *-*\d+, *-*\d+\}, *\{ *-*\d+, *-*\d+\}, *\{.*, *.*, *.*, *.*\}\},\n", line):
            get_number:str = re.findall(r"\{\{ *-*\d+, *-*\d+, *-*\d+\}, *\{ *-*\d+, *-*\d+}, *\{(.*, *.*, *.*), *.*\}\},", line)
            if get_number[0].startswith("MACRO_COLOR_FLAG"):
                lines_out.append(line)
                continue
            r, g, b = get_number[0].split(',')
            r = int(r.strip(), 16)
            g = int(g.strip(), 16)
            b = int(b.strip(), 16)
            flag = r & 0b11 | (g<<2) & 0b1100
            r = r & ~0b11
            g = g & ~0b11
            out = f"MACRO_COLOR_FLAG({r:#04x}, {g:#04x}, {b:#04x}, {flag})"
            lines_out.append(re.sub(r"( *\{\{ *-*\d+, *-*\d+, *-*\d+\}, *\{ *-*\d+, *-*\d+\}, *\{).*, *.*, *.*(, *.*\}\},\n)", fr"\1{out}\2", line))
        else:
            lines_out.append(line)
    
    return lines_out

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description='Convert colors')
    parser.add_argument('file', metavar='file', type=str, help='input file', nargs='+')
    args = parser.parse_args()
    for file in args.file:
        lines = convert(file)
        open_file = open(file, 'w')
        open_file.writelines(lines)