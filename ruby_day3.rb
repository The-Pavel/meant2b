#    - shuffle optional

puts "write a sentence"
user_str = gets.chomp

user_arr = user_str.split(" ")
user_arr.

# ----- ITERATORS AND BLOCKS

# using for index 0...array.size gives access to both index and objects(indirectly)
# using for object in array gives access to objects only

#.each will execute an action on each object and return it as result of method ONLY
#.map will execute an action on each object and return a TRANSFORMED ARRAY (needs to be save to a new array)

# a shorter way of writing .map will be upcased_names = names.map {|name| name.upcase}

#.size and .length both do same thing, but .count can accept a do |obj| method and a condition that should be true/false

#.select also works similar to .count (takes do |obj| condition) but returns a new array

#Enumerable is another word for iteration/scanning methods. It is a module included in Array class

#.map will save as new array ONLY the final line of the method (or returned value)

#.  - -- - - BLOCKS - pieces of code that you can use within methods or later



#yield inside a method will go back to a block with the same name and run the code inside ////

#block is basically another way of calling a method but with adding some extra actions under do; then inside the method you ask 'yield' when you want method to check your extra actions in the call block

#a call with a block will return only the last line of code in it

#option + shift + f -- indents automatically

def put_name(first, last)
  full_name = first + last #this full name
  yield(full_name)
end

put_name("pav", "lis") do |full_name| #becomes this full name
  full_name.downcase
end


# ------ LIVE CODE

# ------ MAKING A KEY

def encrypt(text)
  text.split("").map do |character|
    alphabet = ("A"..."Z").to_a
    character_index = alphabet.index_of(character)
    if character_index.nil?
      " "
    else
      alphabet[character_index-3]
    end
  end
end



