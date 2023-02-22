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
return: 2 times the number provided as an argument, unless the argument is a double number
  -> double numbers should be returned as-s
rules:
  - a double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits
    -> Ex) 44, 3333, 103103, 7676

----

algorithm:
- intialize digits to number converted to a string
- initialize first_half_end to size of digits / 2 - 1
- initialize second_half_start to 1 more than first_hand_end

- return number * 2 if digits.size is 1

- if digits[0..first_half_end] is equal to digits[second_half_start..-1]:
  - number * 2
- else:
  - number

=end

def twice(number)
  digits = number.to_s
  first_half_end = digits.size / 2 - 1
  second_half_start = first_half_end + 1
 
  return number * 2 if digits.size == 1
 
  if digits[0..first_half_end] == digits[second_half_start..-1]
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