@page concepts Basic Concepts
See [terminology](terminology.html) for explanations of terms.  

# Addresses
Computers use addresses to jump through code. This works similar to a house number.
* A house contains a series of instructions or some data (ex. a texture).
* A house can contain more jumps.
* When business in a house completes, the computer jumps to the last house it was in.
* The program execution completes when there are no more branches left.
* Programs run in a big infinite loop so it cannot run out of branches.
* A program may be imagined as a big spaghetti monster.
* Note that n64 only runs one command/thread at a time.

A typical N64 address: `0x80160158`

In an N64 program, addresses begin at `0x80000000`. As you create code, data, and the like, the compiler will add onto this base number and assign variables to an address.
```
s32 a = 2; // 0x80000004
s32 b = 7; // 0x80000008
s32 c = 5; // 0x8000000C
s32 d = 1; // 0x80000010
s32 e = 3; // 0x80000014
```
Replacing a variable with a hard-coded address grabs the value at that address.
```
print(0x80000004); // or
print(a);
```
Both would output `2`. This allows some trickery. Such as pointer math: `print(0x800000004 + 0x80000004)` would output `7`.
Pointers may be similarily influenced: `&a + 4` results in `0x800000008` thus printing the value at `b`.

The compiler may `align` or offset variables to certain addresses. Generally, certain types of data is aligned to 0x10.

If `c` were placed in a new file, the compiler would place `c` at `0x80000010` and `e` would be placed at `0x80000020`.

Data can take up tonnes of space:
```
Texture a_texture[] = {
  0x01, 0x0A, 0xAA, 0x34, 0x23, // Imagine five-hundred lines of this
};
```
The address of this could extend from `0x80000100` to `0x800000534`. However, you would not see data begin at `0x80000533`. The compiler generally aligns objects to 4, 8, 0xC, or 0x10. With the exception being when you're working with s16 and s8. If you have:
```
s16 a = 3; // Value compiled to 0x0003
s32 b = 5; // Value compiled to 0x00000005
```
In a hexadecimal editor you may expect to see this: `000300000005` or `0x0003 0x00000005` But actually, it will be this:
```
0003000000000005 or 0x0003 0x0000 0x00000005
```
The compiler aligned `b` to the nearest 0x4. If there were two s16's then the blank `0x0000` will be used.

# How Errors Happen
The maximum value of an s8 (0x00) is 0xFF or 255. `0xFF + 1 = 0x100` imagine this scenario:
```
s8 a = 1;
s8 b = 2;
s8 c = 3;
s8 d = 255;
f32 e = 5.0f;
```
If `d` was set to 0x100, the final `0` would be written to the first bit of `e`. This could result in an invalid float value or perhaps flipping the signedness of an s32 (from negative to positive and vice-versa).

Issues such as this could result in glitches or crashes. Once humble math calculating to immeasurable values.

## Array Overflows
In the below example, my_func writes a value at the fifth index which does not exist. This results in writing 5.0f into the next variable lkely resulting in a crash. Array overflows may be easy to miss in complex programs and sometimes only crash on rare occasion.
```
f32 myArray[4] = {8.0f, 3.0f, 9.0f, 1.0f};

void my_func(index) {
    myArray[index] = 5.0f;
}
my_func(5);
```

# Code
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

Note that one machine-code command is the size of an int/s32/word. How do we load an address (which is the size of an int). There isn't enough room when you include the op-code and register: `0x3C08800F6990`. That no worky. As such, loading data at an address requires two commands. The first half of the address is called a hi and the second half is called a lo:
```
/* 001008 80000408 25086910 */  addiu $t0, %lo(_mainSegmentEnd) # addiu $t0, $t0, 0x6910
```
Now, we're going to *add* the *offset*: `t0: 0x800F0000 + 0x6910 = 0x800F6910`.
If you run the game and use a memory viewer at this location. You will quickly realize this region of data (it's actually .bss but lets not get into that), is the controller data. The data alters to reflect which controller buttons are pressed. So if I just wanted to read one of these values, the cpu will run two commands to put the address into the register. Then another command can read the address in that register to receive the value at that location. This value can be compared to see if the button is active. Ex. zero might mean not pressed, whereas one might mean pressed.

Now, earlier it was mentioned that code contains addresses. If I wanted to, I could do this: `Jump to: 0x80000410`. Which would make the CPU start running code at that location. Or I could read the value that exists there: `0x2129FFF8`. Not sure what I might do with that number, but it does act like a normal number. In decimal it is: `556,400,632`. I could add and subtract to it (Which would likely crash the game if it tried to run that command after). Now, jumping to any code address in the middle of a function would almost certainly crash the game or result in strange behaviour. The purpose of this explanation is really to show that everything is just a bunch of numbers or values, represented by an address. Even the code itself.

For a more refined explanation of addresses and pointers its suggested to use the Googles. However, this explanation was written with the N64 in-mind.
