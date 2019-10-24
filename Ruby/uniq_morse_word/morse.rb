require 'pry'

class UniqMorse
  def convert(string)
    lets = "abcdefghijklmnopqrstuvwxyz"
    morse = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    letters = lets.chars
    dict = Hash[letters.zip(morse)]
    string.downcase.chars.map do |char|
      dict[char]
    end.join
  end

  def unique_morse_representations(words)
    words.map do |word|
      convert(word)
    end.uniq.count
  end
end
