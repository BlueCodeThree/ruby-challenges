# Valid parentheses

# Write a method that returns true if the argument string contains valid parentheses
# Examples that evaluate to true:
# valid_parentheses?("()") => true
# valid_parentheses?("abc") => true
# valid_parentheses?("(a(bc))") => true
#
# Examples that evaluate to false:
# valid_parentheses?("(") => false
# valid_parentheses?("abc)") => false
# valid_parentheses?("(a(bc)") => false

# 7 June 2019
def valid_parentheses?(string)
    brackets = Hash.new(0)
    string.chars.each do |char|
        if char == "(" || char == ")"
            brackets[char] += 1
        end
        return false if brackets[")"] > brackets["("]
    end
    return brackets["("] == brackets[")"] ? true : false
end