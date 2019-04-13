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
# 13-04-2019
puts "Please tell me about your yourself, your family, and what you like."
user_input = gets.chomp.downcase

def count_words(user_input)
    # trying out some regex, thanks to the internet
    words = user_input.gsub(/\W/, ' ').split
    # learnt about the difference between initializing hash = {} => returns nil, vs Hash.new(0) => returns 0, for adding more numbers
    frequency = Hash.new(0)
    # trying this one line stuff...
    words.each { |word| frequency[word.downcase] += 1 }
    puts frequency
end

count_words(user_input)

# Beast Mode:
# Change your code so that it doesn't matter if capital letters are used,
# In the above example the result should be:
# hi 3
# hello 1
# 1 2