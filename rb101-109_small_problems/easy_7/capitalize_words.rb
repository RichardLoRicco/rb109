=begin

Write a method that takes a single String argument and returns a new string that contains the original value 
of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Examples
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'


input: a string
output: return a new string
- this new string must contain the original value of the argument with the first character of every word capitalized 
and all other letters lowercase
rules:
- assume that words are any sequence of non-blank characters
- words that begin with a non-letter character are all downcased

algorithm:
define word_cap method that accepts 1 parameter string
  initialize words and assign to string split into an array by spaces
  iterate through each word in words and transform as follows:
    - destructively capitalize word
  join words into a string (implicit return)

=end

def word_cap(string)
  words = string.split(" ")
  words.each do |word|
    word.capitalize!
  end
  words.join(" ")
end



# Test Cases:
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'