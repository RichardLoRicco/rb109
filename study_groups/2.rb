# Odd But Not Prime

# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. 
# Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

=begin

input: a positive integer, "x"
return: the number of positive integers less than or equal to the input intege that are odd but not prime
rules:
  - assume "x" is an integer between 1 and 10000
  - prime number is a natural number greater than 1 that has no positive divisors other than 1 and itself

----

algorithm:
- initialize odd_not_prime to []
- from 1 up to pos_int, do the following for each num:
    - if num odd and num is not prime, add num to odd_not_prime
- return size of odd_not_prime

# determine if a num is prime
- return false if num is 1
- from 2 up to num - 1, is the following true for all n?:
  - num is not evenly divisible by n

=end

def odd_not_prime(pos_int)
  odd_not_prime = []
  
  1.upto(pos_int) do |num|
    odd_not_prime << num if num.odd? && !is_prime?(num)
  end

  odd_not_prime.size

end

def is_prime?(num)
  return false if num == 1
  2.upto(num - 1).all? { |n| num % n != 0 }
end

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20
