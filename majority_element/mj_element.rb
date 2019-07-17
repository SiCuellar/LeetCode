require 'pry'

class Mj
  def majority_element(nums)
    map = {}
    most_used = nil
    nums.each do |num|
      if map[num]
        map[num] += 1
      else
        map[num] = 1
      end
    end
    map.max_by do |k,v|
      v
    end.first
  end
end

# Below solution takes way to long use dictionary maot to keep track of count
# def majority_element(elements)
#   elements.group_by do |element|
#     elements.count(element)
#   end.max[1].first
# end
