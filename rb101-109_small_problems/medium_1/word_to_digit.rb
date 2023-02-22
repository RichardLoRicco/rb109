=begin

Write a method that takes a sentence string as input, and returns the same string with any sequence of
the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

----

input: a sentence string
output: return the same string with any sequence of words 'zero', 'one'... 'nine' converted to a string of digits
rules:
  - we appear to be mutating the string

----

algorithm:
initialize words_to_digits to a hash object with string words from zero to nine as keys and their string digit equivalents as values

define word_to_digit method that accepts 1 parameter, sentence
  - iterate through each key in words_to_digits and for each word:
    - if word ends in a period:
        - remove the period from sentence: 
        - substitute that word with the corresponding value in sentence
        - add the period back
    - else substitute that word with the corresponding value in sentence

  - return sentence

=end

WORD_TO_DIGITS = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5',
  'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9' }

def word_to_digit(sentence)
WORD_TO_DIGITS.keys.each do |word|
sentence.gsub!(word, WORD_TO_DIGITS[word])
end

sentence
end


# Example:
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'