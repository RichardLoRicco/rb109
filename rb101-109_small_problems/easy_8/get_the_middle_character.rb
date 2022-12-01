=begin

Write a method that takes a non-empty string argument, and returns the middle character or characters of the argument. 
If the argument has an odd length, you should return exactly one character. If the argument has an even length, you should return exactly two characters.

Examples:
center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'


input: a non-empty string
output: a string
- consists of the middle character or characters of the argument
rules:
- if argument has odd length, return one character
- if argument has even length, return exactly two characters
- looking at the examples, spaces count


algorithm:
define center_of method that accepts 1 parameter string
  if size of string is odd:
    return character at index position that is the floor of dividing the size of string by 2
  if size of string is even:
    return character(s) at the following index positions:
      start at the position that is 2 less than the size of the string divided by 2
      length of 1


=end

def center_of(string)
  center_index = string.size/2
  if string.length.odd?
    string[center_index]
  else
    string[center_index - 1, 2]
  end
  
end




# Test Cases:
p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'