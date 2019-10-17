require "pry"

class JewelStone
  def num_jewels_in_stones(j, s)
    counter = 0
    stones = s.chars
    jewels = j.chars
    stones.each do |stone|
      jewels.each do |jewel|
        if jewel == stone
          counter += 1
        end
      end
    end
    counter
  end

  def num_jewels(j, s)
    j
  end

  def num_stones(j, s)
    s
  end
end
