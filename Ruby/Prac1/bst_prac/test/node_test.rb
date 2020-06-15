require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test
    def test_it_exists
        node = Node.new 
        assert_instance_of Node, node
    end 

    def test_it_has_attributes
        node = Node.new
        assert_nil node.left
        assert_nil node.right
        assert_equal nil, node.value
    end 

    
end 