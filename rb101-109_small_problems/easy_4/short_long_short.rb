=begin

Write a method that takes two strings as arguments, determines the longest of the two strings, and then
returns the result of concatenating the shorter string, the longer string, and the shorter string once again. 
You may assume that the strings are of different lengths.

Examples:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

input: two strings
output: one string
rules:
- determine the longest of the two argument strings
- return the result of concatenating the shorter string, the longer stirng, and the shorter string once again
- assume the strings are of different lengths

algorithm:
define short_long_short method that accepts 2 parameters, str1 and str2
if str1 is longer than str2:
  str2 + str1 + str2
else:
  str1 + str2 + str1
=end

def short_long_short(str1, str2)
  if str1.length > str2.length
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end  
end



# Test Cases:
p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"