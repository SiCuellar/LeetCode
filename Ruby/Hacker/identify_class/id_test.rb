require_relative 'id'
require 'minitest/autorun'
require 'minitest/pride'

class IdTest < Minitest::Test
  def test_it_exists
    id = Id.new
    assert_instance_of Id, id
  end

  def test_it_can_take_in_a_obj_word
    id = Id.new
    assert_equal "It's a Hacker", id.identify_class(Hacker)
  end
end
