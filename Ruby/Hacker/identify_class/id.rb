require 'pry'

class Id

  dict = {
    Haker => "It's a Hacker!",
    Submission => "It's a Submission!",
    TestCase => "It's a TestCase",
    Contest => "It's a Contest!"
  }

  def identify_class(obj)
    binding.pry
  end
end
