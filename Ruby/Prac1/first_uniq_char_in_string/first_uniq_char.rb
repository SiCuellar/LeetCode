require 'pry'

class FirstUniqChar

  def first_uniq_char(s)
    dict = Hash.new(0)
    s.chars.each do |char|
      dict[char] += 1
    end

    s.chars.each_with_index do|char, index|
      if dict[char] == 1
        return index
      end
    end
    return -1
  end
end
