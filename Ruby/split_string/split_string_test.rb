require 'minitest/autorun'
require 'minitest/pride'
require_relative 'split_string'

class SplitStringTest < Minitest::Test
  def test_it_exists
    split_string = SplitString.new
    assert_instance_of SplitString, split_string
  end

  
end
