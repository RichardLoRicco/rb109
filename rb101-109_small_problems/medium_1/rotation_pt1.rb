=begin
Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Example:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true


input: an array
output: a new array in which the first element of the input array is moved to the end of the output array
rules:
- original array can't be modified
- don't use Array#rotate or Array#rotate!

algorithm:
define rotate_array method that accepts 1 parameter arr
  initialize rotated_arr to a dup of arr
  initialize last_element to return value of removing rotated_arr[0]
    - add last_element to end of rotated_arr
  implicitly return rotated_arr

=end

# def rotate_array(arr)
#   rotated_arr = arr.dup
#   last_element = rotated_arr.shift
#   rotated_arr << last_element
#   rotated_arr
# end

def rotate_array(arr)
  rotated_arr = arr.dup
  rotated_arr << rotated_arr.shift
  rotated_arr
end

# Test Cases:
p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true