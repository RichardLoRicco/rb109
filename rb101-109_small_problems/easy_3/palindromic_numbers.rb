=begin

Write a method that returns true if its integer argument is palindromic, false otherwise. 
A palindromic number reads the same forwards and backwards.

Examples:
palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

input: an integer
output: a boolean
rules:
- returns true if integer argument is palindromic, false otherwise
- a palindromic number reads the same forwards and backwards

algorithm:
define palindromic_number? method that accepts 1 parameter int
convert int to str -> assign to int_as_str
check if int_as_str is equal to reverse of int_as_str
  -> implicit return

=end

def palindromic_number?(int)
  int_as_str = int.to_s
  int_as_str == int_as_str.reverse
end


# Test Cases
p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true