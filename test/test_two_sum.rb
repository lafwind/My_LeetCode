require 'minitest/autorun'
require './lib/two_sum'

class TestTwoSum < Minitest::Test
  def test_two_sum
    assert_equal [1, 2], two_sum([2, 7, 11, 15], 9)
    assert_equal [2, 3], two_sum([2, 7, 11, 15], 18)
    assert_equal [1, 3], two_sum([1, 2, 18, 15], 19)
  end
end
