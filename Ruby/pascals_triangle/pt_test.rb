require "minitest/autorun"
require "minitest/pride"
require_relative "pt"

class PtTest < Minitest::Test
  def test_it_exists
    pt = Pt.new
    assert_instance_of Pt, pt
  end

  def test_it_can_for_a_one_line_pascal
    pt = Pt.new
    triangle = [
     [1]
    ]
    assert_equal triangle, pt.generate(1)
  end

  def test_it_can_for_a_one_line_pascal
    pt = Pt.new
    triangle = [
     [1],
     [1,1]
    ]
    assert_equal triangle, pt.generate(2)
  end

  def test_it_can_for_a_three_line_pascal
    pt = Pt.new
    triangle = [
       [1],
      [1,1],
     [1,2,1]
    ]
    assert_equal triangle, pt.generate(3)
  end
end
