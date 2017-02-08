//Store about my pet var
var stored = document.getElementById("about-my-pet");
//Create H1 element
var mainHeader = document.createElement('h1');
//Create text for main header
var mainHeaderText = document.createTextNode("This is my awesome chameleon!");
//append text to main header
mainHeader.appendChild(mainHeaderText);
//Add H1 to page
stored.insertBefore(mainHeader, document.getElementById('lizard-photo'));

//Loop through all li tags and make them yellow
var listItems = document.getElementsByTagName('li');
for (var i = 0; i < listItems.length; i++) {
  listItems[i].style.color = "yellow";
}




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