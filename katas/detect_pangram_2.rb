=begin

A pangram is a sentence that contains every single letter of the alphabet at least once. 

For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because it 
uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. Ignore numbers and punctuation.

----

input: a string
return: true if input string is a pangram (contains every letter of alphabet at least once), false otherwise
rules:
  - case is irrelevant
  - ignore numbers and punctuation
notes:
  - thinking I want to create array of all letters in alphabet and check whether string includes all of them

----

algorithm:
- initialize LOWERCASE_ALPHABET to array of 'a' through 'z'
- iterate over LOWERCASE_ALPHABET and check whether the following is true for each letter:
    - string includes letter

=end

LOWERCASE_ALPHABET = ("a".."z").to_a

def panagram?(string)
  LOWERCASE_ALPHABET.all? { |letter| string.include?(letter) }
end


p panagram?("The quick brown fox jumps over the lazy dog.") == true
p panagram?("This is not a pangram.") == false
