// Part 1 - User Story
// Dan Heintzelman


// 1. As a user, I want to have a function called sum(oddLengthArray).
//   I want it to add up the value all of the odd valued items in my list. It
//   shouldn't count any of the numbers with an even value in this list.

// 2. I want to have a function called sum(evenLengthArray).
//   I want it to add up the value all of the even valued items in my list. It shouldn
//   't count any of the numbers with an odd value in this list.

// 3. I want to have another function called mean. This takes the
//   starting list (oddLengthArray). This function should average the value of all
//   the items in that list that have an odd value.

// 4. I want to have another function called mean. This takes the
//   starting list (evenLengthArray). This function should average the value of all
//   the items in that list that have an even value.

// 5. I want to make another function called median, that
//   will give me the mean of all of the odd items in the oddLengthArray list.

// 6. Finally, there should be another median function that gives me the same result
//   as step 5, but on the evenLengthArray list.


// Part 2: Kevin Serrano


// 1.
// Function: sum
// Input: A list of integers
// Output: An integer
// DEFINE a function "sum" that takes in input "array"
//   Create a variable "count" as an integer with value 0.
//     IF the length of "array" is odd:
//       FOR an iteration through "index" running through 0 to the length of the array minus one:
//         IF the number at place "index" in "array" can be divided by 2:
//           Add the number to "count"
//     ELSE:
//       FOR an iteration through "index" running through 0 to the length of the array minus one:
//         IF the number at place "index" in "array" cannot be divided by 2:
//           Add the number to "count"
//   RETURN count
// -----------------------------------------------
// Function: mean
// Input: A list of integers
// Output: An integer
// DEFINE a function "mean" that takes in an input "array"
//   Create a variable "count" as an integer with value 0.
//   Create a variable "elements_counted" as an integer with value 0.
//     IF the length of "array" is odd:
//       FOR an iteration through "index" running through 0 to the length of the array minus one:
//         IF the number at place "index" in "array" can be divided by 2:
//           Add the number to "count"
//           Increment the variable "elements_counted" by 1.
//     ELSE:
//       FOR an iteration through "index" running through 0 to the length of the array minus one:
//         IF the number at place "index" in "array" cannot be divided by 2:
//           Add the number to "count"
//           Increment the variable 'elements_counted' by 1.
//   RETURN "count" divided by the "elements_counted"
// Function: median
// Input: A list of integers
// Output: An integer
// DEFINE a function "median" that takes in an input "array"
//   Create a variable "elements" as an empty array.
//     IF the length of "array" is odd:
//       FOR an iteration through "index" running through 0 to the length of the array minus one:
//         IF the number at place "index" in "array" can be divided by 2:
//           Push the value into the array "elements"
//     ELSE:
//       FOR an iteration through "index" running through 0 to the length of the array minus one:
//         IF the number at place "index" in "array" cannot be divided by 2:
//           Push the value into the array "elements"
//   Set the variable "middle" as an integer equal to the length of the array "elements" divided by 2.
//   Return the value in array "elements" at index "middle"


//Part 3: Kyle Rombach


// function sum(array) {

//   var count = 0;

//   if (array.length % 2 != 0) {
//     for (var i = 0; i < array.length - 1; i++) {
//       if (i % 2 == 0)
//      {
//        count += i;
//      }
//          }
//                               }
//       else {
//   for (var i = 0; i < array.length - 1; i++) {
//     if (i % 2 != 0)
//     {
//       count += i;
//     }
//     }
//       return count;}
// }

// function mean(array) {
//   var count = 0;
//   var elements_counted = 0;

//     if (array.length % 2 != 0) {
//     for (var i = 0; i < array.length - 1; i++) {
//       if (i % 2 == 0)
//       {
//       count += i;
//       elements_counted += 1;
//       }
//     }
//     }
//       else {
//         for (var i = 0; i < array.length - 1; i++) {
//       if (i % 2 != 0)
//         {
//         count += i;
//         elements_counted += 1;
//         }
//         }
//    return count/elements_counted;}
// }
//   function median(array){
//     elements = [];

//   if (elements.length % 2 != 0) {
//     for (var i = 0; i < array.length - 1; i++) {
//       if (i % 2 == 0)
//         {
//       elements.push(i);
//         }
//     }
//   }
//   else {
//   for (var i = 0; i < array.length - 1; i++) {
//     if (i % 2 != 1)
//     {
//       elements.push(i);
//       var middle = elements.length / 2;
//   }
//   }
//   return elements[middle];}
//   }

  // Part 4: Kevin Serrano
  // Refactoring and User Stories

/*
	I want a function 'sum' that takes in an array of integers
		If an input array has an even number of elements
			Add all the even numbers together.
		If an input array has an odd number of elements
			Add al the odd numbers together.
*/
  function sum(array) {
  var count = 0;
  if (array.length % 2 == 0) {
    for (var i = 0; i < array.length; i++) {
      if (array[i] % 2 == 0) {
       count += array[i];
      }
    }
  } else {
    for (var i = 0; i < array.length; i++) {
      if (array[i] % 2 != 0) {
        count += array[i];
      }
    }
  }
  return count;
}

/*
	I want a function 'mean' that takes in an array of integers
		If an input array has an even number of elements
			Find the mean of all the even numbers.
		If an input array has an odd number of elements
			Find the mean of all the odd numbers.
*/

function mean(array) {
  var count = 0;
  var elements_counted = 0;
  if (array.length % 2 == 0) {
    for (var i = 0; i < array.length; i++) {
      if (array[i] % 2 == 0) {
        count += array[i];
        elements_counted += 1;
      }
    }
  } else {
    for (var i = 0; i < array.length; i++) {
      if (array[i] % 2 != 0) {
        count += array[i];
        elements_counted += 1;
      }
    }
  }
  return count/elements_counted;
}

/*
	I want a function 'median' that takes in an array of integers
		If an input array has an even number of elements
			Find the middle number of the even numbers.
		If an input array has an odd number of elements
			Find the middle number of all the odd numbers.
*/

function median(array) {
  var elements = [];
  if (array.length % 2 == 0) {
    for (var i = 0; i < array.length; i++) {
      if (array[i] % 2 == 0) {
        elements.push(array[i]);
      }
    }
  } else {
    for (var i = 0; i < array.length; i++) {
      if (array[i] % 2 != 0) {
        elements.push(array[i]);
      }
    }
  }
  var middle = Math.floor(elements.length / 2);
  return elements[middle];
}