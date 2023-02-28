# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

=begin

input: a string
return: the character that occurs least often in the string
  -> this character has the lowest count
rules:
  - if there are multiple characters with the equal lowest number of occurrences, then return the one that appears
    first in the string
  - when counting characters, ignore case (i.e., consider upper and lowercase to be the same)
notes:
  - I want to downcase everything first to take care of case
  - iterate through the unique characters in string and check how many times they occur in string

----

algorithm:
- initialize string_downcased to downcased string
- initialize uniq_string to an array consisting of the unique chars in string_downcased
- initialize lowest_char to first element of uniq_string
- iterate over uniq_string and for each char:
    - if count of char in string is < count of lowest_char in string:
        - reassign lowest_char to char
- return char

=end

def least_common_char(string)
  string_downcased = string.downcase
  uniq_string = string_downcased.chars.uniq
  lowest_char = uniq_string[0]

  uniq_string.each do |char|
    lowest_char = char if string_downcased.count(char) < string_downcased.count(lowest_char)
  end

  lowest_char
end

# Examples:
p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'
# The tests above should print "true".