# Write a method that will take two numbers,
# and return whichever is the largest.
#
# Example:
# largest_number(100,50) should return 100
# largest_number(10,20) should return 20
#
# Check your solution by filling in the folowing table:
# number_1 || number_2 || expected || actual
# 
# If your stuck try working togeather
# 
# Beast Mode:
# If you complete the challenge, feel free to come up
# with your own examples and test corner cases.
# 
# Examples - what if both numbers are equal or are strings?

def largest_number (number_1, number_2)
  if number_1.is_a? String or number_2.is_a? String
    puts "Oops, this is a string"
  else
    if number_1 > number_2
      puts number_1
    elsif number_2 > number_1
      puts number_2
    else number_1 == number_2
      puts "These numbers are the same!"
    end
  end
end

largest_number(100,50)
largest_number(10,20)
largest_number("5", 10)
largest_number(5,5)
largest_number(33.33, 33.36)