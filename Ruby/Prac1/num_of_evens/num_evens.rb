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

  def find_numbers(nums)
    word_nums = numbers_count(nums)
    count = 0
    word_nums.each do |num|
      if num % 2 == 0
        count +=1
      end
    end
    count
  end
end
