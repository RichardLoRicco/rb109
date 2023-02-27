=begin

Create a function that takes a number as its argument and returns an array of all its factors.

Notes:
The input integer will be positive.
A factor is a number that evenly divides into another number without leaving a remainder. 
The second example is a factor of 12, because 12 / 2 = 6, with remainder 0.

----

input: an integer
return: an array of the input integers factors
rules:
  - input integer will be positive

algorithm:
- intialize factors to []
- from 1 up to int, for each num:
  - if int is evenly divisibly by num, add num to factors
- return factors array

=end

def factorize(int)
  factors = []
  1.upto(int) { |num| factors << num if int % num == 0 }
  factors
end


# Examples
p factorize(12) == [1, 2, 3, 4, 6, 12]
p factorize(4) == [1, 2, 4]
p factorize(17) == [1, 17]