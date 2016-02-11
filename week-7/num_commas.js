// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Mitchell Kroska.

// Pseudocode
// Function takes in an Integer 
//   Assign int_to_str = argument integer
//   split individual integer values into an array.
//   Assign variable to  Log10 name log   
//   assign log / 3 floor answer
//   for loop for val of log / 3 
//     init index var with length of array - 3
//     insert "," at index val
//     decrement index var by 4
//   return int_str

/*



*/

// Initial Solution

function commas(integer) {
  if (integer < 1000) {return integer.toString()};
  var arr = integer.toString().split("");
  var log = Math.floor(Math.log10(integer));
  var index = arr.length - 3
  for (var i = 0; i < Math.floor(log/3); i++) {
    arr.splice(index,0,',')
    index -= 3
  }
  var product = arr.join("")
  return product
}


// Refactored Solution

function commas(integer) {
  if (integer < 1000) {return integer.toString()};
  var arr = integer.toString().split("");
  var log = Math.floor(Math.log10(integer));
  var index = arr.length - 3
  for (var i = 0; i < Math.floor(log/3); i++) {
    arr.splice(index,0,',')
    index -= 3
  }
  return arr.join("")  
}


// Your Own Tests (OPTIONAL)

commas(999)
console.log(commas(1000000))
commas(9990999)
commas(34015834903453)


// Reflection

/*

What was it like to approach the problem from the perspective of JavaScript? 
	A little frustrating actually. Having to reinvent the solution and guess 
	what's built-in and what isn't is a learning experience, but a little 
	frustrating at times. I mean, learning about the language is cool, but it 
	just seems like instead of solving a new problem we're just figuring out 
	how to reinvent a new one. 

Did you approach the problem differently?
	Yes--I chose to defer to my partner's solutions since it was creative and did not require making a new array.

What did you learn about iterating over arrays in JavaScript?
	We didn't use iteration over arrays in this challenge--we used a #splice method in order to insert our commas. However, it seems that iteration over arrays can't be done with an "each" method--it has to be explicitly iterated through using a loop.
	
What was different about solving this problem in JavaScript?
	Explicit loops rather than #each, but other than that, just a few minor syntax differences.

What built-in methods did you find to incorporate in your refactored solution?
	Splice is very useful for inserting elements into an array!
*/