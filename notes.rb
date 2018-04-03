puts "apple sucks".upcase

puts "APPLE SUCKS".downcase

puts "Android" == "Apple"

"Hello, there are #{9 + 9} peeps in here"

#You can only do interpolation using double quotes "", and you can use strings using both quote types " " and ' '
#Using single quotes '' is good for showing off your code without running it

"100".class
"100".to_i
"100".to_i.class

#Integers

4 % 2 #shows a remainder after division. Can deal with row/column positioning with remainder

puts 100.even?
puts 100.odd?

1002.to_s
puts "hello " + 100.to_s

1000 / 3 #returns 333, because Integers only returns other integers and always rounds down

#Floats

puts 3.1412341.truncate #removes the numbers after comma
puts 3.99.truncate #will return 3

puts 3.12341.round
puts 3.99.round

puts 1000.0 / 3 #will put 333.33333 because one of them is a Float

#Arrays

["man", "dog", "boat"].size
["man", "dog", "boat"].sort

%w[man dog boat joke] #turns into an array
%w[3 hasd 123 askhd] #will return both words and numbers as strings only!

#Ranges

(1..100).size #includes 100
(1...99).size #doesnt include 100
(1..20).to_a #converts to Array

#Variables

city = "Paris"
population = 2000000
city_details = "#{city}, France. Population of #{population}"
puts city_details

# Methods

def welcome_alien(planet_name)
  puts "Hello #{planet_name}, I have come to destroy you.
  Unless you give me all your bitcoins."
end

def max(x,y)
  if x > y
    return x
  elsif y > x
    return y
  else
    welcome_alien("Earth")
  end
end

#pressing control+command + up or down you can move blocks of code

puts welcome_alien("Earth")

puts max(1,3)

puts max(2,2)

#there are puts, p, and return...
#p returns the string with "" and display it with ""
#puts will display the string without "" and return the result
#return will only return the result, not display

def method(name)
  puts "Hi my name is #{name}"
  return "Holller my name is #{name}"
  p "NIHAO my name is #{name}"
end

#To use method elsewhere or save it's result, you need to use p or return
#return will stop your code at that line, and will save that lines value; nothing bellow will be done
#p will work as both puts and return together, but will NOT stop the code
#p will display the line, continue until the last p and that line will be the result
#puts will display the message, but will NOT be the result of the method

#! at the end of any function or action will take the action and rewrite the variable
