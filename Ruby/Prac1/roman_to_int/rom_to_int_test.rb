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

  def test_it_can_convert_multiple_of_the_same_R_numeral
    rti = RomToInt.new
    assert_equal 3, rti.roman_to_int("III")
  end

  def test_it_can_convert_V
    rti = RomToInt.new
    assert_equal 6, rti.roman_to_int("VI")
  end

  def test_it_can_convert_X
    rti = RomToInt.new
    assert_equal 11, rti.roman_to_int("XI")
  end

  def test_it_can_convert_when_the_larger_number_has_chars_before
    rti = RomToInt.new
    assert_equal 4, rti.roman_to_int("IV")
  end

  def test_it_can_conver_numbers_L
    rti = RomToInt.new
    assert_equal 58, rti.roman_to_int("LVIII")
  end

  def test_it_can_convert_C
    rti = RomToInt.new
    assert_equal 1994, rti.roman_to_int("MCMXCIV")
  end
end
