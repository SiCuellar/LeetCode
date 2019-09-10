require 'minitest/autorun'
require 'minitest/pride'
require_relative 'single'

class SingleTest < Minitest::Test
  def test_it_exists
    single = Single.new
    assert_instance_of Single, single
  end

  def test_it_can_return_non_doubled_number
    single = Single.new
    assert_equal 1, single.single_number([2,2,1])
  end

  def test_it_can_return_correct_answer_given_more_values
    single = Single.new
    assert_equal 4, single.single_number([4,1,2,1,2])
  end
end
