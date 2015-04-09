require 'minitest/autorun'
require './lib/length_of_longest_substring'

class TestLengthOfLongestSubstring < Minitest::Test

  def test_length_of_longest_substring
    assert_equal 3, length_of_longest_substring("abcabcbb")
    assert_equal 1, length_of_longest_substring("aaaaaa")
  end
end
