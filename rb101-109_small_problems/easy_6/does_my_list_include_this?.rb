=begin

Write a method named include? that takes an Array and a search value as arguments.
This method should return true if the search value is in the array, false if it is not.
You may not use the Array#include? method in your solution.

-----------------------------

input: an array and a search value
return: true if the search value if in the array
  - false if it is not in the array
rules:
  - can't use the Array#include? method

----

algorithm:
- iterate over each element in array, and return true if any element is equal to search_value


=end

def include?(array, search_value)
  array.any? { |element| element == search_value }
 end
 
 # Examples:
 p include?([1,2,3,4,5], 3) == true
 p include?([1,2,3,4,5], 6) == false
 p include?([], 3) == false
 p include?([nil], nil) == true
 p include?([], nil) == false