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
  
}

//=============================================
// Driver Code
testArray = [["long phrase", "kdhsfgkjsdhfgjksdhfgkhsdgh", "longest phrase","longer phrase", "a", "b"], ["a", "abcd", "ab", "abc"], ["12345667", "1234", "12", "12334", "1"]];
for (var i = 0; i < testArray.length; i++) {
  console.log("The longest phrase in [" + testArray[i] + "] is " + LongestPhrase(testArray[i]));
}