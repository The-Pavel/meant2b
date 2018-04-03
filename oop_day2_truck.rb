require_relative 'vehicle'

class Truck < Vehicle

  # def initialize(color, weight, max_speed)
  #   @color = color
  #   @weight = weight
  #   @max_speed = max_speed
  # end

  # do not need above anymore because Truck inherits all these instance variables and methods from Vehicles
  # new variables that we add in Vehicles Super Class will be inherited by Truck class as well


end

truck = Truck.new('red', '100kg', 300)
