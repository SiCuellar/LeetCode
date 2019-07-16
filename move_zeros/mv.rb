require 'pry'

class Mv
  def move_zeros(nums)
    sorted_nums = nums.sort
    count = 0

    sorted_nums.map do |num|
      if num == 0
        count += 1
      end
    end
    sorted_nums.rotate(count)
  end
end
