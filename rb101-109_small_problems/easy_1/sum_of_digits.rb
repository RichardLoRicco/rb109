# Write a method that takes one argument, a positive integer, and returns the 
# sum of its digits.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

# input: a positive integer
# output: return an integer -> consisting of sum of digits of input integer

# algorithm:
# define sum method that accetps 1 parameter, pos_int
# convert pos_int into string
# - split pos_int into array, with each digit an element
# - return sum of array elements

def sum(pos_int)
  pos_int.to_s.split("").map { |digit| digit.to_i }.sum
end


# Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# The tests above should print true.

