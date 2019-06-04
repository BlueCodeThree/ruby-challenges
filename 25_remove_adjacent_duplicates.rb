# Remove adjacent duplicates
    # Your code goes here

# Sometimes we have input with adjacent duplicates, and we want to remove
# those adjacent duplicates, keeping the original input in order.

# Create a method, which takes a string argument and returns a string
# with duplicate adjacent elements removed, preserving the original
# order of characters and preserving original case. Your algorithm
# should be case sensitive, meaning that "Aa" should not be considered
# duplicate adjacent characters, like "aa" or "AA".

# *E.g.* remove_adjacent_duplicates("AAaAbbCCCcDDcDA") should return "AaAbCcDcDA"

# *E.g.* remove_adjacent_duplicates("abcABCabcABC") should return exactly the same string: "abcABCabcABC"

# 12 May 2019
def remove_adjacent_duplicates1(input)
    input = input.chars
    i = 1
    input.length.times do
        if input[i] == input[i-1]
            input.delete_at(i)
        else
            i += 1
        end
    end
    return input.join
end

# class solution 27 May 2019
def remove_adjacent_duplicates(input)
    result = ""
    last = ""
    input.chars.each do |letter|
        if letter != last
            result += letter
            last = letter
        end
    end
    return result
end