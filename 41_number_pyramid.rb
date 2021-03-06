# Number pyramid
# Number pyramid is a recursive structure where each next row is constructed by adding adjacent values of the current row. For example:

# Row 1     [1     2     3     4]
# Row 2        [3     5     7]
# Row 3           [8    12]
# Row 4             [20]
# Task
# Given the first row of the number pyramid, find the value stored in its last row.

# Examples
# reduce_pyramid([1])        ==  1
# reduce_pyramid([3, 5])     ==  8
# reduce_pyramid([3, 9, 4])  ==  25

# 7 June 2019
def reduce_pyramid(pyramid)
  return 0 if pyramid == []
  return pyramid[0] if pyramid.length == 1

  new_pyramid = []
  doit_this_much = pyramid.length - 1
  index = 1

  doit_this_much.times do
    new_pyramid.push(pyramid[index] + pyramid[index - 1])
    index += 1
  end

  reduce_pyramid(new_pyramid)
end

