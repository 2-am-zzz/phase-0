# Shortest String

# I worked on this challenge [by myself, with: ].

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
# def shortest_string(list_of_words)
#   arrlen = list_of_words.length - 1
#   if arrlen < 0
#   	return nil
#   end
#   shortest_str = list_of_words[arrlen]
#   shortest_len = shortest_str.length
#   while arrlen > 0
#   	if list_of_words[arrlen-1].length < shortest_len
#   	  shortest_str = list_of_words[arrlen-1]
#   	  shortest_len = shortest_str.length
#   	end
#   	arrlen -= 1
#   end
# 	return shortest_str 
# end

def shortest_string(list_of_words)
	if list_of_words.length == 0
		return nil
	end
	list_of_words.sort_by! {|i| i.length}
	return list_of_words[0]
end