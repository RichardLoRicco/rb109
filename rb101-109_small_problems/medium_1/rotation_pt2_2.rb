=begin
Write a method that can rotate the last n digits of a number. 


Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

----

input: two numbers: the number to be rotated, number, and n, signaling the last n digits of number which are to be rotated
return: an integer that is number with the last n digits rotated
rules:
  - n is always a positive integer
  - rotating just 1 digit results in the original number being returned
  - use rotate_array from prior exercise

----

algorithm:
- convert numbers to a string then array -> assign to digits
- reassign digits[-1 * n .. -1] to return value of: rotate_array(digits[-1 * n .. -1])
- return digits converted to a string then integer
  

=end


def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(numbers, n)
 digits = numbers.to_s.chars
 digits[-1 * n .. -1] = rotate_array(digits[-1 * n .. -1])
 digits.join("").to_i
end


# For example:
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917