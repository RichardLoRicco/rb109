=begin

The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such that the first 2 numbers are 1 by definition, 
and each subsequent number is the sum of the two previous numbers. This series appears throughout the natural world.

Computationally, the Fibonacci series is a very simple series, but the results grow at an incredibly rapid rate. 
For example, the 100th Fibonacci number is 354,224,848,179,261,915,075 -- that's enormous, especially considering 
that it takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits 
specified as an argument. (The first Fibonacci number has index 1.)

Examples:
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

You may assume that the argument is always greater than or equal to 2.


input: an integer
output: an integer
  - denotes the index of the first Fibonacci number that has the number of digits specified as an argument
rules:
- first Fibonacci number has index 1
- assume that the argument is always greater than or equal to 2

algorithm:
define method find_fibonacci_index_by_length that accepts 1 argument, length
- initialize index and assign to 2 (because current_number starts at index 2)
- initialize last_number and assign to 1
- initialize current_number and assign to 1
- initialize sum and assign to 0
- loop as follows:
  - reassign sum to last number + current_number
  - reassign last_number to current_number's value
  - reassign current_number to sum's value
  - increment index by 1
  - break when current_number's length is equal to length
- index (implicitly return)

=end

def find_fibonacci_index_by_length(length)
  index = 2
  last_number = 1
  current_number = 1
  sum = 0
  loop do
    sum = last_number + current_number
    last_number = current_number
    current_number = sum
    index += 1
    break if current_number.to_s.length >= length
  end
  index
end

# Test Cases:
p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847