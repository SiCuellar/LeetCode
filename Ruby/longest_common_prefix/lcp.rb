require "pry"

class Lcp
  def word_parser(word)
    word.chars
  end

  def word_compare(first_w, sec_w)
    common_prefix = []
    first_letters = word_parser(first_w)
    second_letters = word_parser(sec_w)
    first_letters.each_with_index do |let, index|
      if let == second_letters[index]
        common_prefix << let
      end
    end
    common_prefix.join
  end
end
