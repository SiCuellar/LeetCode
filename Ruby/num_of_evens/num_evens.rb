require 'pry'

class NumEvens
  def num_count(num)
    num.to_s.chars.count
  end

  def numbers_count(nums)
    nums.map do |num|
      num_count(num)
    end
  end
end
