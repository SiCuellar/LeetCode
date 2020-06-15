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

#in place solution 
# def move_zeros(nums)
#   return if nums.length < 2
#   current = -1
#   nums.each_with_index do |num, i|
#     next if num == 0
#     current += 1
#     nums[i] = nums[current]
#     nums[current] = num
#   end
# end
