require 'minitest/autorun'
require 'minitest/pride'
require_relative 'to_lower_case'

class ToLowerCaseTest < Minitest::Test
  def test_it_exists
    to_lower_case = ToLowerCase.new
    assert_instance_of ToLowerCase, to_lower_case
  end

  def test_it_can_convert_one_letter_to_lowercase
    to_lower_case = ToLowerCase.new
    assert_equal "a", to_lower_case.downcase("A")
  end

  def test_it_can_downcase
    to_lower_case = ToLowerCase.new
    assert_equal "something", to_lower_case.downcase("SOMETHING")
  end
end
