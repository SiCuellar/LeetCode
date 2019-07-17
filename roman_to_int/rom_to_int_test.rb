require 'minitest/autorun'
require 'minitest/pride'
require_relative 'rom_to_int'

class RomToIntTest < Minitest::Test
  def test_it_exist
    rti = RomToInt.new
    assert_instance_of RomToInt, rti
  end

  def test_it_can_convert_numbers_with_I
    rti = RomToInt.new
    assert_equal 1, rti.roman_to_int("I")
  end

  
end
