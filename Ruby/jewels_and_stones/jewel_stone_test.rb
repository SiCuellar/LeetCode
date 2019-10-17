require "minitest/autorun"
require "minitest/pride"
require_relative "jewel_stone"

class JewelStoneTest < Minitest::Test
  def test_it_exists
    jewel_stone = JewelStone.new
    assert_instance_of JewelStone, jewel_stone
  end

  def test_it_has_attributes
    jewel_stone = JewelStone.new
    j = "a"
    s = "aAbc"
    assert_equal "a", jewel_stone.num_jewels(j, s)
    assert_equal "aAbc", jewel_stone.num_stones(j, s)
  end

  def test_it_can_see_if_a_single_jewel_within_stones
    jewel_stone = JewelStone.new
    j = "b"
    s = "abC"
    assert_equal 1, jewel_stone.num_jewels_in_stones(j, s)
  end
end
