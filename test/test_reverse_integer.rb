require 'minitest/autorun'
require './lib/reverse_integer'

class TestReverseInteger < Minitest::Test

  def test_reverse
    assert_equal 123, reverse(321)
    assert_equal 222, reverse(222)
    assert_equal (-123), reverse(-321)
    assert_equal (-123456), reverse(-6543210)
  end

end
