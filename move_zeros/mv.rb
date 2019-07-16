require 'pry'

class Mv

  def move_zeros(nums)
    sorted_nums = nums.sort
    binding.pry
    x=sorted_nums.map do |num|
      if num == 0
        nums.rotate!
      end
    end
  end
end
