# 4.2 Numbers, Letters, and Variable Assignment

## Release 1: Summarize

### Questions

+ What does puts do?
  + Puts will print out a result to the console with a newline added.
+ What is an integer? What is a float?
  + An integer is some whole number, or specifically, numbers without decimal points. A float is a number with a decimal point. It is important to note that all integers can also be represented as a float, but not the other way around.
+ What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  + Float division works just like normal division in that it returns an exact result like we would see with pen and paper. Integer division on the other hand only returns the non-decimal portion of a division, akin to dropping the remainder in a long division calculation. 

 ## Release 2: Try it!

 ```ruby
 def hours_in_year
	puts "The number of hours in a year are: "
	p 365*24
end

def minutes_in_a_decade
	puts "The number of minutes in a decade are: "
	p hours_in_year()*10*60
end
```

## Release 5: Exercises

### Exercise 4.2.1: Defining Variables

Link: [https://github.com/Zanibas/phase-0/blob/master/week-4/defining-variables.rb](https://github.com/Zanibas/phase-0/blob/master/week-4/defining-variables.rb)

### Exercise 4.2.2: Simple String Methods

Link: [https://github.com/Zanibas/phase-0/blob/master/week-4/simple-string.rb](https://github.com/Zanibas/phase-0/blob/master/week-4/simple-string.rb)

### Exercise 4.2.3: Local Variables and Basic Arithmetical Expressions

Link: [https://github.com/Zanibas/phase-0/blob/master/week-4/basic-math.rb](https://github.com/Zanibas/phase-0/blob/master/week-4/basic-math.rb)

## Release 7: Reflect

+ How does Ruby handle addition, subtraction, multiplication, and division of numbers?
  + Ruby handles these operators based on the input given. If integers are given, then integer arithmetic is executed. If floats are present instead, then floating-point calculations with more precision are used. When strings are used in conjunction with integers, then string manipulation methods are invoked.
+ What is the difference between integers and floats?
  + Integers represent whole numbers both positive and negative, meaning they lack a decimal component. Floats are represented using floating-point representations that are approximate, yet more accurate representations of numbers with a decimal component.
+ What is the difference between integer and float division?
  + Integer division will only return values corresponding to integers. The 'remainder' is effectively cut off and the nearest rounded-down integer is returned. Float division works just like normal division, in that it will return a decimal value that is more representative of the actual division of these numbers.
+ What are strings? Why and when would you use them?
  + Strings are basically a sequence of characters, which are basically just letters, numbers, and symbols. You would use strings to produce messages to relay to the console, or label data that is stored in a data structure such as a hash table.
+ What are local variables? Why and when would you use them?
  + Local variables are variables that are valid only in the current 'scope' they are defined in. For examples, local variables declared in a function will override variables declared outside, but they won't override those variables--the variables only last for as long as their context is active. You would use local variables as temporary storages in your functions, as well as during testing when you need to call functions.
+ How was this challenge? Did you get a good review of some of the basics?
  + This challenge was fairly easy. Even though the reading was informative, as long as you passed the Ruby challenge to get into this bootcamp, you could get through this fairly easy. This isn't the same for everyone, especially for those without experience, but it was definitely within comfort level for myself.