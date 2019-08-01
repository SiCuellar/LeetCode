require_relative "miss"
require "minitest/autorun"
require "minitest/pride"

class MissTest < Minitest::Test
  def test_it_exists
    miss = Miss.new
    assert_instance_of Miss, miss
  end

  def test_it_can_take_array_of_nums
    miss = Miss.new
    nums = [3,0,1]
    assert_equal 2, miss.missing_number(nums)
  end

  def test_it_can_find_missing_number
    miss = Miss.new
    nums = [9,6,4,2,3,5,7,0,1]
    assert_equal 8, miss.missing_number(nums)
  end

  def test_it_returns_1_if_no_numbers_are_missing
    miss = Miss.new
    nums = [0]
    assert_equal 1, miss.missing_number(nums)
  end
end
