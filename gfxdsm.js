#!/bin/node
const fs = require('fs');
const { exit } = require('process');

/**
 * Call this script like 
 * 
 * node app.js input_file_here output_file_here
 */
if (process.argv.length !== 4 && process.argv.length !== 5 ) {
  console.error(`Error! Usage: ./${process.argv[1].split('/').slice(-1)[0]} input_file output_file`) 
  exit(1);
}
// get the name of the file to read
const f = fs.readFileSync(process.argv[2]);

let type;
if (Number(process.argv[4]) > -1 && Number(process.argv[4]) < 3) {
    type = Number(process.argv[4]);
} else {
    type = 2;
}

// offset, type
arr = [
    {o: "0x0", t: 3},
    {o: "0x19D0", t: 0}, // path
    {o: "0x1CF8", t: 0}, // more path? or spawn?
    // 0x5400
];

let iter = 8;
// spawn, vtx, ptr, gfx
switch(type) {
    case 0: // Actor Spawn
        iter = 8;
        break;
    case 1: // Vtx
        iter = 16;
        break;
    case 2: // Ptr Addr
        iter = 8;
        break;
}

// parse data to s16
function p(offset) {
    const byteA = f[offset];
    const byteB = f[offset + 1];
    let sign = byteA & (1 << 7);
    let x = (((byteA & 0xFF) << 8) | (byteB & 0xFF));
    if (sign) {
       return 0xFFFF0000 | x;  // fill in most significant bits with 1's
    } else {
        return x;
    }
}

// parse s8 to hex
function s8(b) {
    if (typeof b === "undefined") {
        return "";
    }
    let res = b.toString(16).toUpperCase();
    if (res.length == 1) {
        return "0x0"+String(res);
    }
    return "0x"+res;
}

function s32_h(b, offset) { // helper
    let str = f[b + offset].toString(16).toUpperCase()
    if (str.length == 1) {
        return "0"+str;
    } else {
        return str;
    }
}

// parse s32 to hex
function s32(b) {
    return res = "0x"+s32_h(b, 0) +
                      s32_h(b, 1) +
                      s32_h(b, 2) +
                      s32_h(b, 3);
}

// lines to output
let k = [];
switch(type) {
    case 0:
        k.push("struct ActorSpawnData d_course__dl[] = {");
        break;
    case 1:
        k.push("Vtx_t d_course__dl[] = {");
        break;
    case 2:
        k.push("struct CourseAddrUnkStruct d_course__dl[] = {");
        break;
}
for (i = 0; i < f.length; i += iter) {
    // X Y Z

    switch(type) {
        case 0: // Spawn location    { x, y, z}, { flag }
            k.push("    {{ "+p(i + 0)+", "+p(i + 2)+", "+p(i + 4)+" }, { "+p(i + 6)+" }},");
            break;
        case 1: // Vtx   {x, y, z}, { flag }, { t1, t2 }, { r, g, b, a }
            k.push("    {{ "+p(i + 0)+", "+p(i + 2)+", "+p(i + 4)+" }, { "+p(i + 6)+" }, { "+p(i + 8)+", "+p(i + 10)+" }, {"+s8(f[i + 12], 16)+", "+s8(f[i + 13], 16)+", "+s8(f[i + 14])+", "+s8(f[i + 15])+" }},");
            break;
        case 2: // Ptr addr
            k.push("    {{ "+s32(i + 0)+" }, { "+s32(i + 4)+" }},");
            break;
    }

    // check if this is a glabel line
    //let n = i.match(/glabel D_([0-9A-F]*)$/);
    // if it is
    //if (n) {
        // the number will be in the second? item in the array - convert it to a numbers
       // let newLast = Number(`0x${n[1]}`)
        //if (last != 0) { // not the first line? add the skip info
        //    k.push(`.skip ${newLast-last}`) // .skip ##
        //    k.push('') // blank line
        //} 
        //last = newLast; // save what the last glbael line was
        //k.push(i) // glabel D_###
    //}
    //if (i > 100) {break;}
}
// might need additional logical here to output the last lines after the last glabel?
// for now, just copy the last line from the original file
//k.push(b.slice(-1)[0])
k.push("};");
// write this to the file name in the second arg
//fs.writeFileSync(process.argv[3], k.join("\n")+"\n");
console.log(k.join("\n")+"\n");
exit(0);