=begin

Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, 
with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

Example:
interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']


inputs: two arrays
output: return a new array that contains all elements from both array arguments with the elements taken in alternation
rules:
- assume that both input arrays are non-empty
- assume that both input arrays have the same number of elements

algorithm:
define method interleave that accepts 2 parameters, arr1 and arr2
  initialize interleaved_arr to []
  do the following as many times as the size of arr1 with index as counter:
    - add element at position index of arr1 to interleaved_arr
    - add element as position index of arr2 to interleaved_arr
  implicitly return interleaved_arr

=end

def interleave(arr1, arr2)
  interleaved_arr = []
  (arr1.size).times do |index|
     interleaved_arr << arr1[index]
     interleaved_arr << arr2[index]
  end
  interleaved_arr
end


# Test Cases:
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']