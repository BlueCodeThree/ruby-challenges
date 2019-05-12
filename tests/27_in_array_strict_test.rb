require 'test/unit'
require_relative '../27_in_array_strict'

class InArrayTest < Test::Unit::TestCase
    def test_in_array
        assert_equal(false, in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], true))
        assert_equal(true, in_array_strict?("HeLLo", ["hi", "howdy", "Hello"], false))
    end
end