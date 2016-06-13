// Take in an array of strings
// Make a variable longestStringLength = 0
// Make a variable indexOfLongestString = null
// For each string in the array:
//   Find it's length
//   If the length is longer than longestStringLength
//     store it's length in longestStringLength
//     update the indexOfLongestString to equal the current index
// Return array[indexOfLongestString]

// Note: returns the first string of the longest length if there are multiple
function longestString(stringArray) {
  var longestStringLength = 0;
  var indexOfLongestString = null;
  var arrayLength = stringArray.length;
  if (arrayLength == 0) {
    return "No strings in array.";
  }

  for (var i=0; i<arrayLength; i++) {
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

// For each key in obj1
//   If obj2.key == obj1.key
//     return true
// If we get to the end of the loop they have no shared key/value pairs, so return false

function objectsHaveACommonPair(obj1, obj2) {
  var obj1Keys = Object.keys(obj1);
  var numKeys = obj1Keys.length;

  for (var i=0; i<numKeys; i++) {
    if (obj1[obj1Keys[i]] == obj2[obj1Keys[i]]) {
      return true;
    }
  }
  return false;
}

// Take in an integer (number)
// Make an alphabet string "abcdefghijklmnopqrstuvwxyz"
// Create a returnArray = []
// number times:
//   generate a random number between 1 and 10 called stringLength
//   create newString = ''
//   stringLength times:
//     Generate a random number between 0 and alphabet length
//     Add that alphabet[randomNumber] to newString
//   add newString to returnArray
// return returnArray

// helper function to abstract away generating a random number between min and max
function getRandomInt(min, max) {
  return Math.floor(Math.random() * (max - min)) + min;
}

function nRandomWords(number) {
  var alphabet = "abcdefghijklmnopqrstuvwxyz";
  var returnArray = [];
  for (var i=0; i<number; i++) {
    var stringLength = getRandomInt(1, 11);
    var newString = '';
    for (var j=0; j<stringLength; j++) {
      newString = newString + alphabet[getRandomInt(0, 26)];
    }
    returnArray.push(newString);
  }
  return returnArray;
}

// TESTS

console.log(longestString(["O", "Tw", "Thr", "four"])); // "four"
console.log(longestString([])); // "No strings in array."
console.log(longestString(["", ""])); // "No strings of greater than zero length."

console.log(objectsHaveACommonPair({ val1: "val1", val2: "val2"}, {val1: "val1", val2: "val1"})); // true
console.log(objectsHaveACommonPair({ val1: "val1", val2: "val2"}, {val1: "val2", val2: "val1"})); // false
console.log(objectsHaveACommonPair({ val1: "val1", val2: "val2"}, {})); // false

console.log(nRandomWords(10));

for (var i=0; i<10; i++) {
  var array = nRandomWords(getRandomInt(1,30));
  console.log(array);
  console.log(longestString(array));
}
