#!/usr/bin/env python3

import os
import sys
import math
import json
import shutil
import struct
import tempfile
import subprocess

# Maps asset names to temporary files containing the raw asset data
# Only really useful for asset groups that use shared palettes
# Otherwise, its a little overkill
raw_asset_files = dict()
assets_requested = set()

def get_asset_raw(baserom, asset):
    global raw_asset_files
    global assets_requested

    asset_name = asset["name"]
    # If available, return a saved file handle to the asset
    if asset_name in raw_asset_files:
        raw_asset_files[asset_name].seek(0)
        return raw_asset_files[asset_name]

    # Otherwise, extract it
    raw_file = extract_asset(baserom, asset)

    # If the asset has been requested before, save the file handle
    if asset_name in assets_requested:
        raw_asset_files[asset_name] = raw_file
    # Otherwise, just mark the asset as being requested once before
    else:
        assets_requested.add(asset_name)

    return raw_file

def extract_asset(baserom, asset):
    rom_offset = int(asset["rom_offset"], 16)
    baserom.seek(rom_offset)
    asset_magic = baserom.read(4)

    if asset_magic == b"MIO0":
        asset_block = extract_mio0_block(baserom, asset)
    elif asset_magic == b"TKMK":
        asset_block = extract_tkmk_block(baserom, asset)
    else: # Raw asset, no compression
        # This is silly
        asset_block = baserom
        asset_block.seek(rom_offset)

    return asset_from_block(asset_block, asset)

def asset_from_block(asset_block, asset):
    if asset["type"] in { "ia1" }:
        asset_size = ((asset["width"] * asset["height"]) + 7) // 8
    elif asset["type"] in { "ci4", "ia4", "i4" }:
        asset_size = ((asset["width"] * asset["height"]) + 1) // 2
    elif asset["type"] in { "ci8", "ia8", "i8" }:
        asset_size = asset["width"] * asset["height"]
    elif asset["type"] in { "ia16", "rgba16" }:
        asset_size = asset["width"] * asset["height"] * 2
    elif asset["type"] in { "rgba32" }:
        asset_size = asset["width"] * asset["height"] * 4
    elif asset["type"] in { "bin" }:
        asset_size = asset["size"]
    else:
        print("TODO: raise an exception here")
        return None

    # If not specified, assume the asset begins at the start of the block
    block_offset = int(asset.get("block_offset", "0x0"), 16)
    # The SEEK_CUR here is incredibly silly, but its done to make the
    # similarly silly raw block handling work.
    # For MIO0 and TKMK this should make no difference
    asset_block.seek(block_offset, os.SEEK_CUR)
    asset_data = asset_block.read(asset_size)

    asset_file = tempfile.NamedTemporaryFile(mode="wb", prefix="raw_asset_")
    asset_file.write(asset_data)
    asset_file.flush()

    return asset_file

# This dict maps ROM offsets to file-like objects. This way we don't have to keep
# decompressing/collecting the same block of MIO0 data from the baserom
mio0_blocks = dict()
mio0s_requested = set()

def extract_mio0_block(baserom, asset):
    global mio0_blocks
    global mio0s_requested

    rom_offset = asset["rom_offset"]
    if rom_offset in mio0_blocks:
        mio0_blocks[rom_offset].seek(0)
        return mio0_blocks[rom_offset]

    mio0_file = tempfile.NamedTemporaryFile(mode="rb", prefix="mio0_block_")
    subprocess.run(
        [
            "./tools/mio0",
            "-d",
            "-o", rom_offset,
            baserom.name,
            mio0_file.name,
        ],
        check=True
    )

    if rom_offset in mio0s_requested:
        mio0_blocks[rom_offset] = mio0_file
    else:
        mio0s_requested.add(rom_offset)

    return mio0_file

def extract_tkmk_block(baserom, asset):
    rom_offset = asset["rom_offset"]
    alpha = asset.get("alpha", "0x01")
    tkmk_block = tempfile.NamedTemporaryFile(mode="rb", prefix="tkmk_block_")
    subprocess.run(
        [
            "./tools/tkmk00",
            "-d",
            "-o", rom_offset,
            "-a", alpha,
            baserom.name,
            tkmk_block.name,
        ],
        check=True,
    )

    return tkmk_block

