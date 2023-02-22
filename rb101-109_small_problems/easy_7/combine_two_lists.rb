=begin

Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, 
with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

----

inputs: two arrays
output: return a new array
- contains all elements from both array arguments, with the elements taken in alternation
rules:
- assume that both input arrays are non-empty
- assume that both input arrays have the same number of elements

----

algorithm:
define interleave method that accepts 2 parameters, array1 and array2
  initialize interleaved_array to []
  initialize index to 0

  loop as follows:
    add array1's element at index to interleaved_array
    add array2's element at index to interleaved_array
    increment index by 1
    break when index == length of array1

  implicitly return interleaved_array

=end

def interleave(array1, array2)
  interleaved_array = []
  index = 0

  loop do
    interleaved_array << array1[index] << array2[index]
    index += 1
    break if index >= array1.length
  end

  interleaved_array
end



# Example:
p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']