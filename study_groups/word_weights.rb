=begin 
The weight of an English word can be calculated by summing the ASCII code point for each character in the word, excluding any punctuation:

"Wouldn't" = 87 + 111 + 117 + 108 + 100 + 110 + 116 = 749

Write a function that takes a sentence as a string, returning true if all word weights increase for each word in the sentence, and false if any word weight decreases or remains the same.

Examples
increasing_word_weights("Why not try?") ➞ true
# 312 -> 337 -> 351 (weights increase)

increasing_word_weights("All other roads.") ➞ false
# 281 -> 546 -> 537 (537 is less than 546)

input: a sentence (a string of words)
return: true if all word weights increase for each word in input sentence string, return false
  - a boolean
rules:
  - weight of a word is the sum of the ASCII code points for each char, excluding punctuation 
    -> DON'T ADD PUNCTUATION
  - words are separated by spaces
  - 
notes:  
  - split string into array of words, map each word so that the transformed array consists of the sum of ASCII code point (excluding punctuation)
  - check that the array's elements are all increasing in value
    -> use sort to check that the array is the same as the array sorted by that value

----

algorithm:
- initialize word_weights to the return value of the following:
  - split sentence into an array of words (using spaces)
  - map over that array, and for each word, transform as follows:
    - initialize ascii_sum to 0
    - split word into array of chars, and for each char:
      - if char is a letter (upper or lowercase), add the ASCII value to ASCII_sum
    - ASCII_sum
  TEST THAT WE HAVE ARRAY OF THE SUMS OF ASCII 
- check that word_weights == words_weights sorted

=end 

def increasing_word_weights(sentence)
  word_weights = sentence.split(" ").map do |word|
    ascii_sum = 0
    word.chars.each do |char|
      ascii_sum += char.ord if char =~ /[a-zA-Z]/
    end
    ascii_sum
  end

  word_weights == word_weights.sort
end

p increasing_word_weights("Why not try?") == true
p increasing_word_weights("Face your fears, never settle.") == true
p increasing_word_weights("DON'T SHOUT!") == true
p increasing_word_weights("Can you just leave?") == true
p increasing_word_weights("You will push ahead, creating solutions!") == true
p increasing_word_weights("All that money doesn't guarantee happiness.") == true
p increasing_word_weights("Full steam ahead!") == false
p increasing_word_weights("Not all those who wander are lost.") == false
p increasing_word_weights("All other roads.") == false
p increasing_word_weights("Whatever you are, be a good one.") == false
p increasing_word_weights("Standing on the shoulders of giants.") == false
p increasing_word_weights("You get what you settle for.") == false
p increasing_word_weights("Inconceivable!") == true