require 'pry'

class Fb
  def fizz_buzz(number)
    array = (1..number).to_a
    array.map do |num|
      if num % 15 == 0
        "FizzBuzz"
      elsif
        num % 5 == 0
        "Buzz"
      elsif
        num % 3 == 0
        "Fizz"
      else
        num.to_s
      end
    end
  end
end
