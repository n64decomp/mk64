\page controlflow Control Flow

# Introduction to State
The developers wrote mk64 using a state-driven paradigm. This manifests itself in a variety of ways but as a quick example lets discuss the following variables. `gGamestate`, `gGameMode`, and `gCurrentCourseId`. Code for menus, racing, and credits must be modularized in some fashion. The gamestate variable contains the current state and during runtime branches into the relevant code while skipping code not pertaining to the current state. The racing code does not run while the user operates the menu. Let's inspect a simple example of a state-driven mechanism:
```c
switch(gCurrentCourseId) {
    case YOSHI_VALLEY:
        load_and_render_yoshi_egg();
        break;
    case MARIO_RACEWAY:
        load_and_render_pipe();
        break;
}
```
This code loads resources based on a specific course. An entire spaghetti tree of code may be imagined based on many series of conditional statements.

# Threading
After boot, the game begins by setting up its four threads; idle, video, audio, and the game loop.
The idle thread allows the cpu to sleep. Without it, if at any time execution of all threads were paused, the cpu would never be able to continue. The idle thread is active if all the other threads are paused.

As such, the idle thread runs the following loop: `while(TRUE);` (it runs in a perpetual loop of nothing; sleep). In mips assembly it looks like this:
```
.L800005B8:
b     .L800005B8
nop   
```
b stands for branch which acts akin to a goto. In this case, branch to the label `.L800005B8`. This creates an infinite loop. Whenever the cpu branches it always runs the next instruction as well which is called a delay slot. This means the cpu will continuously branch then run `nop` or `no operation` with no method of escaping the loop (except for when another thread has a higher priority which means the cpu switches to that thread and stops running the idle thread).

N64 threads are ran based on priority running whichever thread holds the most of it. Threads can also pause and wait for events. Note that the N64 is not multi-threaded by modern standards as the other threads contain specific purposes which slightly differs from the concept of splitting a single program into multiple processes for efficiency.

# Overall Control Flow
```
init_threads:
  idle, video, audio, gameloop
gameloop:
  audio
  jumpTo a specific menu or race based on a gameState flag.
  profiler
  config_gfx_pool
  read_controllers
  game_state_controller
  endDL/vsync
game_state_controller:
  switch(loc)
     menus -> switch(menu) { // do menu stuff }
     race_logic_loop -> spaghetti
     podium_ceremony
     credits
video:
  handles interaction between video/audio threads.
  handles vblanking and some elements pertaining to framebuffer
  most of all, handles which step of rendering a frame the cpu is in.
  Checks when new to start new sp tasks
```
If mk64 is in a menu state it will branch off to the menu code, running relevant bits of code based on more flags such as which particular menu the user is in. This will loop until the state changes to a different one such as race mode. If mk64 is in a race state, then race related code is ran and it spaghetti's off into a wide series of branches. This may include concepts such as `isLinedUp, isRacing, isRaceFinished, gotoNextCourse, isHuman, and isAI`.

This relatively primitive design could be defined as a state machine from an abstract point of view. This would differ from an OOP design that uses objects and hierarchy. You will become very familiar with this design principle as you explore the code-base. During any step of the game loop, a switch can be setup to check a flag then run code relevant to the situation. For instance, a flag can check whether a race is in-progress or complete. If in-progress set the player to human controlled. If complete, set player to AI controlled.
