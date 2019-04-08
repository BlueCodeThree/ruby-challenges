require 'test/unit'
require_relative '../04_sum_numbers'

class LargestNumberTest < Test::Unit::TestCase
  def test_sum_numbes
    assert_equal(3, sum_numbers([1,1,1]))
    assert_equal(117, sum_numbers([5,2,100,0,10]))
    assert_equal(290, sum_numbers([55,23,183,0,29]))
    assert_equal(108, sum_numbers([4, 8, 15, 16, 23, 42]))
    assert_equal(0, sum_numbers([]))
  end
  def test_sum_numbes2
    assert_equal(3, sum_numbers2([1,1,1]))
    assert_equal(117, sum_numbers2([5,2,100,0,10]))
    assert_equal(290, sum_numbers2([55,23,183,0,29]))
    assert_equal(108, sum_numbers2([4, 8, 15, 16, 23, 42]))
    assert_equal(0, sum_numbers2([]))
  end
end
