require 'pry'

class RomToInt
  def roman_to_int(roman_int)
    map = {
      "I" => 1,
      "V" => 5,
      "X" => 10,
      "L" => 50,
      "C" => 100,
      "D" => 500,
      "M" => 1000,
    }

    values = []

    roman_int.chars.each do |char|
      values << map[char]
    end

    # max_value_index = values.each_with_index.max[1]
    neg = values.slice_before(values.max).to_a.first.sum
    pos = values.slice_before(values.max).to_a[1].sum
    # binding.pry

    pos - neg
  end

end


# create a ranking map that containse what each letter is worth in values
# split the letters and find out in what index is the highest letter
#if there are values to the left of the hightest value add a negative to the front of those
#conver the values in the right side of the largest value to integers and ad them
# sum the values  ---->>>>>> should return desired value
