=begin

Write a method named include? that takes an Array and a search value as arguments.
This method should return true if the search value is in the array, false if it is not.
You may not use the Array#include? method in your solution.

Examples:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
-----------------------------

inputs: an array and a search value (likely an integer or nil)
output: a boolean
rules:
- return true if search value is in the array, false if it is not
- can't use Array#include? method in solution

algorithm:
define include? method that accepts 2 parameters, arr and search_value
  initialize variable is_present? to false
  iterate over arr and for each element:
    - if element equals search value:
      -> reassign is_present? to true
  implicitly return is_present?

=end

def include?(arr, search_value)
  is_present = false
  arr.each { |element| is_present = true if element == search_value}
  
  is_present
end


# Test Cases:
p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false