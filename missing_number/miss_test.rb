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

end
