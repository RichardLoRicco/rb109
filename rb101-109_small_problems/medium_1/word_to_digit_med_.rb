=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words
 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Example:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


input: a string
- consists of a sentence
output: return the same string, with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
converted to a string of digits
rules:
- mutate the input string

algorithm:
initialize constant DIGITS_HASH to hash object with words being the keys and string digits being the values

define word_to_digit method that accepts 1 parameter string
  iterate through the keys in DIGITS_HASH and for each key do the following:
    - replace any instances of said key in string with the associated value
  implicitly return string

=end


DIGITS_HASH = { 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
'eight' => '8', 'nine' => '9' }

def word_to_digit(string)
  DIGITS_HASH.each do |key, value|
    string.gsub!(/\b#{key}\b/, value)
  end
  string
end


# Test Cases:
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'