require 'minitest/autorun'
require 'minitest/pride'
require_relative 'morse'

class UniqMorseTest < Minitest::Test
  def test_it_exists
    uniq_morse = UniqMorse.new
    assert_instance_of UniqMorse, uniq_morse
  end

  def test_it_can_convert_a_letter_to_morse
    skip
    uniq_morse = UniqMorse.new
    assert_equal [".-"], uniq_morse.convert("a")
  end

  def test_convert_a_word
    skip
    uniq_morse = UniqMorse.new
    assert_equal ["-.-.", ".-", "-"], uniq_morse.convert("cat")
  end

  def test_it_can_can_combine_morse
    uniq_morse = UniqMorse.new
    assert_equal "-.-..--", uniq_morse.convert("cat")
  end

  def test_it_can_return_number_of_conformations
    uniq_morse = UniqMorse.new
    words = ["gin", "zen"]
    assert_equal 1, uniq_morse.unique_morse_representations(words)
  end

  def test_it_can_return_uniq_number_of_confirmations
    uniq_morse = UniqMorse.new
    words = ["gin", "zen", "gig", "msg"]
    assert_equal 2, uniq_morse.unique_morse_representations(words)
  end
end
