=begin


Create a function that takes an integer and returns the factorial of that integer. 
That is, the integer multiplied by all positive lower integers.

Notes
Assume all inputs are greater than or equal to 0.

----

input: an integer
return: the factorial of that integer
  - factorial is the integer multiplied by all positive lower integers
rules:
  - assume all inputs are greaater than or equal to 0

----

algorithm:
- initialize result to 1
- from 1 up to int, for each n:
  - multiply n by result -> reassign return value to result
- return result

=end

def factorial(int)
  result = 1
  1.upto(int) { |n| result = result * n }
  result
end

# Examples 
p factorial(3) == 6
p factorial(5) == 120
p factorial(13) == 6227020800