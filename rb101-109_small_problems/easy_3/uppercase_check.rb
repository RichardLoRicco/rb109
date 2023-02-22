=begin

Write a method that takes a string argument, and returns true if all of the alphabetic characters inside the string are uppercase, false otherwise. 
Characters that are not alphabetic should be ignored.

Examples:
uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

----

input: a string
return: true if all of the alphabetic characters inside the string are uppercase, false otherwise
rules:
  - characters that aren't alphabetic should be ignored

----

algorithm:
- remove all non-alphanumeric string chars from string and split into array of chars -> assign to alphabetic_arr
- iterate through alphabetic_arr and check whether for all chars:
  - char is equal to uppercase char

=end

def uppercase?(string)
  alphabetic_arr = string.gsub(/[^a-zA-Z]/, "").chars

  alphabetic_arr.all? { |char| char == char.upcase }
end

# Test Cases:
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true