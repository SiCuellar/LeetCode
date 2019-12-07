require 'pry'

class MinTimePoint
  def point_count(points)
    points.count
  end

  def min_time_to_visit_all_points(points)
    time = 0
    points.each_with_index do |point, i|
      if points[i+1]
        next_point = points[i+1]
        dist_time = next_point[-1] - point[-1]
        time += dist_time
      end
    end
    time
  end
end
