require 'pry'

class LongestSub

  def length_of_longest_substring(string)
    letters = string.chars
    current_len = 0
    max_len = 0
    letters.each_with_index do |letter, i|
      if letter != letters[i+1]
        binding.pry
        max_len += 1
      end
    end
    max_len
  end

end
