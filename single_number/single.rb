require 'pry'

#Linear O(n)
class Single
  def single_number(nums)
    dict = {}
    single_value = nil

    nums.each do |num|
      dict[num] = (dict[num] || 0) + 1
    end

    nums.each do |num|
      if dict[num] == 1
        single_value = num
        break
      end
    end
    single_value
  end
end




# def single_number(nums)
#   nums.find do |num|
#     nums.count(num) == 1
#   end
# end
