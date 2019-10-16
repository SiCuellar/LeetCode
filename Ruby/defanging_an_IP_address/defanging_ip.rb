require 'pry'

class DefangIp
  def defang_i_paddr(address)
    ip_nums = address.split(".")
    ip_nums.join("[.]")
  end
end
