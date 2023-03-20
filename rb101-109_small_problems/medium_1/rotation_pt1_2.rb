=begin
Write a method that rotates an array by moving the first element to the end of the array. 

The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

----

input: an array
return: a new array that is similar to the input array but rotated so that the first element is moved to the 
        end of the array
rules:
  - original array can't be modified (no mutation!)
  - can't use Array#rotate or Array#rotate!
  - input array elements can be integers or strings
  - if input array only has one element, return a new array with that one element

----

algorithm:
- add arr[1..-1] and arr[0]

=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end
 
 
 # Example:
 p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
 p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
 p rotate_array(['a']) == ['a']
 
 x = [1, 2, 3, 4]
 p rotate_array(x) == [2, 3, 4, 1]   # => true
 p x == [1, 2, 3, 4]                 # => true 