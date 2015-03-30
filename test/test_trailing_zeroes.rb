require 'minitest/autorun'
require './lib/trailing_zeroes'

class TestTrailingZeroes < Minitest::Test

  def test_trailing_zeroes
    assert_equal 2, trailing_zeroes(10)
  end
end
