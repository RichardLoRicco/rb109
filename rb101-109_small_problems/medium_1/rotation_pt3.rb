=begin
If you take a number like 735291, and rotate it to the left, you get 352917. 
If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. 
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. 
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Example:
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845


input: an integer
output: an integer
- this integer contains the maximum rotation of the input number
rules:
- do not have to handle multiple 0s
- can and should use rotate_rightmost_digits method from prior exercise

algorithm:
define max_rotation method that accepts 1 parameter number
  initialize n to # of digits in number
  initialize max_rotated_number to number
  loop as follows:
    reassign max_rotated_number to return value of:
      -> invoke the rotate_rightmost_digits method and pass in max_rotated_number and n as arguments
    increment n by -1
    break when n is 0
  implicitly return max_rotated_number


=end


def rotate_array(array)
  array[1..-1] + [array[0]]
end


def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  n = number.to_s.size
  max_rotated_number = number

  loop do
    max_rotated_number = rotate_rightmost_digits(max_rotated_number, n)
    n -= 1
    break if n == 0
  end

  max_rotated_number
end

# Test Cases:
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845