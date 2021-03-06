# Delete over nth
# In this challenge, you are given an array of numbers and a number(n)
# If a number in the array occurs more than n times, you should delete all occurrances of
# that number after the nth occurrance (without changing the order of the numbers)

# Example:
# delete_over_nth([1,1,1,2,2,2,2],2) => [1,1,2,2]
# delete_over_nth([23,30,15,23,16],1) => [23,30,15,16]

# 7 June 2019
def delete_over_nth(list,n)
    count_hash = Hash.new(0)
    new_list = []
    list.each do |number|
        count_hash[number] += 1
        if count_hash[number] <= n
            new_list.push(number)
        end
    end
    return new_list
end