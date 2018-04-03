# ------- INHERITANCE
require_relative 'vehicle'

class GiantRobot
attr_accessor :weapons, :hard_drive

  def initialize(weight, weapons, transforms, hard_drive)
    super(weight)
    # always need to call super instance variables first
    # @weight = weight - don't need this because we call the super weight instance variable
    @weapons = weapons
    @transforms = transforms
    @hard_drive = hard_drive
    # need the above three because they don't belong to super class
  end

  def hard_drive=(new_size)
    @hard_drive = new_size
  end
  # above will be called if in interface we write robot.hard_drive = ('134'), because Ruby replaces it with robot.hard_drive=('134')
  # also accomplished with attr_writer :hard_drive

end

megatron = GiantRobot.new(400, 'flamethrower', 'f20', '6tb')



# -------- CLASS METHODS

class Vehicle
  attr_reader :seats, :weight, :color, :max_speed

  def initialize(color, weight, max_speed, seats = 4)
    @color = color
    @weight = weight
    @max_speed = max_speed
    @seats = seats
  end

  def self.engine_types
    %w{gas electric diesel hybrid warp}
  end
  # this will be a Class Method - it can be called on the Vehicle class itself
end


# --------- SELF

# used to define Class methods and inside instance methods


class Restaurant
  attr_accessor :seats, :type, :location, :name, :chef # added chef to be able to link chef to Restaurant class

  def initialize(name, type, location, seats = 10)
    @name = name
    @type = type
    @location = location
    @seats = seats
  end
end

class Chef
  attr_accessor :name, :restaurant

  def initialize(name)
    @name = name
  end
end

cafe = Restaurant.new("B2", "Chinese", "Xuhui")

chef = Chef.new('Marc')

cafe.chef = marc # this would allow us to take a Chef Class variable and assign it to a Cafe Class Variable
marc.restaurant = cafe # this would allow us to make a Restaurant Class Object an instance method to Chef Class Object





