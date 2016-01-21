# Factorial

# I worked on this challenge with bethelhem assefa.


# Your Solution Below
def factorial(number)
  if number == 0 || number == 1 
    return 1
  end
  total = 1
  number.downto(1) do |x|
    total *= x
  end
  return total
end


=begin
Pseudocode

If number is 0, then return 1.
If number is 1, then return 1.
Set 'total' to 1

Set 'x' to number
While 'x' is greater than or equal to 1
  Set 'total' to 'total' times 'x'
  set 'x' to 'x' minus 1
end

Return 'total'


=end

# should output 6
puts factorial(3)
# should output 1
puts factorial(0)
# should output 1
puts factorial(1)
# should output 120
puts factorial(5)

