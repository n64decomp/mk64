\page actorsmenu Actors

\htmlonly
Actors are dynamic game objects usually subject to game physics such as gravity, force, and collision. They might move around the map, spin, or interactive in some manner. Alternatively, static game objects cannot move and cannot be interacted with. They can use collision but not physics. A course model and Mario Raceway's Pipe are examples of static objects. Any of the items or player karts are examples of dynamic game objects; actors.  

mk64 contains two systems for implementing actors. They have been deemed as actors and objects, albeit an explicit or categorical difference between the two has yet to be determined. The running theory is that the systems were designed by different developers that were perhaps not communicating resulting in game objects being randomly distributed between the two.  

The two main variables to concern yourself with are `gActorList` and `gObjectList`; the core containers of the two systems.  

`gActorList` contains:
```
trees, bushes, falling rocks, kiwano-fruit, banana, shells, piranha-plant, train wheels, rail-road crossing, cows, yoshi-valley's egg, spinning signs, palm trees, paddle for the paddle-wheeled boat, wheels for cars/trucks, etc.
```
The actor code has two main parts; the update code and the render code. The update code alters the position/rotation of the object whereas the render code displays the object on the screen.  

`gObjectList` contains:
```
thwomps, bowser fire-breath, moles, hedgehogs, snowmen, crabs, etc (also, probably penguins and birds).
```
The object system is much more complex than actors and is not well documented.

<style>
.pagebutton {
    display: inline-block;
    margin-right: 1em;
    margin-bottom: 1em;
}
.pagelink {
    display: block;
    background-color: rgb(40, 44, 52);
    width: 320px;
    box-shadow: 0 0 0 0;
    transition: 0.3s ease;
}
.pagelink:hover {
  box-shadow: 0 5px 15px 5px rgba(0,0,0,1);

}
.pagelink:hover img {
  transform: scale3d(1.1,1.1,1.1);

}
.pageimg {
    display: inline-block;
    width: 100%;
    position: relative;
    overflow: hidden;
}
.pageimg img {
    transition: 0.3s ease;
}
.content {
    color: white;
    font-size: 1em;
    padding: 0;
    margin: 0;
}
.pageheading {
    padding: .5em .5em;
    font-size: 18px;
    color: white;
    font-weight: bold;
    text-decoration: none;
}
.pagedescription {
    color: #fff;
    border-color: transparent;
    opacity: 0.75;
    height: 84px;
    text-overflow: ellipsis;
    overflow: hidden;
    margin-top: 10px;
    display: block;
    padding: 10px;
    text-decoration: none;
    line-height: 1.64em;
    font-size: 1em;
    font-weight: normal;
    text-decoration: none;
}
.pagea {
    display: inline-block;
}
.pagea:link {
    text-decoration: none;
}
.pagea:visited {
    text-decoration: none;
}
.pagea:hover {
    text-decoration: none;
}
.pagea:active {
    text-decoration: none;
}
p {
    margin: 0;
    padding: 0;
}
</style>

<div class="pagebutton">
<a class="pagea" href="actors.html">
<div class="pagelink">
  <div class="pageimg"><img width=320 src="buttonimage.png" /></div>
  <div class="content">
    <div class="pageheading">Actors</div>
    <div class="pagedescription">
      <p>Some actor stuff</p>
    </div>
  </div>
</div>
</a>
</div>

<div class="pagebutton">
<a class="pagea" href="objects.html">
<div class="pagelink">
  <div class="pageimg"><img width=320 src="buttonimage.png" /></div>
  <div class="content">
    <div class="pageheading">Objects</div>
    <div class="pagedescription">
      <p>Some object stuff</p>
    </div>
  </div>
</div>
</a>
</div>

\endhtmlonly

\subpage actors

