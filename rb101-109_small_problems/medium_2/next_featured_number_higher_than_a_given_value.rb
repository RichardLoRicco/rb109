=begin

A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits 
occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it 
is not a multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next featured number that is greater 
than the argument. Return an error message if there is no next featured number.

----

input: a single integer
return: the next featured number that is greater than the argument
  - return an error message if there is no next featured number
  - a featured number is an odd number that is a multiple of 7, and whose digits occur
    exactly once each
      -> ex) 49 is a featured number, but 98 is not
      -> ex) 97 is not a featured number, and neither is 133

----



algorithm:
- initialize num to n + 1
- loop as follows:
  - if num is odd, num is evenly divisible by 7 and num.to_s.chars.uniq = num.to_s.chars (i.e., it is unique), then return num
  - increment num by 1
  - break if num >= 9876543210
- error message
=end

def featured(n)
  num = n + 1
  loop do
    return num if num % 7 == 0 && num.to_s.chars.uniq == num.to_s.chars && num.odd?
    num += 1
    break if num >= 9876543210
  end
  "There is no possible number that fulfills those requirements"
end


# Examples:
p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements