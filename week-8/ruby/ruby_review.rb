# Reverse Words


# I worked on this challenge by myself.
# This challenge took me [#] hours.

# Pseudocode
=begin
DEF a function reverse_words with input of a string.
	Create a new array called 'array' initialized with an empty string inside
	FOR each character in string
		IF the character is a space
			push an empty string to 'array'
		ELSE
			add the character to the last string in array.
	Create a new array called 'new_array'
	FOR each word in 'array'
		Create an empty string called 'reverse'
		FOR each letter in word
			Add the letter and 'reverse' and assign it to reverse.
		Push reverse to 'new_array'
	Create a new string called 'reversed_string'
	FOR each word in 'new_array'
		add 'reversed_string' and the word
		add a space to 'reversed_string'
		assign this to 'reversed string'
	Remove the extra space from 'reversed_string'
	RETURN reversed_string


=end
# Initial Solution

# def reverse_words(string)
# 	array = [""]
# 	for i in 0..(string.length-1)
# 		if string[i] == ' '
# 			array.push("")
# 		else
# 			array[-1] += string[i]
# 		end
# 	end
# 	new_array = []
# 	array.each do |word|
# 		reverse = ""
# 		for j in 0..(word.length-1)
# 			reverse = word[j] + reverse
# 		end
# 		new_array.push(reverse)
# 	end
# 	reversed_string = ""
# 	new_array.each do |word|
# 		reversed_string += word
# 		reversed_string += " "
# 	end
# 	return reversed_string[0..-2]
# end



# Refactored Solution
def reverse_words(string)
	array = string.split
	array.each do |word|
		word.reverse!
	end
	return array.join(' ')
end




# Reflection
=begin

What concepts did you review or learn in this challenge?
	I reviewed the concept of using #each and iteration methods for strings
	and arrays--the latter is much easier than the former. I also reviewed
	that built-in methods make life so much easier.

What is still confusing to you about Ruby?
	Nothing! I love the language!

What are you going to study to get more prepared for Phase 1?
	I'm going to read the Well-Grounded Rubyist as well as various other
	books!
=end