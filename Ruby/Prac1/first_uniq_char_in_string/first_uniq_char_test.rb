require_relative 'first_uniq_char'
require 'minitest/autorun'
require 'minitest/pride'

class FirstUniqCharTest < Minitest::Test
  def test_it_exists
    first_uniq_char = FirstUniqChar.new
    assert_instance_of FirstUniqChar, first_uniq_char
  end

  def test_it_can_find_first_non_repeating_char
    skip
    first_uniq_char = FirstUniqChar.new
    assert_equal "l", first_uniq_char.first_uniq_char("leetcode")
  end

  def test_it_can_find_index_for_non_repeating_char
    # skip
    first_uniq_char = FirstUniqChar.new
    assert_equal 0, first_uniq_char.first_uniq_char("leetcode")
  end

  def test_it_can_find_index_for_non_repeating_char_for_longer_string
    first_uniq_char = FirstUniqChar.new
    assert_equal 2, first_uniq_char.first_uniq_char("loveleetcode")
  end
end
