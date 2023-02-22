# Write a method that takes a single String argument and returns a new string that contains the original value 
# of the argument with the first character of every word capitalized and all other letters lowercase. 

# You may assume that words are any sequence of non-blank characters.

=begin

input: a string
return: a new string that contains the original value of the argument with first char of every word capitalized
        and all other letters lowercased
rules:
  explicit:
    - assume that words are any sequence of non-blank chars -> i.e., spaces break up words
  implicit:
    - input can contain special characters like parentheses

----

algorithm:
- split string into an array of words (using spaces) and transform each word as follows:
  - invoke the capitalize method on word -> this will upcase the first letter and downcase the rest
-> join resulting array with spaces

=end

def word_cap(string)
  string.split.map { |word| word.capitalize }.join(" ")
end


p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
