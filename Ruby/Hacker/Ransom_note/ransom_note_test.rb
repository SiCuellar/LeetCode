require 'minitest/autorun'
require 'minitest/pride'
require_relative 'ransom_note'

class ProgramTest < Minitest::Test
  def test_it_exists
    program = Program.new
    assert_instance_of Program, program
  end

  def test_check_mag_can_input_a_mag_and_note
    program = Program.new
    magazine = ["give", "one"]
    note = ["give"]
    assert_equal ["give", "one"], program.check_magazine(magazine, note)
  end

  def test_it_can_make_a_dict_with_magazine
    
  end
end
