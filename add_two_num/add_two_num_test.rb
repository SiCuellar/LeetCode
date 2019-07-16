require 'minitest/autorun'
require 'minitest/pride'
require_relative 'add_two_num'

class AddTwoNumTest < MiniTest::Test
    def test_it_exist
        add_two_num = AddTwoNum.new
        assert_instance_of AddTwoNum, add_two_num   
    end
end 