def export_stitched_palette(baserom, asset, asset_list):
    palette_raw = tempfile.NamedTemporaryFile(mode="wb", prefix="stitched_palette")

    # For stitched palettes, expect the "tlut" key to be a list of strings
    for tlut_name in asset["tlut"]:
        tlut = asset_list[tlut_name]
        tlut_file = get_asset_raw(baserom, tlut)

        with open(tlut_file.name, "rb") as f:
            shutil.copyfileobj(f, palette_raw)
    palette_raw.flush()

    output_dir = os.path.join(asset["output_dir"], "stitched_palettes")
    stitched_file_name = os.path.join(output_dir, f'{asset["name"]}_stitched_palette.png')

    os.makedirs(output_dir, exist_ok=True)

    cmd = [
        "./tools/n64graphics",
        "-e", palette_raw.name,
        "-g", stitched_file_name,
        # While hard coding stuff like this is usually bad, its justifiable here
        "-f", "rgba16",
        "-w", "16",
        "-h", "16",
    ]
    subprocess.run(cmd, check=True)

    return palette_raw

def export_wheel_mask(asset_file, asset):
    output_dir = os.path.join(asset["output_dir"], "wheel_masks")
    wheel_mask_file_name = os.path.join(output_dir, f'{asset["name"]}_wheel_mask.raw')

    os.makedirs(output_dir, exist_ok=True)

    with open(asset_file.name, "rb") as f, open(wheel_mask_file_name, mode="wb") as wheel_mask:
        for index in f.read():
            # This is super-duper specific to MK64
            if index < 0xC0:
                wheel_mask.write((0).to_bytes(1, "big"))
            else:
                wheel_mask.write((1).to_bytes(1, "big"))

def export_image(baserom, asset, asset_list):
    asset_file = get_asset_raw(baserom, asset)

    asset_png_filename = os.path.join(asset["output_dir"], f'{asset["name"]}.png')

    os.makedirs(asset["output_dir"], exist_ok=True)

    cmd = [
        "./tools/n64graphics",
        "-e", asset_file.name,
        "-g", asset_png_filename,
        "-f", asset["type"],
        "-w", str(asset["width"]),
        "-h", str(asset["height"]),
    ]

    if asset["type"] in ("ci4", "ci8"):
        # This is hightly specific to MK64:
        # Some TLUT images have a "stitched palette". This means that they're palette is actually
        # two smaller palettes stitched together.
        if "stitched_palette" in asset.get("meta", set()):
            palette_file = export_stitched_palette(baserom, asset, asset_list)

            # If the image uses a "stitched palette" we need to create a "wheel mask" file too
            export_wheel_mask(asset_file, asset)

        # The palette is "normal", expect the "tlut" key to be a single string
        else:
            tlut = asset_list[asset["tlut"]]
            palette_file = get_asset_raw(baserom, tlut)

        cmd.extend([
            "-c", "rgba16", # I don't think anything other than rgba16 is even valid for N64 stuff...
            "-p", palette_file.name
        ])

    subprocess.run(cmd, check=True)

def export_bin(baserom, asset):
    asset_filename = os.path.join({asset["output_dir"]}, f'{asset["name"]}.{asset["type"]}')
    os.makedirs(asset["output_dir"], exist_ok=True)

    with open(asset_filename, "wb") as asset_file:
        baserom.seek(int(asset["rom_offset"], 16))
        asset_data = baserom.read(int(asset["size"], 16))
        asset_file.write(asset_data)

# TODO: use a proper argument parser
baserom_name = sys.argv[1]
# really, this should be a list of json files, that way we can just do $< in the Makefile
assest_json_file = sys.argv[2]

image_types = { "rgba16", "rgba32", "ci4", "ci8", "i4", "i8", "ia4", "ia8", "ia16", "ia1" }
# Types that extracted as-is from the ROM. No decompression or converting, just rip the bytes out of the ROM
# Hopefully some day in the future we'll be able to properly extract m64 types (music of one variety or another)
raw_types = { "bin", "m64" }

try:
    with open(baserom_name, "rb") as baserom, open(assest_json_file, "r") as json_file:
        asset_list = json.load(json_file)

        for asset_name, asset in asset_list.items():
            # Kind of silly, but makes assets easier to work with
            asset["name"] = asset_name
            # All output directories are relative to the directory the json file resides in
            asset["output_dir"] = os.path.join(os.path.dirname(os.path.realpath(assest_json_file)), asset["output_dir"])

        for asset_name, asset in asset_list.items():
            if asset["type"] in image_types:
                export_image(baserom, asset, asset_list)
            elif asset["type"] in raw_types:
                export_bin(baserom, asset)
            else:
                # Should we raise here?
                print(f"Unexpected asset type {0}", asset["type"])

except Exception as e:
    print(e.strerror)
