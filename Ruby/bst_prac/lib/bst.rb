require './lib/node.rb'
require 'pry'

class Bst
    attr_accessor :root_node 

    def initialize(root_value=nil)
        @root_node = Node.new(root_value)
    end 

    # def create_binary_search_tree(size)
    #     array_of_nums = (0..size).to_a.shuffle
        
    #     new_tree = Bst.new
        
    #     array_of_nums.each do |num|
	# 		new_tree.insert(num)
	# 	end
        
    #     return new_tree
	# end

    def insert(value)
        node = Node.new(value)

        if node.value == value
            return node
        elsif value < node.value
            insert(node.left, value)
        elsif value > node.value
            insert(node.right, value)
        else
            return node = Node.new(value)
        end
    end 
end 