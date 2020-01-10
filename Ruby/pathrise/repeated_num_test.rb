require 'minitest/autorun'
require 'minitest/pride'
require_relative 'repeated_num'

class ProgramTest < Minitest::Test
  def test_it_exists
    program = Program.new
    assert_instance_of Program, program
  end

  def test_it_can_check_array_duplicates
    program = Program.new
    assert_equal 2, program.rep_nums([1,2,3,4,5,2])
  end
end
