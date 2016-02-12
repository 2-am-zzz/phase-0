// Eloquent JavaScript
/*
Introduction

	Did you learn anything new about JavaScript or programming in general?
		Not really. It was a good refresher to see how far we've come 
		in programming, but overall, I am familiar with the concepts presented.

	Are there any concepts you feel uncomfortable with?
		Nope, I'm good so far. This book is fairly well written and I hope it is
		just as informative in future chapters.

Ch. 1: Values, Types, and Operators
	Identify two similarities and two differences between JavaScript and Ruby 
	syntax with regard to numbers, arithmetic, strings, booleans, and 
	various operators.

		Similarities:
			Unary, Binary, and Ternary operators work in the same way 
			and have the same syntax.

			Conditionals work in the same way most of the time.

		Differences:
			While Ruby has some added functionality on its binary operators, 
			Javascript has a lot more automatic type conversion and will return 
			a result no matter what.

			Javascript has some interesting use cases for && and || determining 
			what to return when values are not a simple true/false comparison. 
			Ruby, as I know it, does not support this.

Ch. 2: Program Structure  
	What is an expression?
		An expression is some code piece that creates some value.
	
	What is the purpose of semicolons in JavaScript? Are they always required?
		The purpose of semicolons is to separate statements from one another. They
		aren't always required, but it is suggested that you do for sake of
		starting and just-in-case.

	What causes a variable to return undefined?
		If a variable has not been assigned a value beforehand, aka empty, it
		will return the value undefined.

	Write your own variable and do something to it in the eloquent.js file.
		var name = "Kevin"
		name += " Serrano"
		fullname = name

	What does console.log do and when would you use it? What Ruby method(s) is 
	this similar to?
		console.log prints out the output of a statement to the browser's 
		developer console. This is similar to Ruby's "puts" method.

	Write a short program that asks for a user to input their favorite food. 
	After they hit return, have the program respond with "Hey! That's my 
	favorite too!" (You will probably need to run this in the Chrome console 
	rather than node since node does not support 
	prompt or alert). Paste your program into the eloquent.js file.

		food = prompt("What's your favorite food?")
		console.log("Hey, " + food +  " is/are my favorite food too!")

	Describe while and for loops
		While loops run a specified code block repeatedly until a certain condition
		is met. For loops are similar except that the iteration logic is handled
		within the for-loop delcaration itself.

	What other similarities or differences between Ruby and JavaScript did you
	notice in this section?
		While loops seem to be the same, as are the basic structure of if/else if/
		else statements. Breaks seem the same, and some incrementation syntax
		is similar too. Some differences are that Javascript has a nicer single
		increment/decrement operator and that the structure of declaring a for
		loop is different. Comments are similar too, though block comments seem
		to be different.

	Complete at least one of the exercises (Looping a Triangle, FizzBuzz, 
	of Chess Board) in the eloquent.js file.
	
	Looping a Triangle:
	-------------------
	var step = "";
	for (var i = 0; i < 7; i++) {
	  step += "#";
	  console.log(step);  
	};

	FizzBuzz:
	---------
	for (var i = 1; i <= 100; i++) {
		if i % 3 == 0 && i % 5 == 0
			console.log("FizzBuzz");
		else if i % 3 == 0
			console.log("Fizz");
		else if i % 5 == 0
			console.log("Buzz");
		else
			console.log(i);
	};

	Chess Board:
	------------
	var size = 8;
	var string = ""
	var start = true
	for (y = 0; y < size; y++) {
		begin = start
		for (var x = 0; x < size; x++) {
			begin ? (string += "O") : (string += "X")
			begin = !begin
		}
		string += "\n"
		start = !start
	}
	console.log(string)

Ch. 3: Functions (Skip the sections on closure and recursion)
	What are the differences between local and global variables in JavaScript?
	When should you use functions?
		Local variables are 


	What is a function declaration?
	
	Complete the minimum exercise in the eloquent.js file.

Ch. 4: Data Structures: Objects and Arrays  
	Skip the sections on the Lycanthrope's log, Computing Correlations, and 
	sections from Further Arrayology to the Global Object, but read the 
	chapter summary.

	What is the difference between using a dot and a bracket to look up a 
	property? Ex. array.max vs array["max"]

	Create an object called me that stores your name, age, three favorite foods, 
	and a quirk in your eloquent.js file.

	What is a JavaScript object with a name and value property similar to in 
	Ruby?

*/
// Program Structure
// Write your own variable and do something to it.




// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board



// Functions

// Complete the `minimum` exercise.



// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, 
// and a quirk below.