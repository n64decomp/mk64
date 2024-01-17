\page basics Understanding the Basics

\htmlonly

Essential skills and concepts to help you get started with mk64 decomp.
<br>
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
<a class="pagea" href="compiling.html">
<div class="pagelink">
  <div class="pageimg"><img width=320 src="buttonimage.png" /></div>
  <div class="content">
    <div class="pageheading">Installing mk64 Decomp</div>
    <div class="pagedescription">
      <p>Steps for installing and building the game</p>
    </div>
  </div>
</div>
</a>
</div>

<div class="pagebutton">
<a class="pagea" href="controlflow.html">
<div class="pagelink">
  <div class="pageimg"><img width=320 src="buttonimage.png" /></div>
  <div class="content">
    <div class="pageheading">Control Flow</div>
    <div class="pagedescription">
      <p>Introduction to mk64's operating states and threading. Acclimate to the codebase with this essential read.</p>
    </div>
  </div>
</div>
</a>
</div class="pagebutton">


<h2>Foundational Knowledge</h2>
<p>Become familiar with technical and low-level concepts.</p>

<div class="pagebutton">
<a class="pagea" href="concepts.html">
<div class="pagelink">
  <div class="pageimg"><img width=320 src="buttonimage.png" /></div>
  <div class="content">
    <div class="pageheading">Basic Concepts</div>
    <div class="pagedescription">
      <p>Decomp, hexadecimal, cpu threads, addresses, and types to provide foundation knowledge.</p>
    </div>
  </div>
</div>
</a>
</div>

<div class="pagebutton">
<a class="pagea" href="terminology.html">
<div class="pagelink">
  <div class="pageimg"><img width=320 src="buttonimage.png" /></div>
  <div class="content">
    <div class="pageheading">Decomp Terminology</div>
    <div class="pagedescription">
      <p>Common terms used in low-level computing and decomp.</p>
    </div>
  </div>
</div>
</a>
</div>

\endhtmlonly

\subpage compiling
\subpage concepts
\subpage controlflow
\subpage terminology
\subpage buildwindows
