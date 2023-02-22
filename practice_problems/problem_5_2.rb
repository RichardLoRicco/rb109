# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

=begin

input: a string
return: the character that occurs lease often in the given string
rules:
  - if there are multiple characters with the equal lowest number of occurrences, return the one that appears first
  - when counting, consider the uppercase and lowercase version to be the same

----

algorithm:
- initialize downcased_string to string downcased
- initialize goal_char to first char in downcased_string
- initialize min_count to count of first char in downcased_string

- split downcased_string into an array of chars and for each char:
    - if count of char in downcased_string < min_count:
      - reassign min_count to that count
      - reassign goal_char to that char
- return goal_char


=end

def least_common_char(string)
  downcased_string = string.downcase
  goal_char = downcased_string[0]
  min_count = downcased_string.count(goal_char)

  downcased_string.chars do |char|
    count = downcased_string.count(char)
    if count < min_count
      min_count = count
      goal_char = char
    end
  end
  goal_char
end



# Examples:
p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'
# The tests above should print "true".