=begin

In the previous exercise, we developed a recursive solution to calculating the nth Fibonacci number. 
In a language that is not optimized for recursion, some (not all) recursive methods can be extremely slow and require massive quantities of 
memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed for heavy recursion; as a result, the Fibonacci solution is only
 useful up to about fibonacci(40). With higher values of nth, the recursive solution is impractical. (Our tail recursive solution did much better, 
  but even that failed at around fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive (procedural) method.

Rewrite your recursive fibonacci method so that it computes its results without recursion.

----

input: an integer, n (denoting the count fibonacci number we seek to find)
output: return the nth fibonacci number
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
    
  implicitly return sum
=end

def fibonacci(n)
  return 1 if n <= 2

  count = 3
  last_number = 1
  sum = 2

  loop do
    last_number, sum = sum, last_number + sum
    count += 1
    break if count >= n
  end
  
  sum
end




# Examples:
p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501