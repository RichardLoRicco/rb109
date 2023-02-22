=begin

Write a method that computes the difference between the square of the sum of the first n positive integers and 
the sum of the squares of the first n positive integers.

----

input: an integer -> denotes n positive integers
return: a different integer
  -> the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers

----

algorithm:
initialize sum to 0
initialize sum_of_squares to 0

from 1 up to n: do the following for each num:
  - increment sum by num

from 1 up to n: do the following for each num:
  - increment sum by num squared

square sum and subtract by sum_of_squares

=end

def sum_square_difference(n)
  sum = 0
  sum_of_squares = 0

  1.upto(n) { |num| sum += num }
  1.upto(n) { |num| sum_of_squares += (num ** 2) }
  
  sum ** 2 - sum_of_squares
end



# Examples:
p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150