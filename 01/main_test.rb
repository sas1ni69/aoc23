require 'minitest/autorun'
require_relative 'main'

class TestMain < Minitest::Test
  def test_number_word_and_digit_matching
    lines = %w[
      8twoonehcnszgqfvxxrqrjctc
      66866eighttwofivesix
      zceightwojbhlkl4
      vsxgdsgxsdlq23fourvhfbbtjsfhfive9hkbbqzeightwotps
      vjkeightwofive1vspseven
    ]

    expected = [81, 66, 84, 22, 87].sum
    result   = Main.run(lines)

    assert_equal(expected, result, "Expected #{expected}, got #{result}")
  end
end
