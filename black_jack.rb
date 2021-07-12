# Write a program to play a variety of BlackJack.
# The program should ask the user to input two numbers separated by a space, and it should print their sum.
# 
# Here's the catch: 
#  if the sum is greater than 21, return 0, unless one of the numbers is 11. 
#  In such a case, the 11 should be 'converted' to a 1 to prevent the sum from being exceeded.
# 
# For example, given a 11 and 13 as input, the 11 should be 'converted' into a 1 so the total sum will be 14.

p "Enter two number separated by spaces:"
cards = gets.chomp.split

if cards.at(0).to_i + cards.at(1).to_i > 21 && 
    cards.at(0).to_i != 11 &&
    cards.at(1).to_i != 11
    p 0
elsif cards.at(0).to_i + cards.at(1).to_i > 21 && 
    cards.at(0).to_i == 11
    cards[0]=1
    p cards.at(0).to_i + cards.at(1).to_i
elsif cards.at(0).to_i + cards.at(1).to_i > 21 && 
    cards.at(1).to_i == 11
    cards[1]=1
    p cards.at(0).to_i + cards.at(1).to_i
elsif cards.at(0).to_i + cards.at(1).to_i <= 21
    p cards.at(0).to_i + cards.at(1).to_i
end



