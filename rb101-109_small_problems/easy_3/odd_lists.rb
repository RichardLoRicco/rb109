=begin

Write a method that returns an Array that contains every other element of an Array that is passed in as an argument.
The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

Examples:
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

input: an array
output: return a new array that contains every other element of argument array
rules:
- values in returned array shoudl be those in 1st, 3rd, 5th, etc. elements of argument array

algorithm:
define oddities method that accepts 1 parameter array
initialize new_array to empty array
iterate over array with index and:
  if index is even:
    - add element to new_array
return new_array

=end

def oddities(array)
  new_array = []

  array.each_with_index do |element, index|
    new_array << element if index.even?
  end

  new_array
end




# Test Cases
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []