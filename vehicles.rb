class Vehicle

  def initialize(color, weight, max_speed, seats = 4)
    @color = color
    @weight = weight
    @max_speed = max_speed
    @seats = seats
  end


  attr_reader :seats, :weight, :color, :max_speed
end
