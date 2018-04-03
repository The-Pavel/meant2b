# ----- PARSING
# running ruby files with ruby filename.rb will not work if there are unfinished things in the file, because it parses the file while running it
# Parsing (deserialization) means turning files -> to ruby objects (in-memory objects)
# Storing (serialization) means turning ruby objects -> file (string format)

# ---- CSV (comma separated values)

# separators in CSV files can be commas, semicolons or spaces

# 1. read the file into a string

# content = File.read(filepath)

# 2. parse the string into a more structured ruby object

# CSV.parse(content, 'r') do |r|     - this will return a CSV Table object, Array like object
#   p row[0] - will print first value in row
# end

# ---- XML (extensible markup language)
# if changing a data type from string into another one in XML, you need to add a datatype in the tag

# ---- JSON (JavaScript Object Notation)

# JSON has understanding of data type without user needing to set it

# ----- PARSING AND STORING

# turning CSV into ruby objects
# beers = []
# CSV.parse(content, 'r') do |r|
#   beer = {
#     name: row[:name]
#     appearance: row[:appearance]
#     origin: row[:origin]
#     rating: row[:rating]

#   }
#   beers << beer
# end

# if beers is array of hashes where each is beer

# beers = [{}, {}]
# CSV.open('test.csv', 'w', CSV_options) do |csv|
#   csv << ["Name", "Appearance", "Origin", "Rating"]
#   beers.each do |beer|
#     csv << [
#       beer[:name]
#       beer[:appearance]
#       beer[:origin]
#       beer[:rating]
#     ]
#   end
# end



# ----- JSON

#1. read file into string
# content = File.read(filepath)
#2. parse into ruby object
# data = JSON.parse(content)  -  will return a Hash of hashes
# calling data[inside_hash] - will return an Array of hashes

# ----- JSON APIs

# ---- in slides ----

# ---- Web Scraping


# 1. fetch webpage as a string

# most frequenty nodes will be <div>s in HTML
# attributes will be any attributes inside tag <div> such as id, class, href
# node.text.strip  - will take the text inside an HTML tag and strip any extra whitespace

# - - - - - livecode

# go to FBI top 10 wanted, parse to get ten links

# require 'open-uri'
# require 'nokogiri'.  - for parsing HTML
# url = "FBI top wanted url"
# content = open(url).read
# doc = Nokogiri::HTML(content)
# in browser console we call the element by puttin $("the class or id of the element")
# doc.search("the class or id selector").each do |element|
#   top_ten_urls << element.attr('href')  - using attribute method to fetch an attribute of the element in the website
# end



# go to each URL
# fetch name, description,


# (?:\d\d), ?: inside of () will ignore the capture group matching
