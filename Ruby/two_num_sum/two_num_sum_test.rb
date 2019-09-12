require_relative 'two_num_sum'
require 'minitest/autorun'
require 'minitest/pride'

class TwoNumSumTest < Minitest::Test
    def test_it_exists
        # skip
        numsum = TwoNumSum.new
        assert_instance_of TwoNumSum, numsum
    end 

    def test_it_can_return_indicies_1
        # skip
        nums = [2,7,11,15]
        num_sum = TwoNumSum.new
        assert_equal [0,1], num_sum.two_sum(nums, 9)
    end 
    
    def test_it_can_return_indicies_2
        skip
        nums = [2,5,7,11,15]
        num_sum = TwoNumSum.new
        assert_equal [1,4], num_sum.two_sum(nums, 20)
    end 
   
    def test_it_can_return_indicies_3
        skip
        #Breaking Brute force Method -
        nums = [3,3]#
        num_sum = TwoNumSum.new
        assert_equal [0,1], num_sum.two_sum(nums, 6)
    end 
end 