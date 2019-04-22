# Unique

# Ruby has a handy array.unique helper which removes
# duplicates. Imlpement your own version of the helper,
# without using .unique.

# Difficulty:
# 5/10

# Example:
# unique([1,2,3,3]) should return [1,2,3]
# unique(["tom", "tom", "tom"]) should return ["tom"]

# Hints:
# A hash could be helpful in your solution.

# Check your solution by running the tests:
# ruby tests/10_unique_test.rb

# def unique(mylist)

#   # get each item in the array, add it to a hash, and set the initial count to 0
#   count = {}
#   mylist.each do |i|
#     count[i] = 1
#   end

    # THIS DOESN'T WORK - I CAME UP WITH MY ANSWER WHILE TRYING THIS COMPLICATED MESS
#   # go through each item in the array and count how many times each item occurs
#   mylist.each do |i|
#     count.each do |k, v|
#       if i.to_s == k.to_s
#         count[k] = v + 1
#         # if count is greater than 1, get rid of it from the original list
#         p v
#         if v > 1
#         end
#       end
#     end
#   end
#   p mylist
# end

def unique(mylist)
  copy = mylist
  newlist = copy & mylist
  return newlist
end
