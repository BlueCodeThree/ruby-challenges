# Group by owners
# Implement a group_by_owners function that:
# Accepts a hash containing the file owner name for each file name.
# Returns a hash containing an array of file names for each owner name, in any order.

# Example:
# group_by_owners({'Input.txt' => 'Randy', 'Code.py' => 'Stan', 'Output.txt' => 'Randy'}
# should return {'Randy' => ['Input.txt', 'Output.txt'], 'Stan' => ['Code.py']}

# Have a look at the tests and take note of the different expect assertions used.
# Using these assertions allows testing without expecting a particular order of the files
# in the lists for each owner.

# 5 June 2019
def group_by_owners(input)
    new_hash = Hash.new(0)
    input.each do |key, value|
        if new_hash[value] == 0
            new_hash[value] = [key]
        else
            new_hash[value].append key
        end
    end
    return new_hash
end