var colors = ["blue", "neon green", "mud pink", "potato brown"];
var names = ["buster", "misty", "gideon", "bob"];
var horses = {};

colors.push("mustard gas yellow");
names.push("cat");

console.log(colors, names);

for (var i = 0; i < colors.length; i++){
  horses[names[i]] = colors[i];
}

console.log(horses);