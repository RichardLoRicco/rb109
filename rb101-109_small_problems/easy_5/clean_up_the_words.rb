=begin

Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
write a method that returns that string with all of the non-alphabetic characters replaced by spaces.

If one or more non-alphabetic characters occur in a row, you should only have one space in the result
(the result should never have consecutive spaces).

Examples:
cleanup("---what's my +*& line?") == ' what s my line '


input: a string -> contains words (all lowercased) and assortment of non-alphabetic characters
output: a string -> replaces non-alphabetic characters with spaces
rules:
- if one or more non-alphabetic characters occur in a row, you should only have one space in the result
  -> no consecutive spaces

algorithm:
define method cleanup that accepts 1 parameter str
- destructively replace all non-alphabetic characters with spaces
- remove consecutive duplicate spaces

=end

def cleanup(str)
  str.gsub!(/[^a-z]/, " ")
  str.squeeze!(" ")
end


# Test Case:
p cleanup("---what's my +*& line?") == ' what s my line '