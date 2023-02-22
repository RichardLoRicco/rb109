# Write a method that takes one argument, a string, and returns a new string with 
# the words in reverse order.

=begin

----

input: a string
return: a new string with the words in reverse order

----

algorithm:
- split str into an array of words (using spaces), then
  -> reverse the order of the elements of the array, then
  -> join the array using spaces


=end

def reverse_sentence(str)
  str.split.reverse.join(" ")
  end
  
  
  # Examples:
  puts reverse_sentence('Hello World') == 'World Hello'
  puts reverse_sentence('Reverse these words') == 'words these Reverse'
  puts reverse_sentence('') == ''
  puts reverse_sentence('    ') == '' # Any number of spaces results in ''
  #The tests above should print true.