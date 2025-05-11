#!/usr/bin/env python3
import sys
import os
import json


def read_asset_map():
    with open("assets.json") as f:
        ret = json.load(f)
    return ret


def read_local_asset_list(f):
    if f is None:
        return []
    ret = []
    for line in f:
        ret.append(line.strip())
    return ret


def asset_needs_update(asset, version):
    return False


def remove_file(fname):
    os.remove(fname)
    print("deleting", fname)
    try:
        os.removedirs(os.path.dirname(fname))
    except OSError:
        pass


def clean_assets(local_asset_file):
    assets = set(read_asset_map().keys())
    assets.update(read_local_asset_list(local_asset_file))
    for fname in list(assets) + [".assets-local.txt"]:
        if fname.startswith("@"):
            continue
        try:
            remove_file(fname)
        except FileNotFoundError:
            pass


def main():
    # In case we ever need to change formats of generated files, we keep a
    # revision ID in the local asset file.
    new_version = 1

    try:
        local_asset_file = open(".assets-local.txt")
        local_asset_file.readline()
        local_version = int(local_asset_file.readline().strip())
    except Exception:
        local_asset_file = None
        local_version = -1

    langs = sys.argv[1:]
    if langs == ["--clean"]:
        clean_assets(local_asset_file)
        sys.exit(0)

    all_langs = ["us", "eu.v10", "eu.v11"]
    if not langs or not all(a in all_langs for a in langs):
        langs_str = " ".join("[" + lang + "]" for lang in all_langs)
        print("Usage: " + sys.argv[0] + " " + langs_str)
        print("For each version, baserom.<version>.z64 must exist")
        sys.exit(1)

    asset_map = read_asset_map()
    all_assets = []
    any_missing_assets = False
    for asset, data in asset_map.items():
        if asset.startswith("@"):
            continue
        if os.path.isfile(asset):
            all_assets.append((asset, data, True))
        else:
            all_assets.append((asset, data, False))
            if not any_missing_assets and any(lang in data["offsets"] for lang in langs):
                any_missing_assets = True

    if not any_missing_assets and local_version == new_version:
        # Nothing to do, no need to read a ROM. For efficiency we don't check
        # the list of old assets either.
        return

    # Late imports (to optimize startup perf)
    import subprocess
    import hashlib
    import tempfile
    from collections import defaultdict
    import math

    new_assets = {a[0] for a in all_assets}

    previous_assets = read_local_asset_list(local_asset_file)
    if local_version == -1:
        # If we have no local asset file, we assume that files are version
        # controlled and thus up to date.
        local_version = new_version

    # Create work list
    todo = defaultdict(lambda: [])
    for (asset, data, exists) in all_assets:
        # Leave existing assets alone if they have a compatible version.
        if exists and not asset_needs_update(asset, local_version):
            continue

        for lang, pos in data["offsets"].items():
            if len(pos) == 1:
                rom_offset = None
                block_offset = None
            else:
                rom_offset = int(pos[0], 0)
                block_offset = int(pos[1], 0)
            if lang in langs:
                todo[(lang, rom_offset)].append((asset, block_offset, data["meta"]))
                break

    # Load ROMs
    roms = {}
    for lang in langs:
        fname = "baserom." + lang + ".z64"
        try:
            with open(fname, "rb") as f:
                roms[lang] = f.read()
        except:
            print("Failed to open " + fname + ". Please ensure it exists!")
            sys.exit(1)
        sha1 = hashlib.sha1(roms[lang]).hexdigest()
        with open("mk64." + lang + ".sha1", "r") as f:
            expected_sha1 = f.read().split()[0]
        if sha1 != expected_sha1:
            print(fname + " has the wrong hash! Found " + sha1 + ", expected " + expected_sha1)
            sys.exit(1)

    # Go through the assets in roughly alphabetical order (but assets in the same
    # compressed block still go together).
    keys = sorted(list(todo.keys()), key=lambda k: todo[k][0][0])

    # Import new assets
    for key in keys:
        assets = todo[key]
        lang, rom_offset = key

        if rom_offset is not None:
            magic = roms[lang][rom_offset:rom_offset + 4]
            if magic == b"MIO0":
                image = subprocess.run(
                    [
                        "./tools/mio0",
                        "-d",
                        "-o", str(rom_offset),
                        "baserom." + lang + ".z64",
                        "-",
                    ],
                    check=True,
                    stdout=subprocess.PIPE,
                ).stdout
            # TODO: binary assets in assets.json for TKMK00 until it is full understood
            elif magic == b"TKMK" and assets[0][0].endswith(".png"):
                (asset, pos, meta) = assets[0]
                image = subprocess.run(
                    [
                        "./tools/tkmk00",
                        "-d",
                        "-o", str(rom_offset),
                        "-a", meta["alpha"],
                        "baserom." + lang + ".z64",
                        "-",
                    ],
                    check=True,
                    stdout=subprocess.PIPE,
                ).stdout
            else: # assume raw texture
                # TODO: This grabs way more data than is necessary
                image = roms[lang][rom_offset:]
        else:
            image = roms[lang]

        for (asset, pos, meta) in assets:
            print("extracting", asset)
            if "size" in meta:
                # TODO: hack for extracting raw binary from MIO0 block
                # hack to build common_textures. Requires more altering to use .bin in general in a mio0 file.
                if assets[0][0].endswith(".bin") and rom_offset == int("0x132B50", 16):
                    size = int(meta["size"], 0)
                elif magic == b"MIO0":

                    size = len(image)
                else:
                    size = int(meta["size"], 0)

            elif "dims" in meta:
                w, h = meta["dims"]
                pixels = w * h
                filename_parts = asset.split(".")
                fmt = filename_parts[-2]
                if fmt.endswith("32"): size = pixels * 4
                elif fmt.endswith("16"): size = pixels * 2
                elif fmt.endswith("8"): size = pixels
                elif fmt.endswith("4"): size = math.ceil(pixels / 2)
                elif fmt == "ia1": size = math.ceil(pixels / 8)
            input = image[pos : pos + size]
            os.makedirs(os.path.dirname(asset), exist_ok=True)
            if asset.endswith(".png"):
                name_file = ""
                with tempfile.NamedTemporaryFile(prefix="asset", delete=False) as tex_file:
                    name_file = tex_file.name
                    tex_file.write(input)
                    tex_file.flush()
                    cmd = [
                            "./tools/n64graphics",
                            "-e", tex_file.name,
                            "-g", asset,
                            "-f", fmt,
                            "-w", str(w),
                            "-h", str(h),
                    ]
                    # For CI textures, filename is <name>.rgba16.ci8.png
                    if fmt == "ci8" or fmt == "ci4":
                        ci_fmt = filename_parts[-3]
                        # palette can be in raw ROM, block CI data is located in, or another block
                        # TODO: might have offset variation in langs
                        pal_size = 2*256 if fmt == "ci8" else 2*16
                        if type(meta["pal"]) is list:
                            pal_offset = int(meta["pal"][0], 0)
                            pal_source = int(meta["pal"][1], 0)
                            if pal_source == 0: # 0 is ROM
                                pal_input = roms[lang][pal_offset : pal_offset + pal_size]
                            else: # assume MIO0 block
                                pal_blk = subprocess.run(["./tools/mio0", "-d", "-o", str(pal_source), "baserom." + lang + ".z64", "-"],
                                                        check=True, stdout=subprocess.PIPE).stdout
                                pal_input = pal_blk[pal_offset : pal_offset + pal_size]
                        else: # pull directly from same block as CI data
                            pal_offset = int(meta["pal"], 0)
                            pal_input = image[pal_offset : pal_offset + pal_size]
                        tmp_pal = tempfile.NamedTemporaryFile(prefix="asset_pal", delete=False)
                        tmp_pal.write(pal_input)
                        tmp_pal.flush()
                        tmp_pal.close()
                        # append the palette commands
                        cmd.extend([
                            "-c", ci_fmt,
                            "-p", tmp_pal.name
                        ])
                subprocess.run(cmd, check=True)
                os.remove(name_file)
            else:
                with open(asset, "wb") as f:
                    f.write(input)

    # Remove old assets
    for asset in previous_assets:
        if asset not in new_assets:
            try:
                remove_file(asset)
            except FileNotFoundError:
                pass

    # Replace the asset list
    output = "\n".join(
        [
            "# This file tracks the assets currently extracted by extract_assets.py.",
            str(new_version),
            *sorted(list(new_assets)),
            "",
        ]
    )
    with open(".assets-local.txt", "w") as f:
        f.write(output)


main()
