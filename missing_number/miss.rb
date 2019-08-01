require "pry"

class Miss
  def missing_number(nums)
    sorted = nums.sort
    range = (0..nums.sort[-1]).to_a
    range.each do |num|
      if sorted.include?(num) == false
        return num
      end
    end
    return range[-1] + 1
  end
end

#checks to see if the numbers missing are within the array else we add one to last number
