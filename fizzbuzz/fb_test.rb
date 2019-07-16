require 'minitest/autorun'
require 'minitest/pride'
require_relative 'fb'

class FbTest < Minitest::Test
  def test_it_exists
    fb = Fb.new
    assert_instance_of Fb, fb
  end

  def test_it_can_return_numbers_based_on_input
    skip
    fb = Fb.new
    assert_equal [1,2,3,4,"Buzz"], fb.fizz_buzz(5)
  end

  def test_it_can_return_fizzbuzz_for_multiples_of_15
    skip
    fb = Fb.new
    expected = [1,2,3,4,"Buzz",6,7,8,9,"Buzz",11,12,13,14,"FizzBuzz"]

    assert_equal expected, fb.fizz_buzz(15)
  end

  def test_it_can_return_Buzz_for_multiples_of_5
    skip
    fb = Fb.new
    expected = [1,2,3,4,"Buzz",6,7,8,9,"Buzz"]

    assert_equal expected, fb.fizz_buzz(10)
  end

  def test_it_can_return_Fizz_for_multiples_of_3
    skip
    fb = Fb.new
    expected = [1,2,"Fizz",4,"Buzz","Fizz"]

    assert_equal expected, fb.fizz_buzz(6)
  end

  def test_it_can_return_correct_string_for_numbers
    fb = Fb.new
    expected = [
                "1",
                "2",
                "Fizz",
                "4",
                "Buzz",
                "Fizz",
                "7",
                "8",
                "Fizz",
                "Buzz",
                "11",
                "Fizz",
                "13",
                "14",
                "FizzBuzz"
              ]
    assert_equal expected, fb.fizz_buzz(15)
  end
end
