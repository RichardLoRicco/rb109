=begin
Write a method that can rotate the last n digits of a number. 

For example:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.


input: two integers
  1. a number
  2. n, a number denoting the number of digits of the first input to be rotated
output: a number
  - this number consists of the first number with n digits rotated
rules:
- rotating 1 digit results in the original number being returned
- assume that n is a positive integer
- may (and should) use the rotate_array method from previous exercise

algorithm:
define rotate_rightmost_digits method that accepts 2 parameters, number and n
  convert number into an array of digits -> assign to digits 
  remove the last n elements from digits save to rotated_digits
  reassign rotated_digits to the return value of invoking rotate_array method and passing in rotated_digits as argument
  add rotated digits back to digits array
  join digits array


=end

def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(number, n)
  if n == 1
    return number
  else
    digits = number.to_s.split("")
    rotated_digits = digits.pop(n)
    rotated_digits = rotate_array(rotated_digits)
   digits << rotated_digits
   digits.join.to_i
  end
end


# Test Cases:
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913