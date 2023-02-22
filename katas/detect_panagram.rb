=begin

input: a string
return: true if input string is a panagram, false if not
rules:
  - a panagram is a sentence that contains every single letter of the alphabet at least once
  - case is irrelevant
example: pangram?("The quick brown fox jumps over the lazy dog") => true

----

algorithm:
initialize ALPHABET to an array a-z
initialize array to string downcased and split into an array of chars

iterate over each letter in ALPHABET array and return true if for all letters, the following
is true:
  - array includes letter

=end


def pangram?(string)
  alphabet = ("a".."z").to_a
  array = string.downcase.split("")
  
  alphabet.all? { |letter| array.include?(letter) }
end