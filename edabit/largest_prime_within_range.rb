=begin

Given two integers as arguments, create a function that finds the largest prime within the range of the two integers.

Notes:
All numbers will be positive integers.

----

input: two integers
return: the largest prime within the range of the two integers
rules:
  - all numbers will be positive integers

----

algorithm:
- initialize all_primes to []
- from int1 up to int2, do the following for each num
  - if num is prime, add to all_primes
- sort and then return last element of all_primes (all_primes[-1])

- for parameter num:
  - return false if num < 2
  - from 2 up to num, for all values of n:
    - num is not evenly divisible by n

=end

def fat_prime(int1, int2)
  all_primes = []
  
  if int1 < int2
    int1, int2 = int2, int1
  end

  (int2..int1).each { |num| all_primes << num if is_prime?(num) }

  all_primes.sort[-1]
end

def is_prime?(num)
  return false if num < 3

  (2..num-1).all? { |n| num % n != 0 }
end



# Examples
p fat_prime(2, 10) == 7
# range [2, 3, 4, 5, 6, 7, 8, 9, 10] and the largest prime is 7.
p fat_prime(10, 2) == 7
# [10, 9, 8, 7, 6, 5, 4, 3, 2] and the largest prime is 7.
p fat_prime(4, 24) == 23
# range [4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24] the largest prime is 23.