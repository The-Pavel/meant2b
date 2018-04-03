# databases_day2.rb

# ------------- CRUD WITH SQL

# CREATE

# INSERT INTO doctors (name, age, specialty)
# VALUES ('Dr. Dolladile', 45, "Dentist")

# PRIMARY KEY - that is what SQL uses for ordering the table

# UPDATE

# UPDATE doctors SET age = 40, name = 'John Smith' WHERE id = 3

# DELETE

# DELETE FROM doctors WHERE id = 32

# SQL WITH RUBY

# better create a database as a global variable
# DB = SQLite3::Database.new(File.expand_path('doctors.sqlite', __dir__))

# to increment ID inside ruby - we add a save method in the model and increment using
# @id = DB.last_insert_row_id

# when getting DB.results_as_hash, keys would be Strings, not Symbols
