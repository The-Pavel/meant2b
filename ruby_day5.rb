#----- REGEXP

# - - - - data validation should be done on server side and client side (for better user experience; usually using JS on frontend and Ruby on backend)

#  in Regexp forward slashes are delimiters of one string / your regular expression /

#- - - -REGEXP wording

# we can put multiple quantifiers in curly brackets, i.e. abc{1,4} will match strings with ab and between 1 and 4 c's

# quantifier quantifies the elemenet its immediately after

# square brackets signify a range, i.e. [a-z] matches all low case letters; we can also quantify ranges

# letter\b or range\b will match only strings that end with letter or range

# [a-z]*[^aieou\s]\b    - will match words that end with consonants. Need to add space because otherwise it will take "hello " as ending with space and will return a match

# ^ inside of a range will exclude following range; ^ at the beginning of an expression will match only strings that start with the expression

# $ at the end of expression will match strings that end with the expression

# ^ AND $ show the beginning and ending of a string on a single line

# after the forward slash we can stack multiple modifiers by just writing them next to each other, for example mi will read case insensitively and match line breaks

#.   ^\w+@\w+\.\w+$   - basic email regexp but will check every line separately
#.   \A\w+@\w+\.\w+\z. - \A and \z will show the beginning and ending of a string; will check all lines together

# -------- REGEXP IN RUBY

# we can use input =~ regexp or regexp =~ input to check if they match

# this expression will return an Integer, which will be the index in the string where the matching regexp starts

# # # falsy values are only false or nil

# when using .match it returns something similar to an Array. and you can call match_data[0] to get teh full match

# inside a regexp groupyou can start with ?<name> to name your group and then when you call it using name: symbols instead
# if you call the matches by index in match_data it will separate numbers by group


# ------ GSUB

#'hello world'.gsub 'letter to replace', 'what to replace with'

#'hello world'.gsub /regexp/, 'what to replace with'


# ----- SCAN




