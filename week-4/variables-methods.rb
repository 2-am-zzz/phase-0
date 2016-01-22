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