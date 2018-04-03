# ----- OBJECT ORIENTED PROGRAMMING

# --- one way to debug would be to use puts and exit right after, to stop the program
# --- byebug usage is putting binding.pry in any place of code; it will stop the code on that line and give you back a list of variables you can check one by one


# ----- VARIABLE SCOPE

# inside block: uses locally created variables, as well inherits global variables
# inside method: creates new scope, wont inherit global variables
# inside class: instance vairables (@variable) lives across methods inside class
# global variables are written as $variable or ALLCAPS (in this case it is constant)
# classes are also globally visible

# ---- CREATING CLASSES

# - file name should be snake_case // class name should be CamelCase
# - touch helicopter.rb

class Helicopter
  def initialize(colour)
    @colour = colour
    puts "creating an awesome helicopter"
  end

  attr_accessor :colour
  # replaces attr_writer and attr_reader

  attr_writer :colour
  # above line will generate below method:
  # def color(new_colour)
  #   @colour = new_colour
  # end

  attr_reader :colour
  # attr_reader will generate below method:
  # def colour
  #   return @colour
  # end
end

scott_copter = Helicopter.new('black')
# scott_copter.class = Helicopter
# will call initialize every time we create a new instance of Helicopter class
# scott_copter.color = 'black'


# Orange tree pseudocode

# class OrangeTree
#   def initialize(height = 0, age = 0, status = true, fruit = 0)
#     @heigh = height
#     @status = status
#     @age = age
#     @fruit = fruit
#     @death_randomizer = rand(1..50)
#   end

#   def ageing
#     if @age <= 100
#       @age += 1
#     else
#       @status = false
#     end
#     @height =+ 1 unless @age > 10
#   end

#   if @age = 50
#     real_age
#   end

#   def check_height
#     return @height
#   end

#   def check_tree_status
#     if @status == true ? "Tree is alive" : "Tree is dead"
#   end

#   def pick_a_fruit
#   end

#   def produce_fruit
#   end

#   def check_fruit_status
#   end

#   def change_fruit_status
#   end

#   private

#   def real_age
#     the_age = @age + @death_randomizer
#     if the_age = 100
#       @status = false
#     end
#   end
# end

# ----- livecode

# class Supervillain

#   attr_accessor :power, :name, :goal, :evil_level, :weakness, :origin

#   def initialize(name, origin, power, goal, evil_level, weakness)
#     @name = name
#     @origin = origin
#     @power = power
#     @goal = goal
#     @evil_level = evil_level
#     @weakness = weakness
#   end

# end


# You should be able to measure the height of the tree.
# You should be able to find out if the tree is dead.
# Each year, the tree should age by 1 year (it becomes older and taller, and eventually dies).
# A tree grows 1 meter per year until it is 10 years old. Then it stops growing.
# The orange tree cannot die until it reaches 50 years old.
# After 50 years, the probability of dying increases each year.
# No tree can live more than 100 years.
# A tree will produce 100 fruits a year once it is more than 5 years old.
# A tree will produce 200 fruits a year when it reaches 10 years old.
# A tree will not produce fruits once it reaches 15 years old.
# You should be able to pick a single fruit from the tree by calling the pick_a_fruit! method on your tree (but only if there are some left).
# At the end of each year, the fruits which have not been picked will fall off.
# You should be able to find out how many fruits are left hanging on the tree.
