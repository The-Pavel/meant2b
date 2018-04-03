# if !condition
  #action executed    - this will check if condition is NOT true
#end

# unless condition     -   unless instead of if !, should be used during exceptional cases, like errors
# action
# end

#VOTING AGE function

#1) ask for age

puts "How old are you?"

#2) store age

age = gets.chomp.to_i
#3) compare to voting age

if age >= 18
  puts "Yes, you can vote!"
else
  puts "No, you can't vote!"
end

#----- OVER

# action_command (CONDITION) ? If_true : If_false

# lines 20-24 = puts (age >= 18) ? "Yes, you can vote!" : "No, you can't vote!"

#COIN FLIP function

#1) ask user to guess heads/tails
puts "Heads or Tails?"
#2) store user input
answer = gets.chomp
#3) get a random "heads" or "tails" choice from array
coin = ["heads", "tails"].sample
#4) compare with user input
#5) give winner or loser answer
puts answer == coin ? "Winner" : "Looooser"

#------- OVER

puts "Heads or Tails?"
#2) store user input
answer = gets.chomp

if answer != "heads" && answer != "tails"
  puts "Wrong input madafaka!"
elsif answer == coin
  puts "Winner winner chicken dinner!"
else
  puts "Looooser"
end


# ------ OVER

# SHOP OPENING HOURS

puts "What time do you want to check?"
user_time = gets.chomp.to_i

puts "FINISH THIS TASK LATER"

# ------ OVER

# WHILE LOOPS

# ----- TOTALITARIAN ELECTION

vote = "Batman"      # initialization of a while loop (creating default to prompt)

while vote != "Sergio"
  puts "Who do you vote for your PM?"
  vote = gets.chomp
end

# UNTIL LOOPS

president = "Batman"      # initialization of a while loop (creating default to prompt)

until president == "Sergio"
  puts "Who do you vote for your PM?"
  president = gets.chomp
end

#    FOR and EACH

numbers = [1, 2, 3]

numbers.each do |item|
  puts item
end
# SAME AS
numbers.each{ |item| puts item }

#    ARRAYS

numbers[1, 2, 3]
# numbers[2] = 3    AND    numbers[-1] = 3

numbers << 4 # same as numbers.push(4)
numbers.delete_at(0)    # will delete the first number
numbers.delete(4)     # will delte all 4's in the array

#     LIVE CODE

# make any string into an acronym

# rock/paper/scissors

puts "rock, paper, scossors"
user_input = gets.chomp

def computer
  ["rock", "paper", "scissors"].sample
end

fbi_choice = computer

puts "You chose #{user_input}. Mr. FBI chose #{fbi_choice}"

def check

