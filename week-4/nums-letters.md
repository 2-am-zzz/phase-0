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