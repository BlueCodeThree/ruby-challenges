require 'test/unit'
require_relative '../16_palindrome'

class PalindromeTest < Test::Unit::TestCase
    def test_palindrome
        assert_equal(true, palindrome("mum"))
        assert_equal(false, palindrome("dog"))
        assert_equal(true, palindrome("racecar"))
        assert_equal(false, palindrome("hello"))
    end
end

class Palindrome2Test < Test::Unit::TestCase
    def test_palindrome2
        assert_equal(true, palindrome2("mum"))
        assert_equal(false, palindrome2("dog"))
        assert_equal(true, palindrome2("racecar"))
        assert_equal(false, palindrome2("hello"))
    end
end