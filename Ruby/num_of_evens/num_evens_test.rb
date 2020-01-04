require 'minitest/autorun'
require 'minitest/pride'
require_relative 'num_evens'

class NumEvensTest < Minitest::Test
  def test_it_exists
    num_evens = NumEvens.new
    assert_instance_of NumEvens, num_evens
  end

  def test_it_can_count_number_of_digits_in_num
    num_evens = NumEvens.new
    assert_equal 4, num_evens.num_count(1234)
  end

  def test_it_can_get_count_for_all_numbers
    num_evens = NumEvens.new
    assert_equal [4,2,1], num_evens.numbers_count([1212,34,6])
  end

  def test_it_can_return_the_count_of_even_nums
    num_evens = NumEvens.new
    nums = [1212,34,6]
    assert_equal 2, num_evens.find_numbers(nums)
  end
end
