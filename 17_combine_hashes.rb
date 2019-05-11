# Combine Hashes

# Write a method which will take two different hashes and will
# return their combined value in a new hash.

# If the hash contains numbers, the numbers for matching keys should
# be added and the sum stored in the combined hash

# If the hash contains strings, the strings for matching keys should
# be concatenated and the result stored in the combined hash

# Example:
# hash1 = { a: 3, b: 5, c: 1}
# hash2 = { a: 5, b: 2, c: 14}
# combine_hashes => { a: 8, b: 7, c: 15 }

# Example:
# hash3 = {a: "a", b:"b", c:"c"}
# hash4 = {a: "a", b:"b", c:"c"}
# combine_hashes => {a: "aa", b:"bb", c:"cc"}



# Test your solution with ruby tests/17_combine_hashes.rb

# 27 April 2019
def combine_hashes(hash1, hash2)
  hash1.each { |k, v| hash1[k] = v + hash2[k] }
  return hash1
end