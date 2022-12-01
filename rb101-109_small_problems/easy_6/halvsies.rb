=begin

Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the 
first half and second half of the original Array, respectively. If the original array contains an odd number of elements, 
the middle element should be placed in the first half Array.

Examples:
halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]


inputs: an array
outputs: two arrays
rules
- return two arrays (as a pair of nested arrays) that contain the first and second half of the original array
- if the original array contains odd number of elements, middle element should be placed in first half array

notes:
if arr has 4 elements, arr1 would go up to index 1 and arr2 would start at index 2
  - index 1 is (length of arr)/2 - 1
  - index 2 is (length of arr)/2
if arr has 5 elements, arr 1 would go up to index 2 and arr2 would start at index 3
  - index 2 (length of arr - 1)/2
  - index 3 is (length of arr -1)/2 + 1

algorithm
define halvsies method that accepts 1 parameter arr
- initialize halved_arr and assign to a nested array whereby:
  if length of arr is even:
  - first array is index position 0 to (length of arr)/2 - 1
  - second array is index position (length of arr)/2 to -1
  otherwise:
  - first array is index position 0 to (length of arr - 1)/2
  - second array is (length of arr -1)/2 + 1 to -1



=end

def halvsies(arr)
  if arr.length.even?
    arr1 = arr[0..(arr.length/2 - 1)]
    arr2 = arr[(arr.length/2)..-1]
  else
    arr1 = arr[0..((arr.length - 1)/2)]
    arr2 = arr[((arr.length - 1)/2 + 1)..-1]
  end
  halved_arr = [arr1, arr2]
end


# Test Cases:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]