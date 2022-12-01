=begin

Write a method that takes a positive integer as an argument and returns that number with its digits reversed. 

Examples:
reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1

Don't worry about arguments with leading zeros - Ruby sees those as octal numbers, which will cause confusing results. 
For similar reasons, the return value for our fourth example doesn't have any leading zeros.


inputs: a positive integer
output: a positive integer
- returns the input integer with its digits reversed
rules:
- don't worry about leading zeros

algorithm:
define reversed_number method that accepts 1 parameter integer
  convert integer to a string -> assign to string
  reverse string
  convert string to an integer

=end

def reversed_number(integer)
  string = integer.to_s
  string = string.reverse
  string.to_i
end

# Test Cases:
p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1