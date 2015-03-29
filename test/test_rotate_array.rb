require 'minitest/autorun'
require './lib/rotate_array'

class TestRotateArray < Minitest::Test

  def setup
    @nums = [1,2,3,4,5,6,7]
    @n = [1]
  end

  def test_rotate_array
    assert_equal [1, 2, 3, 4, 5, 6, 7], rotate_array(@nums, 0)
    assert_equal [1, 2, 3, 4, 5, 6, 7], rotate_array(@nums, @nums.length)
    assert_equal [5,6,7,1,2,3,4], rotate_array(@nums, 3)
  end

  def test_rotate_array_2
    assert_equal [1], rotate_array(@n, 0)
    assert_equal [1, 2, 3, 4, 5, 6, 7], rotate_array(@nums, 0)
    assert_equal [1, 2, 3, 4, 5, 6, 7], rotate_array(@nums, @nums.length)
    assert_equal [5,6,7,1,2,3,4], rotate_array(@nums, 3)
  end

end
