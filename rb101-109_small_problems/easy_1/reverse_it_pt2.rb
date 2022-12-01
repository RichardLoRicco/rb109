# Write a method that takes one argument, a string containing one or more words,
# and returns the given string with words that contain five or more characters 
# reversed. Each string will consist of only letters and spaces. 
# Spaces should be included only when more than one word is present.

# input: a string (containing multiple words)
# output: return the input string with the words that contain 5+ letters reversed
# rules:
# - each input string will consist of only letters and spaces
# - spaces should be included only if more than one word is present

# algorithm:
# define reverse_words method that accepts 1 parameter, str
# - split str into an array arr
# - iterate over the words of arr, destructively tranforming each word as follows:
#   - if the length of the word is greater than or equal to 5 characters, reverse it
#   - else, leave the word as is

def reverse_words(str)
  arr = str.split
  arr.map! do |word|
    word.length >= 5 ? word.reverse : word
  end
  arr.join(" ")
end



# Examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS