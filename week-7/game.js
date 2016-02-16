 // Design Basic Game Solo Challenge

// This is a solo challenge

// Your mission description:
// Overall mission: Get to 100 before your opponent. Either add to your own score
// or switch your score with your opponent.
// Goals: Get to 100!
// Characters: The player, the opponent
// Objects: Scores, switches.
// Functions: add, switch.

// Pseudocode
/*
Player:
	Has attributs of swtiches, score
	Has functions of:
		add, takes an argument integer of "number"
			IF number is less than 10:
				Add that number to player's score
				Perform a check of whether the player won.
			Let the opponent take their turn.
		switch, takes no arguments
			IF the number of switches the player has is greater than 0:
				Switch the opponent score with the player score and vice versa
				Do a check of whether the player won.
			Let the opponent take their turn.
Opponent:
	Has the same format as Playeer

Check, takes an argument of score and player
	IF the score is greater or equal to 100:
		return a congraulatory message to the player.




*/

// Initial Code



// var player = {
// 	switches: 3,
// 	score: 0,
// 	add: function(number) {
// 		if (number < 10) {
// 			this.score += number;
// 			console.log("Player score is now: " + this.score);
// 			check(this.score,"The player");
// 		}
//		opponent.move()
// 	},
// 	switch: function() {
// 		if (this.switches > 0) {
// 			temp = opponent.score;
// 			opponent.score = this.score;
// 			this.score = temp;
// 			this.switches--;
// 			console.log("Scores switched! Player score: " + this.score + " Opponent score: " + opponent.score)
// 			check(this.score,"The player")
// 			opponent.move()
// 		} else {
// 			console.log("Not enough switches.")
// 			opponent.move()
// 		}
// 	}
// }

// var opponent = {
// 	switches: 3,
// 	score: 0,
// 	move: function() {
// 		if (Math.random() > 0.5) {
// 			this.score += Math.floor(Math.random()*10);
// 			console.log("Opponent score is now " + this.score)
// 			check(this.score,"The opponent")

// 		} else {
// 			if (this.switches > 0) {
// 				temp = player.score;
// 				player.score = this.score;
// 				this.score = temp;
// 				this.switches--;
// 				console.log("Scores switched! Opponent score: " + this.score + " Player score: " + player.score)
// 				check(this.score,"The opponent")
// 			} else {
// 				console.log("Not enough switches.")
// 			}
// 		}
// 	}
// }

// function check(num,person) {
// 	if (num >= 100) {
// 		console.log(person + " wins!")
// 	}
// }

// player.add(8)
// player.add(8)
// player.switch()
// player.add(8)
// player.add(8)
// player.add(8)
// player.add(8)
// player.add(8)
// player.add(8)
// player.add(8)
// player.add(8)
// player.add(8)
// player.add(8)
// player.add(8)


// Refactored Code

var player = {
	name: "Player",
	switches: 3,
	score: 0,
	add: function(number) {
		if (number < 10) {
			this.score += number;
			console.log("Player score is now: " + this.score)
			check(this.score,"The player")
			
		} else {
			console.log("Input too high!");
		};
		opponent.move();
	},
	switch: function() {
		if (this.switches > 0) {
			swap(opponent,this)
		} else {
			console.log("Not enough switches.")
		}
		opponent.move();
	}
}

var opponent = {
	name: "Opponent",
	switches: 3,
	score: 0,
	move: function() {
		if (Math.random() > 0.5) {
			this.score += Math.floor(Math.random()*10);
			console.log("Opponent score is now " + this.score)
			check(this.score,"The opponent")

		} else {
			if (this.switches > 0) {
				swap(player,this)
				check(this.score,"The opponent")
			} else {
				console.log("Not enough switches.")
			}
		}
	}
}

function check(num,person) {
	if (num >= 100) {
		console.log(person + " wins!")
	}
}

function swap(giver,taker) {
	temp = giver.score;
	giver.score = taker.score;
	taker.score = temp;
	taker.switches--;
	console.log("Scores switched! " + giver.name + ": " + giver.score + " | " + taker.name + ": " + taker.score);
}


player.add(8)
player.add(8)
player.switch()

// Reflection
/*

What was the most difficult part of this challenge?
	Thinking of an idea for a gamme! I was low on time this week, so I tried to
	create something interesting while fairly simple to code.
What did you learn about creating objects and functions that interact with one another?
	Being able to define local and non-local variables is useful--this allowed
	me to create objects that defiinitely interacted with one another by
	calling their methods and using the this keyword.
Did you learn about any new built-in methods you could use in your refactored solution? If so, what were they and how do they work?
	Not really--I don't know many that would suit the logic of my program.
How can you access and manipulate properties of objects?
	Access them using dot notation or array notation!



*/