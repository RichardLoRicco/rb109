=begin
In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend 
that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You may, however, 
use integer_to_string from the previous exercise.

Examples:
signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'


input: an integer
- can be positive, negative, or 0
output: returen a string representation of the input
- should denote positive with "+" and negative with "-" at beginning of string
rules:
- can't use standard conversion methods in Ruby
- can (and should) use integer_to_string method from prior exercise

algorithm:
define signed_integer_to_string method that accepts 1 parameter number
  if number is equal to 0
    invoke the integer_to_string method and pass in number as an argument
  else if number is greater than 0:
    invoke the integer_to_string method and pass in number as an argument
      -> make sure to prepend a "+" using string interpolation
  otherwise:
    invoke the integer_to_string method and pass in the absolute value of number as an argument
      -> make sure to prepend a "-" using string interpolation
=end



DIGITS_HASH = { 0 => '0', 1=> '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9' }

def integer_to_string(number)
  digits = []
  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end

  digits.map { |digit| DIGITS_HASH[digit] }.join("")
end

def signed_integer_to_string(number)
  if number == 0
    integer_to_string(number)
  elsif number > 0
    "+" + integer_to_string(number)
  else
    "-" + integer_to_string(number.abs)
  end
end


# Test Cases:
p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'