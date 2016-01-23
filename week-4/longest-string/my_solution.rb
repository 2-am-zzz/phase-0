# Longest String

# I worked on this challenge by myself.

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
# def longest_string(list_of_words)
#   arrlen = list_of_words.length - 1
#   if arrlen < 0
#   	return nil
#   end
#   longest_str = list_of_words[arrlen]
#   longest_len = longest_str.length
#   while arrlen > 0
#   	if list_of_words[arrlen-1].length > longest_len
#   		longest_str = list_of_words[arrlen-1]
#   		longest_len = longest_str.length
#   	end
#   	arrlen -= 1
#   end
#   return longest_str
# end

def longest_string(list_of_words)
	if list_of_words.length == 0
		return nil
	end
	list_of_words.sort_by! { |i| i.length }
	return list_of_words[-1]
end