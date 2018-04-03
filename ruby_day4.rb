# ["Apache", "Plaster"].find { |element| element.split('').first.include?("P") }
# this way to find first element starting with a letter

# ------- HASH

# if iterating over a Hash, you need to pass .each two parameters |key, value|

# HASH can use many methods that Array can use

# ------- SYMBOLS

# faster way to write Hashes
  # hashy = {
  #   country: "France".    - here country: (or :country) is a Symbol
  # }

  # although Symbols basically represent Strings; however Symbol will always have same object_id
  # i.e. a = :seb. and b = :seb. ; ; ;  a.object_id == b.object_id


  # -- - - - - a good way to check your code is put variables step1 step2 etc. inside the code and print it ----

  # CSV - basic form of data table - Comma Separated Values

  # ____---- CSV and JSON

  #to use a CSV in a Ruby file you put require 'csv' on first line, later CSV.foreach("CSV FILENAME")
  #to use a JSON file in a RUby you put require 'json' on first line, later JSON.parse("JSON FILENAME")


# ------ livecode

# Q11 from the test --- turning an array of arrays, into an array of hashes

# .map TRANSFORMS the array. doing map will return the result as a new array
# while .each will do an action on each item but without saving it into a new array

students = [["john", 28], ["mary", 25], ["paul", 21]]
# students.map do |pair|
#   Hash[*pair]
# end   - this returns an array of hashes, but without key names

students.map do |student|
  {
    name: student[0],
    age: student[1]
  }
end

# THE LAST LINE OF MAP WILL BE ADDED TO THE RESULT ARRAY


