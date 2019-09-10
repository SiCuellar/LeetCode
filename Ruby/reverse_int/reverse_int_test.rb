require 'minitest/autorun'
require 'minitest/pride'
require_relative 'reverse_int'

class ReverseTest < Minitest::Test
  def setup
    @reverse = Reverse.new
  end

  def test_it_exist
    assert_instance_of Reverse, @reverse
  end

  def test_it_can_reverse_a_two_value_digit
    assert_equal 12, @reverse.flip(21)
  end

  def test_it_can_reverse_negative_numbers
    assert_equal -321, @reverse.flip(-123)
  end

  def test_it_can_reverse_numbers_with_zeros
    assert_equal 21, @reverse.flip(120)
  end

  def test_it_can_reverse_numbers_with_long_value
    assert_equal 0, @reverse.flip(1534236469)
  end
end
