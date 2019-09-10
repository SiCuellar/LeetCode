require_relative "lcp.rb"
require "minitest/autorun"
require "minitest/pride"

class Lcp < Minitest::Test
  def test_it_exists
    lcp = Lcp.new
    assert_instance_of Lcp,lcp 
  end
end
