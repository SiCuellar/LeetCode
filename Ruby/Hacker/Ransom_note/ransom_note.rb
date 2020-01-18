require 'pry'

class Program
  def check_magazine(magazine, note)
    words_present =
    note.map do |word|
      if magazine.include?(word)
        "Yes"
      else
        "No"
      end
    end

    if words_present.include?("No")
      "No"
    else
      "Yes"
    end
  end
end
