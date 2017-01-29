function LongestPhrase(phraseArray){
  this.phraseArray = phraseArray;

  //Begin sorting algorithm
  //Can be done by iterating through the array and replacing the value of lonestPhrase whenever it is smaller than an element in an array
  //but this way was more challenging and i wanted the extra practice (Yes the other way is more processor efficient since it only involves one loop)
  for (var x = 0; x < phraseArray.length - 1; x++) {
    var swapped = true;
    while (swapped){
      for (var i = 0; i < phraseArray.length - 1; i++){
        if(phraseArray[i].length > phraseArray[i+1].length){
          phraseArray[i+1] = phraseArray.splice(i, 1, phraseArray[i+1])[0];
          swapped = true;
        }
        else{
          swapped = false;
        }
      }
    }
  }
  return phraseArray[phraseArray.length - 1];
}

function KeyValueMatch(object1, object2){
  this.object1 = object1;
  this.object2 = object2;
  var object1Keys = Object.keys(object1); // Stores the keys of the object in an array of strings
  var object2Keys = Object.keys(object2); // Same as above
  var isThereMatching = false;
  // var object1values = Object.values(object1);  <-- Does not work, it is an experimental function, should be added when stable for cleaner code
  // var object2values = Object.values(object2);

  for (var i = 0; i < object1Keys.length; i++) {
    var key1 = object1Keys[i];
    var key2 = object2Keys[i];
    if (key1 == key2 && object1[key1] == object2[key2]) {
      isThereMatching = true;
    }
  }
  return isThereMatching;
}

function RandomString(numberOfStrings){
  this.numberOfStrings = numberOfStrings;
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var stringArray = [];

  for(var i = 0; i < numberOfStrings; i++){
    var randomWord = "";
    var stringLength = Math.floor((Math.random() * 10) + 1); // Generates random number between 1 and 10
    for (var j = 0; j < stringLength; j++) {
      randomWord += alphabet.charAt(Math.floor(Math.random() * (alphabet.length - 1))); // Stores a random letter of the alphabet and stores it in randomWord
    }
    stringArray.push(randomWord);
  }
  return stringArray;
}


//========================================
// Driver Code
testArray = [["long phrase", "kdhsfgkjsdhfgjksdhfgkhsdgh", "longest phrase","longer phrase", "a", "b"], ["a", "abcd", "ab", "abc"], ["12345667", "1234", "12", "12334", "1"]];
for (var i = 0; i < testArray.length; i++) {
  console.log("The longest phrase in [" + testArray[i] + "] is " + LongestPhrase(testArray[i]));
}

var pair1 = {name: "Steven", age: 54};
var pair2 = {name: "Tamir", age: 54};
var pair3 = {name: "John", age: 35};

if (KeyValueMatch(pair1, pair2)) {
  console.log("True");
}
else{
  console.log("False");
}

if (KeyValueMatch(pair1, pair3)) {
  console.log("True");
}
else{
  console.log("False");
}


for (var i = 0; i < 10; i++) {
  var stringArray = RandomString(i+5);
  console.log("The longest phrase in [" + stringArray + "] is " + LongestPhrase(stringArray));
}