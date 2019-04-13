# Your challenge is to write a program which will ask the user for input.
# The code should then output the number of times words are used.

# Example:
# If the words 'hi hi Hi hello 1 1' are input, the result should be:
# hi 2
# Hi 1
# hello 1
# 1 2

# Test your solution by running 12_count_words

# Your code here
puts "Please tell me about your family in five sentences or more."
user_input = gets.chomp.downcase

def count_words(user_input)
    user_input.split(" ")

end

count_words(user_input)

# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2