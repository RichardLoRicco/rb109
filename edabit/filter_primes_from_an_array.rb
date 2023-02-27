=begin

Create a function that takes an array and returns a new array containing only prime numbers.

Notes:
New array must maintain the order of primes as they first appear in the original array.
Check the Resources tab for help.

----

input: an array
return: a new array containing only prime numbers
rules:
  - new array must maintain the order of primes as they first appears in the original array

----

algorithm:
# filter to array of primes
- initialize primes_arr to []
- iterate through arr and for each num:
  - add num to primes_arr if is_prime?(num) is true
- return primes_arr

# is_prime? function
- return false if num < 2
- from 2..num-1, for all values of n:
  - num is not evenly divisible by n

=end

def filter_primes(arr)
  primes_arr = []

  arr.each { |num| primes_arr << num if is_prime?(num) }

  primes_arr
end

def is_prime?(num)
  return false if num < 2

  (2...num).all? { |n| num % n != 0 }
end


# Examples:
p filter_primes([7, 9, 3, 9, 10, 11, 27]) == [7, 3, 11]
p filter_primes([10007, 1009, 1007, 27, 147, 77, 1001, 70]) == [10007, 1009]
p filter_primes([1009, 10, 10, 10, 3, 33, 9, 4, 1, 61, 63, 69, 1087, 1091, 1093, 1097]) == [1009, 3, 61, 1087, 1091, 1093, 1097]