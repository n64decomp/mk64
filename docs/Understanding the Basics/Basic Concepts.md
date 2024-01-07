#### Definitions
* `Jump/Branch/Function` - Tells the cpu to execute instructions somewhere else and come back here when done.
* `Hexadecimal` - A [numbering system](https://en.wikipedia.org/wiki/Hexadecimal) just like decimal (also called base-ten) or roman numerals. An easy method for programmers and computers to understand each other which groups/separates bytes of information in a readable format. Representing information as decimal results in an unreadable mess.
* `s32/word/int` - A max size for a number. Data represented as 32 bits or 4 bytes: `0x00000001`. It consists of eight digits.
* `s16/half-word/short` - A number represented as 16 bits or 2 bytes: `0x0001`. It consists of four digits. Maximum value 65,535 (0xFFFF).
* `s8/byte/char` - A number represented as 8 bits or 1 byte: `0x01`. It consists of two digits. Maximum value 255 (0xFF).

## Addresses
Computers use addresses to jump through code. This works similar to finding a house using its address. Except, that reaching the house is nearly instantaneous and it only contains more instructions and jumps or some data such as a texture or a text string. Also, when finished with the house, you travel back to the previous destination which may have some left-over instructions or more jumps. You can imagine this quickly becoming a spaghetti monster jumping all over the place.

A typical N64 address: `0x8029E158`

In an N64 program, addresses begin at `0x80000000`. As you create code, data, and the like, the compiler will add onto this base number and assign variables to an address.
```
s32 a_value = 2; // Note that a_value can be any name: fox, pig, siodfj, etc.
s32 b_value = 7;
```
Might compile a_value to `0x80000004` and b_value to `0x80000008`. At anytime if you manually wrote:
```
print(0x80000004); // or
print(a_value);
```
Both would output `2`. This allows some trickery. Such as pointer math: `print(0x800000004 + 0x80000004)` would output `7`.

Addresses generally count up by fours: `0x4, 0x8, 0xC, 0x10, 0x14, etc.`

It does not when working with s8 and s16 integer types. An s32 or int always takes up eight digits: `00000001`
```
s32 a = 1;
print(a);
```
Will output `1` but if you opened the program in a hexadecimal file you will notice that its written to disc as `0x00000001`

An s16 looks like: `0x0001` an s8 looks like: `0x01`.

Data can take up tonnes of space:
```
Texture a_texture[] = {
  0x01, 0x0A, 0xAA, 0x34, 0x23, // Imagine five-hundred lines of this
};
```
The address of this could extend from `0x80000100` to `0x800000534`. However, you would not see `0x80000533`. The compiler generally aligns objects to 4, 8, 0xC, or 0x10 (Note that files are generally aligned to 0x10). With the exception being when you're working with s16 and s8. If you have:
```
s16 a = 3;
s32 b = 5;
```
You might expect to see this: `000300000005` or `0x0003 0x00000005` But actually, it will be this:
```
0003000000000005 or 0x0003 0x0000 0x00000005
```
This is called alignment. The compiler *aligned* `b` to the next 'major' address. Of course, if you program two s16's then the blank `0x0000` will be used. The max size of an s8 is 0xFF (255). Trying to write a number higher than 255 to an s8 type may crash the program as it might try to write onto the next variable.  

### Code
Code contains addresses too. Lets take a look at some example assembly:
```
glabel entry_point
/* 001000 80000400 3C08800F */  lui   $t0, %hi(_mainSegmentEnd) # $t0, 0x800f
/* 001004 80000404 3C09000A */  lui   $t1, (0x000A0FC0 >> 16) # lui $t1, 0xa
/* 001008 80000408 25086910 */  addiu $t0, %lo(_mainSegmentEnd) # addiu $t0, $t0, 0x6910
/* 00100C 8000040C 35290FC0 */  ori   $t1, (0x000A0FC0 & 0xFFFF) # ori $t1, $t1, 0xfc0
.L80000410:
/* 001010 80000410 2129FFF8 */  addi  $t1, $t1, -8
/* 001014 80000414 AD000000 */  sw    $zero, ($t0)
/* 001018 80000418 AD000004 */  sw    $zero, 4($t0)
```
Format: `rom address (file on disc), ram address, machine-code, assembly, arguments/parameters`

The `lui, addiu, ori, etc.` are just representations of the machine-code. For example: `0x3C08800F` is what the cpu is actually running. Lets break down this one command:
`op-code, parameters`
0x3C is the op-code (lui or load-upper-immediate) this command loads an address. The `08` tells the CPU to use the register `t0` and the `0x800F` is the first-half of the address to load. So, in the register t0 (which is the size of an int: 0x00000000) the value `0x800F0000` is written.

Note that one machine-code command is the size of an int/s32/word. How do we load an address (which is the size of an int). There isn't enough room when you include the op-code and register: `0x3C08800F6990`. That no worky. So we have to do this with two commands called a hi and a lo:
```
/* 001008 80000408 25086910 */  addiu $t0, %lo(_mainSegmentEnd) # addiu $t0, $t0, 0x6910
```
Now, we're going to *add* the *offset*: `t0: 0x800F0000 + 0x6910 = 0x800F6910`.
If you run the game and use a memory viewer at this location. You will quickly realize this region of data (it's actually .bss but lets not get into that), is the controller data. The data alters to reflect which controller buttons are pressed. So if I just wanted to read one of these values, the assembly will do two commands to put the address in the register. Then another command can read the address in that register to receive the value at that location. This value can be compared to see if the button is active. Ex. zero might mean not pressed, whereas one might mean pressed.

Now, earlier it was mentioned that code contains addresses. If I wanted to, I could do this: `Jump to: 0x80000410`. Which would make the CPU start running code at that location. Or I could read the value that exists there: `0x2129FFF8`. Not sure what I might do with that number, but it does act like a normal number. In decimal it is: `556,400,632`. I could add and subtract to it (Which would likely crash the game if it tried to run that command after). Now, jumping to any code address in the middle of a function would almost certainly crash the game or result in strange behaviour. The purpose of this explanation is really to show that everything is just a bunch of numbers or values, represented by an address. Even code itself.

For a more refined explanation of addresses and pointers its suggested to use the Googles. However, this explanation was written with the N64 in-mind.
