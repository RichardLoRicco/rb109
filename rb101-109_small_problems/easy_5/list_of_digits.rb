# Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.


# input : a positive integer
# output an array (containing integer elements)
# rules:
# - the output array contains a list of the digits in the input integer

# Algorithm
# define method digit_list that accepts 1 parameter, pos_int
# - convert pos_int into string
# - split string into array
# - iterate over the array, tranforming it as follows:
#   -> convert each element to integer

def digit_list(pos_int)
  pos_int.to_s.chars.map { |digit| digit.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true