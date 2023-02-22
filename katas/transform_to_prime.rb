=begin

input: a list of integers
return: the minimum number to be inserted in the list so that the sum of all of the list's elements
        equals the closest prime number
rules:
  - list size is at least 2
  - list's numbers are all positive
  - repetition of numbers in the list is possible
  - newer list's sum should equal the closest prime number

----
algorithm:
initialize sum to sum of number's elements
initialize next_prime to the next prime number that occurs after sum:
  - inialize next_prime to sum
  - loop as follows:
    - iterate next_prime by 1
    - break if next_prime is prime

return difference between next_prime and sum

=end


=begin

input: a list of n integers
return: minimum number to be inserted into the list so that the sum of all elements of the list
        should equal the closest prime number
rules:
  - the list size is at least 2
  - list's numbers will only be positive
  - reptition of numbers in the list could occur
  - the newer list's sum should equal the closest prime number
  
----

algorithm:
# minimum_number method -> input list of n integers output the number to insert so sum is next prime
- initialize sum to sum of elements of numbers array
- initialize next_prime to sum
- loop as follows:
  - break out of loop if next_prime is_prime?
  - increment next_prime by 1
- return next_prime - sum

# is_prime? method -> takes num and then returns boolean (true if prime, false if not)
- from 2 up to (1 - num), for no n:
  -> is num evenly divisible by n

=end

=begin

input: a list of n integers
return: minimum number to be inserted into the list so that the sum of all elements of the list
        should equal the closest prime number
rules:
  - the list size is at least 2
  - list's numbers will only be positive
  - reptition of numbers in the list could occur
  - the newer list's sum should equal the closest prime number
  
----

algorithm:
# minimum_number method -> input list of n integers output the number to insert so sum is next prime
- initialize sum to sum of elements of numbers array
- initialize next_prime to sum
- loop as follows:
  - break out of loop if next_prime is_prime?
  - increment next_prime by 1
- return next_prime - sum

# is_prime? method -> takes num and then returns boolean (true if prime, false if not)
- from 2 up to (1 - num), for no n:
  -> is num evenly divisible by n

=end

def minimum_number(numbers)
  sum = numbers.reduce(:+)
  next_prime = sum
  
  loop do
    break if is_prime?(next_prime)
    next_prime += 1
  end
  
  next_prime - sum
end

def is_prime?(num)
  (2..num-1).none? { |n| num % n == 0 }
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2