var colors = ["blue", "neon green", "mud pink", "potato brown"];
var names = ["buster", "misty", "gideon", "bob"];
var horses = {};

for (var i = 0; i < colors.length; i++){
  horses[names[i]] = colors[i];
}

function Car(make, model, color, year){
  this.make = make;
  this.model = model;
  this.color = color;
  this.year = year;

  console.log("Our " + color + " " + make + " " + model);

  this.pressGas = function(intensity) {
    if(this.intensity === "hard"){
      console.log("took off quickly");
    }
    else{
      console.log("took off lazily");
    }
  }
}


//Driver code
console.log(horses);

colors.push("mustard gas yellow");
names.push("cat");

console.log(colors, names);

var mandoCar = new Car("Nissan", "Altima", "Slate Grey", 2008);

console.log(mandoCar);
console.log(mandoCar.pressGas("light"));