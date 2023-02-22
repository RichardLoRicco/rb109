# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.


=begin

input: a string
return: the character that occurs least often in the given string
rules:
  - if there are multiple characters with the equal lowest number of occurences,
    then return the one that appears first in the string
  - when counting characters, consider the uppercase and lowercase version to be the same

----

algorithm:
initialize letter_count hash to {}

split string into lowercase chars and iterate over each char as follows:
    - if char is not a hash in letter_count:
        -> add char as key and 1 as value to letter_count
    - otherwise (i.e. if char is a hash in letter_count):
        -> increment the value for that key in letter_count by 1

return the key that has the lowest value in letter_count
  -> return key for pair with min_by lowest value

=end

def least_common_char(string)
  letter_count = Hash.new(0)

  string.downcase.split("").each do |char|
    if !letter_count.has_key?(char)
      letter_count[char] = 1
    else
      letter_count[char] += 1
    end
  end

  letter_count.min_by { |key, value| value }[0]
end


# Examples:
p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") == 'a'

# The tests above should print "true".