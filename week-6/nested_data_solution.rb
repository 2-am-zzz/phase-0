# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================ albatross
p array[1][1][2][0]


#  ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 2
# ============================================================
# p hash[:outer][:inner]["almost"][:3]
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 1
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

# number_array.each_with_index do |item, index|
#   if item.is_a? Array
#     item.map! {|i| i + 5 }
#   else
#     number_array[index] += 5
#   end
# end

# p number_array


number_array.map! {|item| (item.is_a? Array) ? (item.map {|i| i + 5}) : (item + 5) }

puts "Refactored:"
p number_array

# Bonus:

# def ly_appender(array)
#   array.each do |item|
#     if item.is_a? Array
#       ly_appender(item)
#     else
#       item << "ly"
#     end
#   end
# end

def ly_appender(array)
  array.each do |item|
    (item.is_a? Array) ? (ly_appender(item)) : (item << "ly")
  end
end

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]
p ly_appender(startup_names)

=begin
REFLECTION

What are some general rules you can apply to nested arrays?
	To access nested arrays for single elements, you can just keep appending
	square brackets to your selector until you reach what you want. Every time
	you reach a new opening square bracket when inspecting the code, that's 
	another selector you're going to need to use.

What are some ways you can iterate over nested arrays?
	You can use conditional iterators nested inside of iterators!
	You can use recursion like in our ly_appender!
	You can just flatten the array if you don't care about maintaining structure!

Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
	We wanted to use #flatten, but it didn't match the specs of what we wanted 
	to use. We mainly reused thigns we already knew such as #map and #is_a? to
	do conditional checks on whether to iterate again or not. These are the
	most straightforward solutions since they maintain structure and most of the
	methods called for adding stuff to every element rather than conditionally.
	
=end