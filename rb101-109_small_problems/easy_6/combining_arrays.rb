=begin

Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.
There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

Example
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

--------------------------------
inputs: two arrays
outputs: a new array
rules:
- the new returned array must contain all of the values from the argument arrays
- there should be no duplication of values in the returned array, even if there are duplicates in the original arrays

algorithm:
define merge method that accepts 2 parameters, arr1 and arr2
- initialize merged_arr and assign to it to -> arr1 + arr2 and remove all unique values

=end

def merge(arr1, arr2)
  merged_arr = (arr1 + arr2).uniq
end

# Test Case:
p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]