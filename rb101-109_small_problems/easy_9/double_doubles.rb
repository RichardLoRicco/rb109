=begin

A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits. 
For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers 
should be returned as-is.

Examples:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

Note: underscores are used for clarity above. Ruby lets you use underscores when writing long numbers; however, it does not print 
the underscores when printing long numbers. Don't be alarmed if you don't see the underscores when running your tests.


input: a number
output: a number
- if input is a double number, return input number
- if input is not a double number, return 2 times the input number
notes:
- if number has even number of digits, we just separate each side
  -> first half will end at index = number of digits / 2 - 1
  -> second half will begin at index = number of digits / 2

algorithm:
define method twice which accepts 1 parameter number
    1. convert number into a string and split it into its digits -> save as digits
    2. first_end_index = number of digits / 2 - 1
    3. second_start_index = number of digits / 2
    4. check if slice from 0 to first_end_index is equal to slice from second_start_index to -1
      - if yes, return number
      - if no, return number * 2

=end

def twice(number)
  return number * 2 if number.to_s.size == 1

  number_string = number.to_s
  first_end_index = (number_string.size / 2) - 1
  second_start_index = number_string.size / 2

  if number_string[0..first_end_index] == number_string[second_start_index..-1]
    number
  else
    number * 2
  end
end


# Test Cases:
p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10