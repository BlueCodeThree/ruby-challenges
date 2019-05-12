# Sorting algorithms are a key tool in programming.
#
# Write an algorithm that will sort an array of numbers
# in ascending order.
# Do not use the .sort method - the idea is that you write
# your own sort method.
#
# Use hand simulation or pythontutor.com to determine how
# many times your solution visits each element of the array
# in a worse case scenario. If your array has 10 elements for example,
# in a worse case situation does your algorithm examine each element
# once? Twice? More? Less?
#
# This will help you begin to understand order of complexity
# of algorithms.
#
# Optional:
# Look up explanations of common sorting algoithms
# like bubble sort and quick sort. Don't look up code, just look up the
# explanations and see if you can implement one of those.
# Which one is your favourite and why?
#
# Example input: [2,5,4,8,2]
# Expected output: [2,2,4,5,8]

# 11 May 2019 - My own attempt
# Doesn't work, it gets rid of two numbers if they're the same
def sort1(num_array)
    sorted_array = []
    while num_array.length > 0
        sorted_array.push(num_array.min)
        num_array.delete(num_array.min)
    end
    return sorted_array
end

# bubble sort
# swaps the two adjacent numbers
# adapted from python code - https://www.geeksforgeeks.org/bubble-sort/
def sort2(num_array)
    n = num_array.length - 1
    for i in 0..n
        for j in 0..(n-i-1)
            if num_array[j] >= num_array[j+1]
                num_array[j], num_array[j+1] = num_array[j+1], num_array[j]
            end
        end
    end
    return num_array
end

# quick sort
# has a pivot number and sorts the numbers out from the pivot.
# copied straight from https://www.youtube.com/watch?v=0xwIYkeLcDQ
# because I can understand it but couldn't work out how to apply it
# actually, I did slightly modify the code, so winning?!?!!?
def sort(num_array)
    return num_array if num_array.empty?
    pivot = num_array.pop
    left = []
    right = []

    num_array.each do |x|
        if x < pivot
            left << x
        else
            right << x
        end
    end
    return (sort(left) << pivot << sort(right)).flatten
end

p sort([2,5,4,8,2])
