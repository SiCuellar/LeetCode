require 'minitest/autorun'
require 'minitest/pride'
require_relative 'longest_sub'

class LongestSubTest < Minitest::Test
  def setup
    @longest_sub = LongestSub.new
  end

  def test_it_exist
    assert_instance_of LongestSub, @longest_sub
  end

  def test_it_can_return_single_longest_string
    skip
    string = "aaa"
    assert_equal 1, @longest_sub.length_of_longest_substring(string)
  end
  #
  def test_it_can_return_longest_string_with_multiple
    string = "abcabcbb"
    assert_equal 3, @longest_sub.length_of_longest_substring(string)
  end
  #
  # def test_it_can_return_count_of_weird_length
  #   string = "pwwkew"
  #   assert_equal 3, @longest_sub.length_of_longest_substring(string)
  # end
end
