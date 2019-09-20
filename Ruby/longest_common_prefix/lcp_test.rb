require_relative "lcp.rb"
require "minitest/autorun"
require "minitest/pride"

class LcpTest < Minitest::Test
  def test_it_exists
    lcp = Lcp.new
    assert_instance_of Lcp,lcp
  end

  def test_it_can_split_word_into_chars
    lcp = Lcp.new
    assert_equal ["c","a","r"], lcp.word_parser("car")
  end

  def test_it_can_compare_two_words
    lcp = Lcp.new
    assert_equal "ca", lcp.word_compare("car","cat")
  end

  def test_it_can_compare_three_words
    lcp = Lcp.new
    words = ["cards", "carpet",  "carter"]
    assert_equal "car", lcp.longest_common_pre(words)
  end
end
