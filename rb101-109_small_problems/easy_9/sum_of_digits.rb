# Write a method that takes one argument, a positive integer, and returns the 
# sum of its digits.

# For a challenge, try writing this without any basic looping constructs (while, until, loop, and each).

=begin

input: a positive integer
return: the sum of its digits

----

algorithm:
- convert integer to a string, split into an array of string digits,convert digits to integer, then sum digits

=end


def sum(pos_int)
  pos_int.to_s.chars.map(&:to_i).reduce(:+)
end


# Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
# The tests above should print true.
