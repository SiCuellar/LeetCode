require 'minitest/autorun'
require 'minitest/pride'
require_relative 'mj_element'

class MjTest < Minitest::Test
  def test_it_exists
    mj = Mj.new
    assert_instance_of Mj, mj
  end

  def test_it_can_return_most_used_element_in_simple_array
    mj = Mj.new
    elements = [1,2,1]
    assert_equal 1, mj.majority_element(elements)
  end

  def test_it_can_return_most_used_elemets_in_complex_array
    # skip
    mj = Mj.new
    elements = [2,2,1,1,1,2,2]
    assert_equal 2, mj.majority_element(elements)
  end
end
