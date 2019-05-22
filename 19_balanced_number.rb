
# A balanced number is the number that the sum of all digits to the left of the middle digit(s)
# and the sum of all digits to the right of the middle digit(s) are equal.

# If the number has an odd number of digits then there is only one middle digit,
# e.g. 92645 has middle digit 6; otherwise, there are two middle digits ,
# e.g. 1301 has middle digits 3 and 0

# The middle digit(s) should not be considered when determining whether a
# number is balanced or not, e.g 413023 is a balanced number because the
# left sum and right sum are both 5 ('30' are the middle digits).

# Number passed is always positive.

# Return a string "Balanced" or "Not Balanced"

# Examples


# balancedNum(7)
# => "Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digit (0)
# and the sum of all digits to the right of the middle digit (0) are equal, then it's balanced.
# Note: The middle digit is 7.


# balancedNum(295591)
# => "Not Balanced"
# Explanation:

# Since, the sum of all digits to the left of the middle digits (11)
# and the sum of all digits to the right of the middle digits (10) are equal, then it's not balanced.
# Note: The middle digit(s) are 55.

# balancedNum(959)
# => "Balanced"
#Explanation:
# Since, the sum of all digits to the left of the middle digits (9)
# and the sum of all digits to the right of the middle digits (9) are equal, then it's balanced.
# Note: The middle digit is 5.

# balancedNum(27102983)
# => "Not Balanced"
# Explanation:
# Since, the sum of all digits to the left of the middle digits (10)
# and the sum of all digits to the right of the middle digits (20) are equal, then it's not balanced.
# Note : The middle digit(s) are 02..

# 4 May 2019
def balanced_num2(number)
        number = number.to_s

        # is even?
        if number.length % 2 == 0
                first_half = number.slice(0, number.length/2 - 1).split(//)
                second_half = number.slice(number.length/2 + 1, number.length).split(//)

        # is odd?
        else
                first_half = number.slice(0, number.length/2).split(//)
                second_half = number.slice(number.length/2 + 1, number.length).split(//)
        end

        # calculate each half
        first_half_sum = 0
        first_half.each { |x| first_half_sum += x.to_i}
        second_half_sum = 0
        second_half.each { |x| second_half_sum += x.to_i}

        # is balanced?
        if first_half_sum == second_half_sum
                return "Balanced"
        else
                return "Not Balanced"
        end
end

# also 4 May 2019
def balanced_num(number)
        # number = number.to_s.split(//).map{ |x| x.to_i}
        number = number.digits

        # is even?
        if number.length % 2 == 0
                first_half = number[0, number.length/2 - 1]

        # is odd?
        else
                first_half = number[0, number.length/2]
        end

        second_half = number[number.length/2 + 1, number.length]

        # is balanced?
        first_half.sum == second_half.sum ? "Balanced" : "Not Balanced"
end
