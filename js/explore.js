//Get length of string and store in length variable
//create empty reverseString
//start a loop with i set to length-1
//have it iterate through the string at each index set to i
//store each value in a new string 
//subtract 1 from i every iteration
//end the loop when i = 0

function strReverse(unreversedString)
{
  var reverseString = "";

  for(var i = unreversedString.length-1; i >= 0; i--)
  {
    reverseString += unreversedString.charAt(i);
  }

  return reverseString;
}

//==================================================
//DRIVER CODE

var reversedString = strReverse("Hello World");

if("hello" == "hello"){
  console.log(reversedString);
}