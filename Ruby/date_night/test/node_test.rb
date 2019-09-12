require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test
    def test_it_exists
        node = Node.new 
        assert_instance_of Node, node
    end 

    def test_it_has_attributes
        node = Node.new(10, "The Count of Monte Cristo")
        assert_nil node.left
        assert_nil node.right
        assert_equal 10, node.score
        assert_equal "The Count of Monte Cristo", node.m_title
    end 
    
end 