require 'minitest/pride'
require 'minitest/autorun'
require_relative 'defanging_ip'

class DefangingIpTest < Minitest::Test
  def test_it_exists
    defang_ip = DefangIp.new
    assert_instance_of DefangIp, defang_ip
  end
end
