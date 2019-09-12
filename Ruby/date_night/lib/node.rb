require 'pry'

class Node 
    attr_reader :score,
                :m_title
    attr_accessor :left,
                  :right
    
    def initialize(value=nil, m_title=nil)
        @score = score
        @m_title = m_title
        @left = nil
        @right = nil
    end 
end 