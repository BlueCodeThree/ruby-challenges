# Included Once
#
# Write a method that takes an array and a string. Return
# true if the string is found in the array only once.
# Otherwise return false.
#
# What's the time complexity of your solution? Can it be improved?
#
# *** Whiteboard this first ***
#
# Difficulty: 4/10
#
# Example:
# includedOnce(['hello','hi','hi'], 'hi') -> false
# includedOnce(['hello','hi','hey'], 'hi') -> true
#
# Check your solution by running the tests:
# ruby tests/14_included_once_test.rb
#


# These two pass the tests, but I don't think they answer the question. So I've modified the tests
# def included_once(haystack, needle)
#   haystack & haystack == haystack
# end

# def included_once(haystack, needle)
#   haystack.uniq.count == haystack.count
# end

# this one is trying to match the needle and haystack, which the other solutions didn't
# I've modified the tests so that it actually tests if the needle is in the haystack only once. 
def included_once(haystack, needle)
  count = 0
  for hay in haystack
    if hay == needle
      count += 1
    end
    # if count > 2
    #   break
    # end
  end
  count == 1
end

# 15-04-2019 
# Added a break so that it doesn't have to go through the whole array if it finds two
