=begin

Write a method that takes one integer argument, which may be positive, negative, or zero. 
This method returns true if the number's absolute value is odd. 
You may assume that the argument is a valid integer value.

Keep in mind that you're not allowed to use #odd? or #even? in your solution.

----

input: an integer
  - can be positive, negative, or zero
output: return true if input integer's absolute value is odd
rules:
- assume that the argument is a valid integer value
- can't use #odd? or #even?

----

algorithm:
define is_odd? method which takes one integer argument, int
- check if int modulo 2 has a remainder of 1 --> *Note, modulo always returns a non-negative result if num on right is positive
                                        --> *This is why we don't need to find absolute value

=end

def is_odd?(integer)
  integer % 2 == 1
end

# Examples:
puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true