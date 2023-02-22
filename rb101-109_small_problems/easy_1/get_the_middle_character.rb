=begin

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'

----

input: a non-empty string argument
output: return the middle character(s)
rules:
- if argument has odd length, return 1 character
- if argument has even length, return exactly 2 characters

----

algorithm:
define center_of method that accepts 1 parameter string
  - initialize length to length of string
  
  - if length is even:
      -> return 2 character slice of string at position (length / 2) - 1 
  - otherwise (if length is odd)
      -> return 1 character slice of string at position (length / 2)

=end

def center_of(string)
  length = string.length

  if length.even?
    string[(length/2 ) - 1, 2]
  else
    string[(length/2)]
  end
end




# Test Cases:
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'