# Shortest walk
# Difficulty: hard

# A man was given directions to go from one point to another.
# The directions were "NORTH", "SOUTH", "WEST", "EAST".
# Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.
# Going to one direction and coming back the opposite direction is a needless effort.
# Since this is the wild west, with dreadfull weather and not much water,
# it's important to save yourself some energy, otherwise you might die of thirst!

# How I crossed the desert the smart way.
# The directions given to the man are, for example, the following:

# ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].

# You can immediatly see that going "NORTH" and then "SOUTH" is not reasonable,
# better stay to the same place! So the task is to give to the man a simplified
# version of the plan. A better plan in this case is simply:

# ["WEST"]

# Other examples:
# In ["NORTH", "SOUTH", "EAST", "WEST"],
# the direction "NORTH" + "SOUTH" is going north and coming back right away.
# What a waste of time! Better to do nothing.

# The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other,
# therefore, the final result is []

# In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"],
# "NORTH" and "SOUTH" are not directly opposite but they become directly
# opposite after the reduction of "EAST" and "WEST" so the whole path is reducible
# to ["WEST", "WEST"].

# Task
# Write a function shortest_walk which will take an array of strings and
# returns an array of strings with the needless directions removed
# (W<->E or S<->N side by side).

# Examples
# shortest_walk(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) # => ["WEST"]
# shortest_walk(["NORTH", "SOUTH", "EAST", "WEST"]) # => []

# The test with the challenge use rspec

# 22 May 2019
# This method goes over each in the list to try and find a match. If found, deletes from original list
def shortest_walk1(walk)
    walk.each do |direction|
        case direction
        when 'NORTH'
            walk.each do |x|
                if x == 'SOUTH'
                    walk.delete_at(walk.index('NORTH'))
                    walk.delete_at(walk.index('SOUTH'))
                end
            end
        when 'SOUTH'
            walk.each do |x|
                if x == 'NORTH'
                    walk.delete_at(walk.index('NORTH'))
                    walk.delete_at(walk.index('SOUTH'))
                end
            end
        when 'EAST'
            walk.each do |x|
                if x == 'WEST'
                    walk.delete_at(walk.index('WEST'))
                    walk.delete_at(walk.index('EAST'))
                end
            end
        when 'WEST'
            walk.each do |x|
                if x == 'EAST'
                    walk.delete_at(walk.index('WEST'))
                    walk.delete_at(walk.index('EAST'))
                end
            end
        end
    end
    if walk.length > 1
        shortest_walk(walk)
    end
    return walk
end


# also 22 May 2019
# This method goes over the list only once, and then creates a shorter list to work with.
def shortest_walk(walk)
    short_walk = [0, 0]
    walk.each do |direction|
        case direction
        when 'NORTH'
            short_walk[0] += 1
        when 'SOUTH'
            short_walk[0] -= 1
        when 'EAST'
            short_walk[1] += 1
        when 'WEST'
            short_walk[1] -= 1
        end
    end

    # this one has to go first incase it gets deleted
    if short_walk[1] == 1
        short_walk[1] = 'EAST'
    elsif short_walk[1] == -1
        short_walk[1] = 'WEST'
    else
        short_walk.delete_at(1)
    end

    if short_walk[0] == 1
        short_walk[0] = 'NORTH'
    elsif short_walk[0] == -1
        short_walk[0] = 'SOUTH'
    else
        short_walk.delete_at(0)
    end

    return short_walk
end