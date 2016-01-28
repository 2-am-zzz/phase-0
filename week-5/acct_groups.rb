people = ["Alivia Blount","Alyssa Page","Alyssa Ransbury","Andria Reta","Austin Dorff","Autumn McFeeley","Ayaz Uddin","Ben Giamarino","Benjamin Heidebrink","Bethelhem Assefa","Bobby Reith","Dana Breen","Brett Ripley","Rene Castillo","Justin J Chang","Ché Sanders","Chris Henderson","Chris Pon","Colette Pitamba","Connor Reaumond","Cyrus Vattes","Dan Heintzelman","David Lange","Eduardo Bueno","Liz Roche","Emmanuel Kaunitz","FJ","Frankie Pangilinan","Ian Fricker","Ian Thorp","Ivy Vetor","Jack Baginski","Jack Hamilton","JillianC","John Craigie","John Holman","John Maguire","John Pults","Jones Melton","Tyler Keating","Kenton Lin","Kevin Serrano","wolv","Kyle Rombach","Laura Montoya","Luis Ybarra","Charlotte Manetta","Marti Osteyee-Hoffman","Megan Swanby","Mike London","Michael Wang","Michael Yao","Mike Gwozdek","Miqueas Hernandez","Mitchell Kroska","Norberto Caceres","Patrick Skelley","Peter Kang","Philip Chung","Phillip Barnett","Pietro Martini","Robbie Santos","Rokas Simkonis","Ronu Ghoshal","Ryan Nebuda","Ryan Smith","Saralis Rivera","Sam Assadi","Spencer Alexander","Stephanie Major","Taylor Daugherty","Thomas Farr","Maeve Tierney","Tori Huang","Alexander Williams","Victor Wong","Xin Zhang","Zach Barton"]

=begin
Pseudocode	
Input: Array of names in string format
Output: Hash with key:value being group_number:[array of individuals]
Steps:

DEFINE make_groups with argument people
	Create a copy of 'people' and store it in 'persons'
	Determine the length of 'people' and store it in 'len'
	Set variable 'group_num' to 1
	Create an empty hash called 'groups'
	IF the length of persons is less than 5, return 'persons'
	ELSIF the 'len' modulo 5 is equal to 4
		add a new pair to 'groups' by taking the first 4 people from 'persons' as a value and the key being group_num
		increment group_num by 1
		remove the first four people from 'persons'
	ELSIF the 'len' modulo 5 is equal to 3
		add a new pair to 'groups' by taking the first 3 people from 'persons' as a value and the key being group_num
		increment group_num by 1
		remove the first 3 people from 'persons'
	ELSIF the 'len' modulo 5 is equal to 2
		add a new pair to 'groups' by taking the first 4 people from 'persons' as a value and the key being group_num
		increment group_num by 1
		remove the first 4 people from 'persons'
		add a new pair to 'groups' by taking the first 3 people from 'persons' as a value and the key being group_num
		increment group_num by 1
		remove the first 3 people from 'persons'
	ELSIF the 'len' modulo 5 is equal to 1
		add a new pair to 'groups' by taking the first 3 people from 'persons' as a value and the key being group_num
		increment group_num by 1
		remove the first 3 people from 'persons'
		add a new pair to 'groups' by taking the first 3 people from 'persons' as a value and the key being group_num
		increment group_num by 1
		remove the first 3 people from 'persons'
	WHILE the 'persons' array is not empty
		add a new pair to 'groups' by taking the first 5 people from 'persons' as a value and the key being group_num
		increment group_num by 1
		remove the first 5 people from 'persons'
	RETURN 'persons'

=end

# def make_groups(people)
#   persons = people
#   len = people.length
#   group_num = 1
#   groups = {}
#   if len <= 5
#     return persons
#   elsif len % 5 == 4
#     groups[group_num] = persons[0..3]
#     persons = persons[4..-1]
#     group_num += 1   
#   elsif len % 5 == 3
#     groups[group_num] = persons[0..2]
#     persons = persons[3..-1]
#     group_num += 1   
#   elsif len % 5 == 2
#     groups[group_num] = persons[0..3]
#     persons = persons[4..-1]
#     group_num += 1    
#     groups[group_num] = persons[0..2]
#     persons = persons[3..-1]
#     group_num += 1   
#   elsif len % 5 == 1
#     groups[group_num] = persons[0..2]
#     persons = persons[3..-1]
#     group_num += 1    
#     groups[group_num] = persons[0..2]
#     persons = persons[3..-1]
#     group_num += 1    
#   end
#   while not persons.empty?
#     groups[group_num] = persons[0..4]
#     persons = persons[5..-1]
#     group_num += 1  
#   end
#   return groups
# end

def make_groups(people)
  persons = people
  len = people.length
  group_num = 1
  groups = {}
  if len <= 5
    return persons
  elsif len % 5 == 4
    group_num = add_group(groups,persons,group_num,4)   
  elsif len % 5 == 3
    group_num = add_group(groups,persons,group_num,3) 
  elsif len % 5 == 2
    group_num = add_group(groups,persons,group_num,3) 
    group_num = add_group(groups,persons,group_num,4) 
  elsif len % 5 == 1
    group_num = add_group(groups,persons,group_num,3) 
    group_num = add_group(groups,persons,group_num,3) 
  end
  while not persons.empty?
    group_num = add_group(groups,persons,group_num,5)
  end
  return groups
end

def add_group(groups,persons,group_num,offset)
  groups[group_num] = persons.shift(offset)
  return group_num.next
end

groupings = make_groups(people)
groupings.each do |key,value|
  puts value.length.to_s + " people in GROUP " + key.to_s + ": "
  value.each do |name|
    puts name
  end
  puts
end


=begin
REFLECTION QUESTIONS

What was the most interesting and most difficult part of this challenge?
	The most difficult part of this challenge had to be reducing the length of the code. By applying DRY principles, I was able to cut down the code significantly, however I'm still stumped as to how to reduce the edge cases down to a more general case. What was interesting was implementing the shift mechanism in order to make creating groups easier and keeping track of what to pull from the old array easier.

Do you feel you are improving in your ability to write pseudocode and break the problem down?
	Yeah, it's becoming more second-nature! However, at times I feel that drafting an initial solution is easier at times, although it's bad practice.


Was your approach for automating this task a good solution? What could have made it even better?
	I guess it's good? My improvement, if there are any, would be to find a way to generalize the edge cases of reducing the array down to a multiple of 5 to prepare for the main loop.


What data structure did you decide to store the accountability groups in and why?
	Hashes are the straightforward way. This way every group gets a number label and is contained in a value. The key is the number of the group and the value is an array of names.


What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
	I finally got to use shift! It's a useful method that I'm sure will have continued use in the future.

=end