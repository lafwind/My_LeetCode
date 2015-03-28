require 'minitest/autorun'
require './lib/hamming_weight'

class TestHammingWeight < Minitest::Test

  def test_hamming_weight
    assert_equal 0, hamming_weight(0)
    assert_equal 1, hamming_weight(1)
    assert_equal 2, hamming_weight(3)
    assert_equal 3, hamming_weight(11)
    assert_equal 7, hamming_weight(127)
    assert_equal 1, hamming_weight(128)
    assert_equal 1, hamming_weight(1024)
  end

end
