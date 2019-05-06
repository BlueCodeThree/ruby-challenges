# Background
# Using array and string methods
# Passing in one argument

## Specs

#Your task is to make a function that can take any
#non-negative integer as a argument and return it
#with its digits in descending order.
#Essentially, rearrange the digits to create
#the highest possible number.

#Examples:
#Input: 21445 Output: 54421
#Input: 145263 Output: 654321
#Input: 1254859723 Output: 9875543221

def descending_order(n)
    number = n.to_s.split(//).map{ |x| x.to_i}
    number = number.sort.reverse
    return number.join
end

# Test your code here
puts descending_order(21445)
puts descending_order(145263)
puts descending_order(1254859723)

# Add some interesting test cases that test edge cases

puts descending_order("1254859723")
puts descending_order("123abc")
puts descending_order(191919191919191919191)