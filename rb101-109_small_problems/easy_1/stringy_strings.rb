=begin
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. 
The length of the string should match the given integer.

Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

The tests above should print true.


--------

input: a positive integer
return: a string of alternating 1s and 0s, always starting with 1
rules:
  - the length of the returned string must match the given integer

----

algorithm:
- initialize string to ""
- pos_int times do the following for each count
  - if count is even, add '1' to string
  - otherwise, add '0' to string
- return string

=end

def stringy(pos_int)
  string = ""
  pos_int.times do |count|
    count.even? ? string << "1" : string << "0"
  end
  string
end

# Test Cases
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'