# Missing letter
# Difficulty: medium/hard

# Write a method that takes an array of consecutive (increasing)
# letters as input and that returns the missing letter in the array.

# You will always get an valid array. And it will be always exactly
# one letter be missing. The length of the array will always be at least 2.
# The array will always contain letters in only one case.

# Example:

# missing_letter(['a','b','c','d','f']) -> 'e'
# missing_letter(['O','Q','R','S']) -> 'P'

# Included test uses rspec

# 22 May 2019
def missing_letter(word)
    alphabet = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    for letter in alphabet.split("")
        if letter == word[0]
            start = alphabet.index(letter)
            break
        end
    end

    for letter in word
        if letter != alphabet[start]
            return alphabet[start]
        else start +=1
        end
    end
end
