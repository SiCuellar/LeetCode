require 'minitest/pride'
require 'minitest/autorun'
require_relative 'defanging_ip'

class DefangingIpTest < Minitest::Test
  def test_it_exists
    defang_ip = DefangIp.new
    assert_instance_of DefangIp, defang_ip
  end

  def test_it_can_return_array_of_ip_numbers
    skip
    defang_ip = DefangIp.new
    address = "1.1.1.1"
    assert_equal ["1","1","1","1"], defang_ip.defang_i_paddr(address)
  end

  def test_it_can_join_with_bracket_periods
    defang_ip = DefangIp.new
    address = "1.1.1.1"
    assert_equal "1[.]1[.]1[.]1", defang_ip.defang_i_paddr(address)
  end

  def test_it_can_work_with_zeros
    defang_ip = DefangIp.new
    address = "255.100.50.0"
    assert_equal "255[.]100[.]50[.]0", defang_ip.defang_i_paddr(address)
  end
end
