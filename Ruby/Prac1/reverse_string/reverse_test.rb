require_relative 'reverse'
require 'minitest/autorun'
require 'minitest/pride'

class ReverseStringTest < Minitest::Test
  def test_it_exists
    reverse = ReverseString.new
    assert_instance_of ReverseString, reverse
  end

  def test_it_reverse_a_short_string
    reverse = ReverseString.new
    assert_equal ["i","h"], reverse.reverse_string(["h","i"])
  end

  def test_it_can_reverse_longer_strings
    reverse = ReverseString.new
    assert_equal ["h","a","n","n","a","H"], reverse.reverse_string(["H","a","n","n","a","h"])
  end

  def test_it_can_reverse_hello
    reverse = ReverseString.new
    assert_equal ["o","l","l","e","h"], reverse.reverse_string(["h","e","l","l","o"])
  end
end
