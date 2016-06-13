// Reverse function that takes a string and reverses it
// Start with an empty string in returnString
// Get the string length
// In a for loop (for each letter in the string), counting down by index:
//   Take the index-th letter of the string
//   Concatinate it to the return string and save it in returnString
// Return returnString

function reverse(string) {
  var length = string.length;
  var returnString = '';

  for (i=length; i > 0; i--) {
    returnString = returnString + string[i-1];
  }
  return returnString;
}

// Test
console.log(reverse("Testing String"));

// Driver code
var reversedString = reverse("New Testing String!");

if (reversedString == "!gnirtS gnitseT weN") {
  console.log(reversedString);
} else {
  console.log("Didn't work.")
}