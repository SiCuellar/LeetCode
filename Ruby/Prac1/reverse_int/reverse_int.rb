require 'pry'

class Reverse
  def flip(x)
    int_array = x.to_s.chars
    if int_array.first == "-"
      flipped_int = int_array.reverse.rotate(-1).join.to_i
      # if flipped_int & 0x7fffffff == flipped_int
      #   flipped_int
      # end
    else
      int_array.reverse.join.to_i
    end
  end
end
