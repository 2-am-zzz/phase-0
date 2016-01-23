# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#  cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# 	end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => errors.rb
# 2. What is the line number where the error occurs?
# => 179
# 3. What is the type of error message?
# => Syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => Unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
# => The interpreter expected an end on line 17 to close off the cartman_hates def.
# 6. Why did the interpreter give you this error?
# => You can't just have a while statement without giving it an indicator of whre it ends. You need an end statement or curly braces to indicate the code block.

# --- error -------------------------------------------------------

# south_park = "great show"
# south_park

# 1. What is the line number where the error occurs?
# => 35
# 2. What is the type of error message?
# => NameError
# 3. What additional information does the interpreter provide about this type of error?
# => Undefind local variable or method 'south_park' for main:Object
# 4. Where is the error in the code?
# => Line 35, with the calling of the variable south_park
# 5. Why did the interpreter give you this error?
# => We never defined south_park, so thus calling it gives us an error since there is no value to return.

# --- error -------------------------------------------------------

# def cartman {
# 	puts 'Respect my Authority!'	
# }
# cartman()

# 1. What is the line number where the error occurs?
# => 50
# 2. What is the type of error message?
# => NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
# => undefined method 'cartman' for main:Object
# 4. Where is the error in the code?
# => Above when we called cartman()
# 5. Why did the interpreter give you this error?
# => If we never created a function declaration for cartman(), then we should get an undefined method error. We must declare our functions before we can use them.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase()

# 1. What is the line number where the error occurs?
# => 65
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => 'cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# =>  The error is in line 69, when we called an argument on cartmans_phrase
# 5. Why did the interpreter give you this error?
# => the method cartmans_phrase is a no-argument method. We instead provided an argument and as such, the interpreter doesn't know what to do with this extra argument.

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says('Shut up Kyle!')

# 1. What is the line number where the error occurs?
# => Line 65
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => 'cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# => from line 93, with the method calling of cartman_says
# 5. Why did the interpreter give you this error?
# => cartman_says is a method here that takes one argument. Zero was passed, so the interpreter is unsure of what to do.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!','Kyle!')

# 1. What is the line number where the error occurs?
# => Line 110
# 2. What is the type of error message?
# => ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# => 'carmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# => Error in 114 when cartmans_lie is called with one arg.
# 5. Why did the interpreter give you this error?
# => Like the above, wrong number of arguments means the interpreter doesn't know what to do without one of the variables assigned a value.

# --- error -------------------------------------------------------

# "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# => Line 129
# 2. What is the type of error message?
# => TypeError
# 3. What additional information does the interpreter provide about this type of error?
# => String can't be coerced into Fixnum
# 4. Where is the error in the code?
# => At the multiplication, which is trying to multiply a number by a string.
# 5. Why did the interpreter give you this error?
# => Although you can multiply strings by integers, this is not communicative and as such, you cannot multiple integers by strings.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/1


# 1. What is the line number where the error occurs?
# => Line 144
# 2. What is the type of error message?
# => ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# => divided by 0
# 4. Where is the error in the code?
# => In 144 when we divided by 0
# 5. Why did the interpreter give you this error?
# => Division by zero is undefined and as such is prohibited by the interpreter.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# => Line 160
# 2. What is the type of error message?
# => LoadError
# 3. What additional information does the interpreter provide about this type of error?
# => cannot load such file
# 4. Where is the error in the code?
# => During the require statement trying to call a specific file.
# 5. Why did the interpreter give you this error?
# => If this require statement fails due to a file not being present, then we fail and error out per expected behavior.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

Which error was the most difficult to read?
	+ The errors were fairly straightforward when they were explained properly by the example (thank you whoever wrote that). However, I did have to do some research on the LoadError, since we haven't worked with this type of stuff before. Also, I can imagine once we start nesting through multiple functions and files that errors will become harder to read. Especially so with the SyntaxError where you forget to place an end statement somewhere.
How did you figure out what the issue with the error was?
	+ By looking at where each error occured, both at its impact and where it came from, we can determine what flaws are nearby.
Were you able to determine why each error message happened based on the code?
	+ Yes. By looking at the type of error, it was easier to tell where the error in the code was by looking at the general area for specific potential error types. 
When you encounter errors in your future code, what process will you follow to help you debug?
	+ First, look at the location. Second, the type of error. Third, look at what additional info the console provides. Fourth, examine the areas affected by the code and use the information to find out what could be happening. Fifth, if it's not obvious, walk through the code and hope to see what could be happening, perhaps with IRB. Sixth, after finding, fix and retest.

=end
