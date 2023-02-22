=begin

Write a method that returns the next to last word in the String passed to it as an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

----

input: a string
return: the next to last word in the input string
rules:
  - words are any sequence of non-blank characters
  - assume that the input string will always contain at least 2 words

----

algorithm:
- split string into an array of words (using spaces):
  - return the second to last word (index position: -2)

=end

def penultimate(string)
  string.split[-2]
end


# Examples:
p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'