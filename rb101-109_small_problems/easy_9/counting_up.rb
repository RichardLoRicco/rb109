=begin

Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater than 0.

Examples:
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]


input: an integer
output: an array of all integers, in sequence, between 1 and the argument
rules:
- assume that the argument will always be a valid integer that is greater than 0

algorithm:
define sequence method that accepts 1 parameter integer
- create an array of integers from 1 to integer

=end

def sequence(integer)
  (1..integer).to_a
end



# Test Cases:
p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]