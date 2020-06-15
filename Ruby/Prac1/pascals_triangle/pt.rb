require "pry"

class Pt
  def generate(num_rows)
    if num_rows == 1
      [[1]]
    elsif num_rows == 2
      [[1],[1,1]]
    else
      traingle_maker(num_rows)
    end
  end

  def traingle_maker(num_rows)
    array_nums = (0..num_rows).to_a
    if array_nums.count % 2 == 0
      binding.pry
    else

    end
  end
  #1 -     [1]
  #2      [1,1]
  #3     [1,2,1]
  #4    [1,3,3,1]
  #5   [1,4,6,4,1]
  #6 [1,5,10,10,5,1]

# x = 0 to n
# a= 1, x++
# z=s to 0
# print space
# z—-
# y = o to x
# print a
# a = a*(x-y)/(y+1)
# y= y+1
# go to next line



end
