# Vowels

# Write a method that will take a string and
# return an array of vowels used in that string.

# Example:
# count_vowels("The quick brown fox") should return ["e","u","i","o","o"]
# count_vowels("Hello World") should return ["e","o","o"]

# Check your solution by running the tests:
# ruby tests/09_vowels_test.rb

def vowels(string)
    new_string = []
    string.split("").each do |letter|
        if letter == "a" || letter == "e" || letter == "i" || letter == "o" || letter == "u" ||letter == "A" || letter == "E" || letter == "I" || letter == "O" || letter == "U"
            new_string.push(letter)
        end
    end
    return new_string
end