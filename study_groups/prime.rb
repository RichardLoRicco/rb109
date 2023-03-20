# Write a method that takes two numbers. 

# Return an array containing all primes between the two numbers (include the two given numbers in your answer if they are prime). Don't use Ruby's 'prime' class.

=begin

input: two numbers (integers)
return: an array containing all primes between the two numbers (inclusive)
rules:
  - don't use 'prime' class
  - include the given numbers if they are prime
  - if only one prime in the range, return that number in an Array

----

algorithm:
# main method
- initialize range to array object containing num1 .. num2 inclusive
- iterate over range and for each number, select as follows:
  - is_prime?(number)

# prime helper method
- return false if num is less than 2
- 2 up to (num-1), for all values of n: (all? method)
  - num is not evenly divisible by n


=end

def find_primes(num1, num2)
  range = (num1..num2).to_a
  range.select { |number| is_prime?(number) }
end


def is_prime?(num)
  return false if num < 2
  2.upto(num-1).all? { |n| num % n != 0 }
end


p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2]
