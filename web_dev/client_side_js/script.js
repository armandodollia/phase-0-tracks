




//Create Button objects
var revealButton = document.getElementsByTagName('button')[1];
var hideButton = document.getElementsByTagName('button')[0];

//Create hide and reveal functions
function hide(){
  document.getElementById("lizard-photo").style.visibility = "hidden";
}
function reveal(){
  document.getElementById("lizard-photo").style.visibility = "visible";
}

//Add event Listeners to buttons
hideButton.addEventListener("click", hide);
revealButton.addEventListener("click", reveal);