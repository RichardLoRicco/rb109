=begin

In the previous exercise, we developed a procedural method for computing the value of the nth Fibonacci numbers.
This method was really fast, computing the 20899 digit 100,001st Fibonacci sequence almost instantly.

In this exercise, you are going to compute a method that returns the last digit of the nth Fibonacci number.


----

input: an integer, n (denoting the count fibonacci number we seek to find)
output: return the last digit of the nth fibonacci number
  - this will be an integer
rules:
  - don't use recursion

----

algorithm:
define fibonacci method that accepts 1 parameter, n
  return 1 if n equals 1 or 2

  initialize count to 3
  last_number to 1
  initialize sum to 2

  loop as follows: 
    - reassign sum to -> sum + last_number
    - reassign last_number to -> sum
      -> DO THESE AT THE SAME TIME
    - increment count by 1
    - break out of loop if count equals n
    
  # find last digit of sum
  - convert sum to string
    -> find last digit
    -> convert back to integer

=end

def fibonacci_last(nth)
  fibonacci(nth).to_s[-1].to_i
end

def fibonacci_last(nth)
  last_2 = [1, 1]
  3.upto(nth) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end

  last_2.last
end


# Examples:
p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4