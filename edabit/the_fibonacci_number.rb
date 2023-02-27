=begin

Create a function that, given a number, returns the corresponding value of that index in the Fibonacci series.

The Fibonacci Sequence is the series of numbers:

1, 1, 2, 3, 5, 8, 13, 21, 34, ...
The next number is found by adding the two numbers before it:

The 2 is found by adding the two numbers before it (1+1).
The 3 is found by adding the two numbers before it (1+2).
The 5 is (2+3), and so on!

Notes:
The first number in the sequence starts at 1 (not 0).

----

input: a number, denoting an index in the fibancci series
return: the corresponding value of that index in the fibonacci series
rules:
  - first number in series starts at 1, not 0
  - series starts with 1, 1, and then each number is found by adding the two numbers before it

----

algorithm:
- if index < 2, return 1
- add fibonacci(index-1) and fibonacci(index-2)


=end

def fibonacci(index)
  return 1 if index < 2
  fibonacci(index-1) + fibonacci(index-2)
end


# Examples:
p fibonacci(3) == 3
p fibonacci(7) == 21
p fibonacci(12) == 233