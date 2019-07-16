require 'minitest/autorun'
require 'minitest/pride'
require_relative 'mv'

class MvTest < Minitest::Test
  def test_it_exists
    mv = Mv.new
    assert_instance_of Mv, mv
  end

  def test_it_can_move_zero_to_the_end
    skip
    mv = Mv.new
    assert_equal [1,0], mv.move_zeros([0,1])
  end

  def test_can_move_multiple_zeros_to_end
    mv = Mv.new
    assert_equal [1,3,12,0,0], mv.move_zeros([0,1,0,3,12])
  end

end
