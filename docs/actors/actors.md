@page actors How Actors Work
# Actors
If you are familiar with oot or sm64 prepare to be very disappointed. Both games split actors into separate files. In an unorderly fashion, mk64 appears to place all actors in the same file save for the odd exception.

Example actor setup based on @ref update_course_actors
```c
// Loop through the actor list and run that particular actors behaviour.
for actorListSize {
  actor = gActorList[i]
  switch(actor->type) {
    case ACTOR1: 
      actor_name(args, actor); 
      break;
    case ACTOR2:
      another_actor(args, actor);
      break;
  }
}

// Camera/Mat4 are optional
void actor_name(Camera, Mat4, actor) {
  actor->pos[x] += 10; // Increase the actors X position by ten every frame or game loop.
  actor->rot[y] -= 1; // Decrease the actors Y rotation by one every frame or game loop.

  // Increase the actors velocity until it reaches fifteen.
  if (actor->velocity[z] < 15) {
    actor->velocity[z] += 5 // Increase the actors Z velocity by five every frame.
  }
}
```
Check actor_types.h for a full list of options. You can create a new actor struct for your actor and customize it or use a predefined one. All actor structs must retain the same size. Generally, the types in the struct may be modified so long as `type` and `flags` stay the same as those are used elsewhere.

See `update_object_railroad_crossing` for an example of how a timer may be setup and used.   

Audio may be activated using the following method:
@ref func_800C98B8

For more complex uses such as distanceFrom and collision, you will need to analyze the other actors.
