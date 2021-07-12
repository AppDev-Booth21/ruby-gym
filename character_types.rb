# Write a program that:
#   Asks the user to enter a sentence
#   Counts the total number of letters in the given sentence
#   Counts the total number of spaces in the given sentence
#   Counts the total numbers of digits in the given sentence
#   and prints the intormation out

# Example:

#  "Enter a sentence:"
#  here 12 plus 25
#  "Number of letters in the string is: 8"
#  "Number of spaces in the string is: 3"
#  "Number of digits in the string is: 4"

p "Enter a sentence:"
sentence = gets.chomp

spaces = sentence.split("").count - sentence.gsub(/\s+/, "").split("").count
letters = sentence.gsub(/[^a-z]/i,"").split("").count
digits = sentence.gsub(/[^0-9]/,"").split("").count

puts "Number of letters in the string is: #{letters}"
puts "Number of spaces in the string is: #{spaces}"
puts "Number of digits in the string is: #{digits}"
