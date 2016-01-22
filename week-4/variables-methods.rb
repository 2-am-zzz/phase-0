def full_name_greeting()
	puts "What is your first name?"
	first_name = gets.chomp
	puts "What is your middle name?"
	middle_name = gets.chomp
	puts "What is your last name?"
	last_name = gets.chomp
	puts "Hello #{first_name} #{middle_name} #{last_name}! Pleased to meet you."
end

def bigger_better_favorite_number()
	puts "What is your favorite number?"
	favorite_number = gets.chomp
	better_number = favorite_number.to_i + 1
	better_number = better_number.to_s
	puts "Might I suggest that #{better_number} is the bigger and better choice?"
end

full_name_greeting()
bigger_better_favorite_number()

=begin

Links to Exercises:
	Define a Method: 
		https://github.com/Zanibas/phase-0/blob/master/week-4/define-method/my_solution.rb
	Return a Formatted Address: 
		https://github.com/Zanibas/phase-0/blob/master/week-4/address/my_solution.rb
	Defining Math Methods
		https://github.com/Zanibas/phase-0/blob/master/week-4/math/my_solution.rb

Reflection Questions:
	How do you define a local variable?
		A local variable is a variable that is defined only in the function that it is declared in. After a function is finished executing, the local variables used during its execution cannot be accessed. Only the function during execution can access its own local variables--no other functions can access them.
	How do you define a method?
		A method is a section of code or a procedure that is reusable and can be used for many different inputs and data.
	What is the difference between a local variable and a method?
		A local variable holds specific data and can vary in what value it holds. A method holds specific procedures to act on data, as well as having local variables to help execute those procedures. However, it cannot vary in what value it holds.
	How do you run a ruby program from the command line?
		ruby [name of program file]
	How do you run an RSpec file from the command line?
		rspec [name of RSpec file]
	What was confusing about this material? What made sense?
		Nothing was confusing--I have some background in programming, so this was mainly review. Conversely, everything makes sense so far. I expect the difficulty to ramp up, so I'm not underestimating the material!
=end