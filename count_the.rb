# Write a program that: 
#   asks the user to enter a sentence.
#   then finds the number of times 'the' appears in the given string
#   and finally prints, "'the' appeared x times", where x is an Integer

p "Enter a sentence:"
sentence = gets.gsub(/[^a-z0-9\s]/i,"").chomp.split
p sentence.count("the")
p  "'the' appeared " + sentence.count("the").to_s + " times"