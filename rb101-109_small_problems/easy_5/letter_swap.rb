=begin

Given a string of words separated by spaces, write a method that takes this string of words and returns a string
in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string will always contain at least one word.
You may also assume that each string contains nothing but words and spaces.

Examples:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'


input: a string of words
output: return a string of words
rules:
- take string input and return string in which the first and last letters of every word are swapped
- assume that each string contains nothing but words and spaces
- assume that every word contains at least one letter, and that the string will always contain at least one word

algorithm:
define swap method that accepts 1 parameter sentence
- split sentence into an array using spaces -> assign to variable words
- iterate through words and, for each word:
  - initilize first_letter to index 0 of word
  - initialize last_letter to index -1 of word
  - reassign index 0 of word to last_letter
  - reassign index -1 of word to first_letter
- join words into string using spaces

=end

def swap(sentence)
  words = sentence.split(" ")
  words.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end
  words.join(" ")
end

# Test Cases:
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'