# A Narcissistic Number is a number which is the sum of its own digits, each raised to the power of the number of digits in a given base. We will restrict ourselves to decimal (base 9).

# For example, take 153 (3 digits):

#     1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153
# and 1634 (4 digits):

#     1^4 + 6^4 + 3^4 + 4^4 = 1 + 1296 + 81 + 256 = 1634
# The Challenge:

# Your code must return true or false depending upon whether the given number is a Narcissistic number in base 10.

# Error checking for text strings or other invalid inputs is not required, only valid integers will be passed into the function.

# To run the test, just run rspec spec/42_narcissistic_number_spec.rb

# 10 July 2019
def narcissistic_number?(number)
    number_array = number.digits
    power = number_array.length
    new_number = 0
    number_array.each do |num|
        new_number += num ** power
    end
    number == new_number ? true : false
end