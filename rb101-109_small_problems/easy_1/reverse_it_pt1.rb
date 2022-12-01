# Write a method that takes one argument, a string, and returns a new string with 
# the words in reverse order.

# inputs: a string
# outputs: (return) a string
# rules:
# - the method returns a new string with the words in the input string reversed
# - reverse the words, not the characters


# algorithm
# define reverse_sentence method that accepts 1 parameter, str
# - split str into an array AND
#   -> reverse the elements of the array
#   -> convert the array back into a string

def reverse_sentence(str)
  str.split(" ").reverse.join(" ")
end


# Examples:
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'
puts reverse_sentence('') == ''
puts reverse_sentence('    ') == '' # Any number of spaces results in ''
#The tests above should print true.

