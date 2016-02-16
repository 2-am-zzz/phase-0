/*
Gradebook from Names and Scores
I worked on this challenge with Patrick Skelley
This challenge took me 1 hour.
You will work with the following two variables.  The first, students, holds the names of four students.
The second, scores, holds groups of test scores.  The relative positions of elements within the two
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).
Do not alter the students and scores code.
*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]







// __________________________________________
// Write your code below.

// var gradebook = {};
// for (var i = 0; i < students.length; i++) {
//   gradebook[students[i]] = {};
// };

// var count = 0;
// for (var x in gradebook) {
//   // gradebook["joseph"].testScores = scores["joseph"];
//   gradebook[x].testScores = scores[count];
//   count++;
// }
// // Assign an addScore property to gradebook. Give it the value of a function that accepts name and scorearguments.
// // Have addScore push the score to the value of the testScore property of the gradebook property that matches the value of the name argument.

// gradebook.addScore = function(name, score) {
//  // gradebook > name > testScores 
//   gradebook[name].testScores.push(score);
// }
// // Add the getAverage property to gradebook and assign it the value of a function. (This won't actually do anything just yet...)

// gradebook.getAverage = function(name) {
//   return average(gradebook[name].testScores);
// }
// // Create a new function average that accepts an array of integers and return the average of those integers.

// // NOTE: getAverage and average are different functions.

// function average(array) {
//   var sum = 0;
//   for(var i = 0; i < array.length; i++){
//     sum += array[i];
//   }
//   var avg = sum/array.length;
//   return avg;
// }



// __________________________________________
// Refactored Solution

// We know that this runs slower than the loop.
function average(array) {
  var sum = array.reduce(function(a,b) { return a + b; });
  return sum / array.length;
};

var gradebook = {
  addScore: function(name,score) {
    gradebook[name].testScores.push(score);
  },
  getAverage: function(name) {
    return average(gradebook[name].testScores);
  }
};

for (var i = 0; i < students.length; i++) {
  gradebook[students[i]] = {testScores: scores[i]};
};





// __________________________________________
// Reflect
/*

What did you learn about adding functions to objects?
  Adding a function to an object is just like adding an attribute to an object.
How did you iterate over nested arrays in JavaScript?
  Just like any other iteration! Use a for loop using length as the stop.
  Since we didn't have to iterate through those arrays in arrays, we didn't
  have to do nested for loops.
Were there any new methods you were able to incorporate? If so, what were they and how did they work?
  Yes, look at reduce! Although it's a slower runtime, it is a more elegant
  solution. We do pairwise comparisons and apply a binary operator on each.


*/
// __________________________________________
// Test Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}



assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "1. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "2. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "3. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "4. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "5. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "6. "
)

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "7. "
)
assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)