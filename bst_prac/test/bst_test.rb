require 'minitest/pride'
require 'minitest/autorun'
require './lib/bst.rb'

class BstTest < Minitest::Test 
    def test_it_exists
        bst = Bst.new 
        assert_instance_of Bst, bst
    end 

    def test_it_has_attributes
        bst = Bst.new
        assert_instance_of  Node, bst.root_node
        assert_nil bst.root_node.value
    end
    
    # def test_it_can_count_its_nodes
    #     bst = Bst.new(10)
    #     assert_equal 1, bst.size
    #     # binding.pry
    # end 

    def test_it_can_have_nodes_inserted
        # tree = create_binary_search_tree(4)
        tree = Bst.new(10)
        tree.insert(11)
        tree.insert(5)
        binding.pry
        
        
        assert_instance_of Node, tree.root_node
    end 

 
end 