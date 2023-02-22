=begin

Given a string of words separated by spaces, write a method that takes this string of words and returns a string
in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word.
You may also assume that each string contains nothing but words and spaces.

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

----

input: a string of words separated by spaces
return: a string in which the first and last letters of every word are swapped
rules:
  - assume that every word contains at least one letter
  - assume that the string will always contain at least one word
  - assume that each string contains nothing but words and spaces

----

algorithm:
- split string_of_words into an array of words using spaces, and transform each word as follows:
  - swap the first index char and the last index char
  - return word with the newly reassigned first and last chars
-> join the array using spaces

=end

def swap(string_of_words)
  string_of_words.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(" ")
end

# Test Cases:
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'