# Write a method that takes two numbers. 
# Return an array containing all primes between the two numbers (include the two given numbers in your answer if they are prime). 
# Don't use Ruby's 'prime' class.

=begin

input: two numbers, num1 and num2
return: an array containing all primes between the two numbers
  - include the two input numbers in array if they are prime
rules:
  - don't use Ruby's 'prime' class

----

algorithm:
- initialize primes to []
- from num1 up to num2, do the following for each num
  - if num is prime (invoke is_prime? method), add num to primes array
- return primes array

#prime? method
- return false if num == 1
- from 2 up to num-1, is the following is true for all n?:
  - num is not divisible by n

=end

def find_primes(num1, num2)
  primes = []
  num1.upto(num2) { |num| primes << num if is_prime?(num) }
  primes
end

def is_prime?(num)
  return false if num == 1
  2.upto(num-1).all? do |n|
    num % n != 0
  end
end


p find_primes(3, 10) == [3, 5, 7]
p find_primes(11, 20) == [11, 13, 17, 19]
p find_primes(100, 101) == [101]
p find_primes(1, 100) == [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]
p find_primes(1, 2) == [2]