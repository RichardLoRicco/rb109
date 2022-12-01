=begin
In the previous two exercises, you developed methods that convert simple numeric strings to signed Integers. In this exercise and the next, you're 
going to reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a string representation.

You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this
the old-fashioned way and construct the string by analyzing and manipulating the number.

Examples:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'


input: a positive integer or 0
output: return a string representation of the input number
rules:
- can't use any standard conversion methods in Ruby

algorithm:
initialize DIGITS_HASH constant to a hash object:
  -> keys are numerical digits 0 thorugh 9
  -> values are string representations of digits

define integer_to_string method that accepts 1 parameter number
  initialize digits to []
  loop as follows:
    - divide number by 10, reassinging number to number and assigning the remainder to remainder
    - add remainder to the front of digits array
    - break out of the loop when remainder is 0
  
  iterate through digits and for each digit, tranform as follows:
    return the value associated with the key in DIGITS_HASH that is equal to each iteration's digit
  join digits into a string

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



# Test Cases:
p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'