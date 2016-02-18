// Tally Votes in JavaScript Pairing Challenge.

// I worked on this challenge with: Taylor Daugherty
// This challenge took me 1 hour.

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { president: "Bob", vicePresident: "Devin", secretary: "Gail", treasurer: "Kerry" },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property
of the respective office in voteCount.  After Alex's votes have been tallied,
voteCount would be ...
  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }
*/


/* Once the votes have been tallied, assign each officer position the name of the
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode
// Loop through votes through each person who voted
// Loop inside that loop to go through each cabinet position
// For each position
// IF name exists in voteCount
// add one to that property
// ELSE
// add name as as property and add one to it
// 
// then in voteCount:
// Loop through each position 
// Loop inside each name/vote count property
// Add counter variable maxCount = 0 
// IF the name has more votes than maxCount
// position in officers object will be replaced by that person
// replace maxCount with the value of the number of votes
// ELSE
// do nothing


// __________________________________________
// Initial Solution

// function tally(votes) {
//   for (var voter in votes) {
//     for (var position in votes[voter]) {
//       if (voteCount[position][votes[voter][position]] !== undefined) {
//         voteCount[position][votes[voter][position]]++;
//       } else {
//         voteCount[position][votes[voter][position]] = 1;
//       };
//     };
//   };
// };

// function elect(voteCount) {
//   for (var position in voteCount) {
//     var maxCount = 0;
//     for (var candidate in voteCount[position]) {
//       if (voteCount[position][candidate] > maxCount) {
//         maxCount = voteCount[position][candidate];
//         officers[position] = candidate;
//       }
//     }
//   }  
// };




// __________________________________________
// Refactored Solution


function tally(votes) {
  for (var voter in votes) {
    for (var position in votes[voter]) {
      var candidateName = votes[voter][position]
      var numberOfVotes = voteCount[position][candidateName]
      if (numberOfVotes !== undefined) {
        voteCount[position][candidateName]++;
      } else {
        voteCount[position][candidateName] = 1;
      };
    };
  };
};

function elect(voteCount) {
  for (var position in voteCount) {
    var maxCount = 0;
    for (var candidate in voteCount[position]) {
      var finalCount = voteCount[position][candidate]
      if (finalCount > maxCount) {
        maxCount = finalCount;
        officers[position] = candidate;
      }
    }
  }  
};

tally(votes);
elect(voteCount);

// __________________________________________
// Reflection
/*
What did you learn about iterating over nested objects in JavaScript?
  They are a pain. Such a pain. This is why Ruby iteration methods are superior in my opinion. Please, stop with the nesting! Anything bigger than a for-loop-in-for is going to be unmanageable.

Were you able to find useful methods to help you with this?
  Not really. Most of the assignment is just reassignment. We probably could've
  used a reduce function, but this is good as-is.

What concepts were solidified in the process of working through this challenge?
  Iterating through nested objects...is a pain! Nothing else has to be said.

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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)