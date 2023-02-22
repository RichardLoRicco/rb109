=begin

Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. 
If the number is 0 or negative, return the original number.

Examples:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby


input: a number
output: a number
- if argument is positive, return negative of number
- if argument is 0 or negative, return the original number

algorithm:
define negative method that accepts 1 parameter number
  if number is greater than 0:
    - return number * -1
  else -> so, if number is less than or equal to 0:
    - return number

=end

def negative(number)
 number > 0 ? -number : number
end


# Test Cases:
p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby