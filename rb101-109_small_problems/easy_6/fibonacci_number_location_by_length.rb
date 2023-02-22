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

----

input: a number representing the number of digits
return: the index of the first fibonacci number that has the number of digits specified
rules:
  - first fibonacci number has index 1 (not 0)
  - argument is always greater than or equal to 2
  - first 2 numbers are 1, and each subsequent number is the sum of the two previous numbers

----

algorithm:
- initialize index to 2
- initialize current_num to 1
- initialize last_num to 1

- loop as follows:
  - break if current_num's size is equal to length
  - reassign current_num to the sum of current_num and last_num
  - reassign last_num to current_num
  -> * do these at the same time *
  - increment index by 1
  
  - return index

=end

def find_fibonacci_index_by_length(length)
  index = 2
  current_num = 1
  last_num = 1
  loop do
    break if current_num.to_s.size == length
    current_num, last_num = last_num + current_num, current_num
    index += 1
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