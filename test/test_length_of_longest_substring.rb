require 'minitest/autorun'
require './lib/length_of_longest_substring'

class TestLengthOfLongestSubstring < Minitest::Test

  def test_length_of_longest_substring
    assert_equal 3, length_of_longest_substring("abcabcbb")
    assert_equal 1, length_of_longest_substring("aaaaaa")
    assert_equal 0, length_of_longest_substring("")
    assert_equal 2, length_of_longest_substring("al")
    assert_equal 8, length_of_longest_substring("waglfdelaxyz")
    assert_equal 2, length_of_longest_substring("aaooo")
  end
end
