# Write a program which will ask users for a string input.
# The program should display the input unless, it contains the letter 's'.

# If 's' is included change the output so that it will be 'th' instead.

# Examples:
# input = say hi
# output = thay hi

# input = mississippi
# output = miththiththippi

# Hint:
# Look up String on Ruby docs to help.

# Check your solution by running:
# ruby 15_change_letters.rb


# 22 April 2019
def s_th(string)
    th_ify = string.chars.map { |x| x == "s" ? 'th' : x }
    return th_ify.join
end

puts "Write a string with lots of words"
puts s_th(gets.chomp)