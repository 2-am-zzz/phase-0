#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name
	def initialize(name)
		@name = name
	end
end


class Greetings
	def initialize(name)
		@data = NameData.new(name)
	end

	def hello
		puts "Hello #{@data.name}! How wonderful to see you today."
	end
end



# Reflection
=begin

Release 1:
What are these methods doing?
	These methods are printing out the name, age, and occupation of an
	individual. These attributes may be changed using the methods,
	printed out individually, or printed all at once.
How are they modifying or returning the value of instance variables?
	The primary method of modificaition is by selecting the instance 
	variables that keep their value across methods for the same instance
	and modifying them by assigning them a new value. The methods that
	return a value are simply just calling the instance variable, thus
	implicitly returning them.

Release 2:
What changed between the last release and this release?
	The name getter method was replaced by attr_reader syntax, thus rendering what_is_name an obsolete method.
What was replaced?
	The name getter method was replaced. 
Is this code simpler than the last?
	Yes--attr_reader makes getter method writing a whole lot simpler.

Release 3:
What changed between the last release and this release?
	The name setter method was epalced by attr_writer syntax, thus
	rendering change_my_name= an obsolete method.
What was replaced?
	The name setter method was replaced.
Is this code simpler than the last?
	Yes--attr_writer makes writer method writing a whole lot simpler.

Reflection:

What is a reader method?
	A reader method in the context of an instance is a method declared using
	"attr_writer :attribute" that will return the value stored in attribute.
What is a writer method?
	A writer method in the context of an instance is a method declared usign
	"attr_reader :attribute" that will set the value stored in attribute to a
	new value.
What do the attr methods do for you?
	They allow you to retrieve and modify instance variables inside of an
	instance of a class, allowing a shorthand way to write these out.
Should you always use an accessor to cover your bases? Why or why not?
	No, accessors should be used sparingly since we may not want to have write
	access on certain instance variables (read-only at best)/
What is confusing to you about these methods?
	Nothing really--although the syntax may be weird at first, once you get used
	to them, it's really useful and cleans up the code!


=end