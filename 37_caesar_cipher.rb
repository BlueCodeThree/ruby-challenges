# Write a class that implements the Caesar cipher.
# (http://practicalcryptography.com/ciphers/caesar-cipher/)
#
# When given a string, will return an uppercase string with each letter shifted
# forward in the alphabet by however many spots the cipher was initialized to.
#
# For example:
#
# c = CaesarCipher.new(5); # creates a CipherHelper with a shift of five
# c.decode('BFKKQJX') # returns 'WAFFLES'
#
# If the shift pushes beyond the end of the alphabet, start back at 'A'
# Example:
# c = CaesarCipher.new(1)
# c.encode('ZOO') # returns 'APP'
#
# If something in the string is not in the alphabet (e.g. punctuation, spaces), simply leave it as is.
#
# The shift will always be in range of [1, 26].

# 5 June 2019
class CaesarCipher1
  def initialize(shift)
    @alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    @shift = shift
  end

  def encode(string)
    new_string = []
    string.chars.each do |char|
      if is_char_in_alpha(char) == true
        place = find_place_in_alphabet(char)
        if place + @shift > 25
          place = 25 - (place + @shift)
        end
        new_string.push(num_to_alpha(place + @shift))
      end
    end
    return new_string.join
  end

  def decode(string)
    new_string = []
    string.chars.each do |char|
      if is_char_in_alpha(char) == true
        place = find_place_in_alphabet(char)
        if place + @shift > 25
          place = 25 - (place + @shift)
        end
        new_string.push(num_to_alpha(place - @shift))
      end
    end
    return new_string.join
  end

  def is_char_in_alpha(c)
    c =~ /[A-Za-z]/ ? true : false
  end

  def find_place_in_alphabet(c)
    return @alphabet.index(c.upcase)
  end

  def num_to_alpha(num)
    return @alphabet[num]
  end

end

# 1 July 2019
class CaesarCipher
  def initialize(shift)
    @shift = shift
  end

  def encode_internal(string, shift_amount)
    new_string = []
    string.chars.each do |char|
      if is_char_in_alpha(char) == true
        place = find_place_in_alphabet(char)
        new_string.push(num_to_alpha((place + shift_amount)%26))
      end
    end
    return new_string.join
  end

  def encode(string)
    return encode_internal(string, @shift)
  end

  def decode(string)
    return encode_internal(string, -@shift)
  end

   def find_place_in_alphabet(c)
    return c.upcase.ord - 'A'.ord
  end

    def is_char_in_alpha(c)
    c =~ /[A-Za-z]/ ? true : false
  end

  def num_to_alpha(num)
    return ('A'.ord + num).chr
  end
end