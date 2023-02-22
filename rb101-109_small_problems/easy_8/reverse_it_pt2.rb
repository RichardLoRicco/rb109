# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more characters 
# reversed. Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.

=begin

----

input: a string containing one or more words
return: the given string with words that contain 5 or more characters reversed
rules:
  - each string will consist of only letters and spaces
  - spaces should be included only when more than one word is present

----

algorithm:
- split str into an array of words (using spaces), and transform each word as follows:
  - if word's length is greater than or equal to 5, reverse word
  - otherwise, return word
-> join the array (using spaces)

=end

def reverse_words(str)
  str.split.map do |word|
    word.length >= 5 ? word.reverse : word
  end.join(" ")
end

# Examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS