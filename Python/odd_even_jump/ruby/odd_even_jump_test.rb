require "minitest/autorun"
require "minitest/pride"
require_relative "odd_even_jump"

class OddEvenJumpTest < Minitest::Test
  def test_it_exists
    odd_even_jump = OddEvenJump.new

    assert_instance_of OddEvenJump, odd_even_jump
  end
end
