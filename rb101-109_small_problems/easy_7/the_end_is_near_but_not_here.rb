=begin

Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Examples:
penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'


input: a string
output: a string
- return the next to last word in the string passed in as an argument
rules:
- words are any sequence of non-blank characters
- assume that the input string will always contain at least two words

algorithm:
define penultimate method that accepts 1 parameter string
  split string into an array based on spaces and return second to last element

=end

def penultimate(string)
  string.split[-2]
end




p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'