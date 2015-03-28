require 'minitest/autorun'
require './lib/int_to_roman'

class TestIntToRoman < Minitest::Test

  def setup
    # code
  end

  def test_int_to_roman
    assert_equal "I", int_to_roman(1)
    assert_equal "XX", int_to_roman(20)
    assert_equal "XLV", int_to_roman(45)
    assert_equal "CMLXIII", int_to_roman(963)
    assert_equal "MCMLXXX", int_to_roman(1980)
    assert_equal "MMMCMXCIX", int_to_roman(3999)
  end
end
