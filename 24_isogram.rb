# Isogram
# Difficulty: medium

# An isogram is a word that has no repeatting letters;
# consecutive or non-consecutive.

# Implement a method that determines whether a string
# that contains only letters is an isogram.
# The function will take the string as input, and will
# return either true or false.


# *E.g.* isogram?("hello") should return false

# *E.g.* isogram?("scary") should return true

# 12 May 2019
def isogram?(input)
    input.chars.uniq.length == input.length ? true : false
end

# Test your code here
puts isogram?("hello") #should return false
puts isogram?("scary") #should return true
