// Take in an array of strings
// Make a variable longestStringLength = 0
// Make a variable indexOfLongestString = null
// For each string in the array:
//   Find it's length
//   If the length is longer than longestStringLength
//     store it's length in longestStringLength
//     update the indexOfLongestString to equal the current index
// Return array[indexOfLongestString]

function longestString(stringArray) {
  var longestStringLength = 0;
  var indexOfLongestString = null;
  var arrayLength = stringArray.length;
  if (arrayLength == 0) {
    return "No strings in array.";
  } 

  for (i=0; i<arrayLength; i++) {
    if (stringArray[i].length > longestStringLength) {
      longestStringLength = stringArray[i].length;
      indexOfLongestString = i;
    }
  }

  if (indexOfLongestString == null) {
    return "No strings of greater than zero length.";
  }

  return stringArray[indexOfLongestString];
}

console.log(longestString(["O", "Tw", "Thr", "four"])); // "four"
console.log(longestString([])); // "No strings in array."
console.log(longestString(["", ""])); // "No strings of greater than zero length."
