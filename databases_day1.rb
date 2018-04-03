# one to many relationships (i.e. inhabitants in a city) can be easily managed by assigning city_id to each inhabitant


# ------ SQL Structured Query Language (using 1 table)

# all SQL commands need to be in ALLCAPS
#.   SELECT first_name, last_name FROM patients
# means - get all first and last names from all patients in the data table called "patients"

#.   SELECT * FROM patients
# means - get all data from data table called "patients"
# * in SQL means 'all'

#.   SELECT * FROM patients WHERE age = 21 (one equals sign!!!)
# means - get all information for all patients with age of 21

#.   SELECT * FROM doctors WHERE id = 3
# means - get all info about one doctor, whose ID is 3

#.   SELECT first_name FROM doctors WHERE id = 3
# means - get the first name of the doctor whose ID is 3

#.   SELECT * FROM doctors WHERE specialty LIKE '%Surgery%'
# means - get all the info of each doctor whose specialty has the word Surgery

#.   SELECT * FROM patients ORDER BY age ASC
# means - get all the info of each patient, and display all patients from lowest age to highest age

#.   SELECT * FROM patients ORDER BY age DESC
# means - --//-- display ordering by age from higest age to lowest age
# also orders by alphabetical order

#.   SELECT COUNT(*) FROM doctors
# means - show number of all doctors

#.   SELECT COUNT(*) FROM doctors WHERE specialty = 'Cardiac Surgery'
# means - show number of all doctors whose specialty is cardiac surgery

#.   SELECT COUNT(*), specialty
#.   FROM doctors
#.   GROUP BY specialty - if we do without this, the first 2 lines will return count of all doctors and all specialties, line by line
# means - count all the doctors, and categorize the count by specialty(i.e. 'surgery: 4', 'family doctor: 25')
#.   SELECT COUNT(*) AS c, specialty
#.   FROM doctors
#.   GROUP BY specialty
#.   ORDER BY c DESC
# means - 1. get the count and the specialty for each doctor
#         2. save the counts as variable c
#.        3. take data from the doctors table
#.        4. group returned data by specialty
#.        5. put the returned data in order, starting from specialty with largest number of doctors to smallest specialty group


# ------ SQL (multiple tables)
# -- JOINING TABLES

#.   SELECT * FROM inhabitants
#.   JOIN cities ON cities.id = inhabitants.city_id
#.   WHERE cities.name = 'Paris' (AND inhabitants.age > 18)
# means - give me all the people from inhabitants who live in Paris (and who are over 18 years old)


# ------- SQL with an many-to-many relationship
# ------- REWRITING EMPLOYEE REPO FROM FOOD DELIVERY WITH SQL




# ----- SQL Vocabulary
# Table = object name (ex. patients, doctors etc.)
# Column = one information field (ex. name, age etc.)
