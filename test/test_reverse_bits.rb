require 'minitest/autorun'
require './lib/reverse_bits'

class TestReverseBit < Minitest::Test

  def test_reverse_bits
    assert_equal 964176192, reverse_bits(43261596)
    assert_equal 0, reverse_bits(0)
  end
end
