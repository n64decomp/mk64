\page controlflow Codebase Overview

[TOC]

# Paradigm
The developers wrote mk64 using a state-driven paradigm. Gamestate, gamemode, course, actors, structs, and more decide which branches code should follow. As an example, a condition can check the current course to load that courses resources or run logic based on that.

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

# Segments
mk64 code is split into three sections
|Segment|desc|
|---|---|
|Main|Menus, audio, libultra, rsp|
|Racing|Memory management, courses, players, actors, skybox, collision, math |
|Ending|Podium ceremony, credits|

Racing segment loads after selecting a grand prix. Note that it is always reloaded preventing randomization of cpu's at the start of the first race due to no time for the random seed to actually become random.

# Code Breakdown

## Players
Player related code resides in
|file|desc|
|---|---|
|player_controller.c| Applies physics to players |
|camera.c| Player cameras |

## Actors
Actor related code resides in
|file|desc|
|---|---|
|actors.c|Variety of [actors](actorsmenu.html), see link for specifics.|
|actors_extended.c|Shells and bananas|

## Objects
Object related code resides in
|file|desc|
|---|---|
|code_80057C60.c|Objects|
|code_80071F00.c|Objects|
|code_80086E70.c|Objects|

Documentation of the specifics still in-progress. See [actors](actorsmenu.html) for more information.

## Courses
Course related code resides in
|file|desc|
|---|---|
|memory.c| Loads and extracts course data|
|render_courses.c|Renders course content|
|common_textures.inc.c|Content accessible to every course such as items and portraits|

### Course Folder
|file|desc|
|---|---|
|courses/course_name/course_data.inc.c|Course data|
|courses/course_name/course_vertices.inc.c|Course vertices (this + _displaylists.inc.c makes the course geography)|
|courses/course_name/course_displaylists.inc.c|Course displaylists (these get compressed during compile)|
|courses/course_name/course_offsets.inc.c|Textures used in the course|

## UI & Other 2D Screen data
|file|desc|
|---|---|
|hud_renderer.c|ItemWindows|

## Engine
|file|desc|
|---|---|
|collision.c| |

## Math
Math related code resides in
|file|desc|
|---|---|
|math_util.c| |
|math_util_2.c| |  

## Ending
|file|desc|
|---|---|
|ceremony_and_credits.c|Camera rails for podium ceremony and credits|
|podium_ceremony_actors.c|Fireworks and balloons for podium ceremony|
|ceremony_data.inc.c|Trophies and podium models. Paths.|
|credits.c|Credits text and UI positions|  
