# Interesting number

# An interesting number is one with at least 3 digits,
# in which the digits are either incrementing or decrementing.

# Examples:
# interesting_number(789) => true
# interesting_number(321) => true
# interesting_number(798) => false
# interesting_number(6) => false
# interesting_number(23) => false

# When the digits are incrementing, 0 comes after 9:
# interesting_number(7890) => true
# When the digits are decrementing, 0 comes after 1:
# interesting_number(3210) => true

# 27 May 2019
def interesting_number(number)
    nums = number.to_s.chars.map(&:to_i)

    # needs to be at least 3 numbers
    return false if nums.length < 3

    # decrementing
    return true if nums.reverse == nums.sort

    # for incrementing numbers, 0 at the end after 9 is ok
    if nums[-1] == 0
        nums[-1] = 10
    end

    # incrementing
    return true if nums == nums.sort

    # if all above are wrong, return false.
    return false
end