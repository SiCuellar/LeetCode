require 'pry'

class RomToInt

  Map = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  def roman_to_int(s)
    res = 0
    temp = 0
    s.chars.each_with_index do |element, i|
      if Map[s[i + 1]] && Map[element] < Map[s[i+1]]
        temp = Map[element]
      else
        res += (Map[element] - temp)
        temp = 0
      end
    end
    res
  end
#   map = {
#     "I" => 1,
#     "V" => 5,
#     "X" => 10,
#     "L" => 50,
#     "C" => 100,
#     "D" => 500,
#     "M" => 1000,
#   }
#   def roman_to_int(roman_int)
#     values = []
#
#     roman_int.chars.each do |char|
#       values << map[char]
#     end
#     max_value_index = values.each_with_index.max[1]
#
#     if max_value_index != 0 && values.sum > 3
#       neg = values.slice_before(values.max).to_a.first.sum
#       pos = values.slice_before(values.max).to_a[1].sum
#       pos - neg
#     else
#       values.sum
#     end
#   end
end


# create a ranking map that containse what each letter is worth in values
# split the letters and find out in what index is the highest letter
#if there are values to the left of the hightest value add a negative to the front of those
#conver the values in the right side of the largest value to integers and ad them
# sum the values  ---->>>>>> should return desired value
