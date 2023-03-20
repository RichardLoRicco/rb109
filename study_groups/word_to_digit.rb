=begin

Write a method that takes a sentence string as input, and returns the same string with any sequence of
the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

input: string (sentence of words broken up with spaces)
return: the same string (MUTATE) with any sequence of 'zero' through 'nine' converted to their equivalent string digit ('1', '2', etc.)
rules:
  - look out for digit words that include a '.'
  - mutate the input string
  - words are separated by spaces

----

algorithm:
# - intialize constant DIGIT_WORDS to array of "zero" through "nine"

- iterate over each word in DIGIT_WORDS and for each num:
  - use gsub! to replace num in sentence with num's index in DIGIT_WORDS
- return sentence

=end

DIGITS_WORDS = %w(zero one two three four five six seven eight nine)

def word_to_digit(sentence)
  DIGITS_WORDS.each do |num|
    sentence.gsub!(num, DIGITS_WORDS.find_index(num).to_s)
  end
  sentence
end




# end


# Example:
p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

# this is someoen elses answer:

# WORDS = %w(one two three four five six seven eight nine)
# NUMBS = [1, 2, 3, 4, 5, 6, 7, 8, 9]

# HSH = WORDS.zip(NUMBS).to_h 

# def word_to_digit(str)
#   str.gsub!(/(one|two|three|four|five|six|seven|eight|nine)/) { |match| HSH[match] }
# end 