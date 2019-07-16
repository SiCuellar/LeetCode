require 'minitest/autorun'
require 'minitest/pride'
require './lib/bst'

class BstTest < Minitest::Test
    def test_it_exists 
        bst = Bst.new
        assert_instance_of Bst, bst
    end 

    def test_it_has_attributes
        
    end 
end 