require 'minitest/autorun'
require 'minitest/pride'
require_relative 'min_time_point'

class MinTimePointTest < Minitest::Test
  def test_it_exitst
    min_time = MinTimePoint.new
    assert_instance_of MinTimePoint, min_time
  end

  def test_it_can_recive_points
    min_time = MinTimePoint.new
    points = [[0,0],[0,1]]
    assert_equal 2, min_time.point_count(points)
  end

  def test_it_can_calculate_time_for_one_jump
    min_time = MinTimePoint.new
    points = [[0,0],[0,1]]
    assert_equal 1, min_time.min_time_to_visit_all_points(points)
  end
end
