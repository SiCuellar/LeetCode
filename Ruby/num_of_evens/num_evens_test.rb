require 'minitest/autorun'
require 'minitest/pride'
require_relative 'num_evens'

class NumEvensTest < Minitest::Test
  def test_it_exists
    num_evens = NumEvens.new
    assert_instance_of NumEvens, num_evens
  end
end
