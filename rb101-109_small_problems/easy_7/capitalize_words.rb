=begin

Write a method that takes a single String argument and returns a new string that contains the original value 
of the argument with the first character of every word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

----

input: a string
output: return a new string that contains the original value of the argument with first character of every word capitalized and all others lowercase

algorithm:
define word_cap method that accepts 1 parameter sentence
  - break sentence into an array and transform each word as follows:
    - capitalize word
  - join the array with spaces -> i.e., convert back to string

=end

def word_cap(sentence)
  sentence.split(" ").map { |word| word.capitalize }.join(" ")  
end


# Examples
p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'