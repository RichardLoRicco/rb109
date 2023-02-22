=begin
If you take a number like 735291, and rotate it to the left, you get 352917. 
If you now keep the first digit fixed in place, and rotate the remaining digits, you get 329175. 
Keep the first 2 digits fixed in place and rotate again to 321759. Keep the first 3 digits fixed in place and rotate again to get 321597. 
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to get 321579. 
The resulting number is called the maximum rotation of the original number.

Write a method that takes an integer as argument, and returns the maximum rotation of that argument. 
You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

----

input: an integer
output: return the maximum rotation of the arugment integer
rules:
  - should use the rotate_rightmost_digits method
  - do not have to handle multiple 0s

----

algorithm:
define max_rotation method that accepts 1 parameter, num
  - initialize number_of_rotations to length of num (converted to string!)

  - loop as follows:
    - reassign num to the following:
      -> invoke the rotate_rightmost_digits method and pass in num and number_of_rotations to it as an argument
    - increment number_of_rotations by -1
    - break out of loop when number_of_rotations == 0
  
    return num
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, n_digits)
  return num if n_digits == 1

  (num.to_s.chars[0, (num.to_s.length - n_digits)] + rotate_array(num.to_s.chars[(-1 * n_digits)..-1])).join("").to_i
end

def max_rotation(num)
  number_of_rotations = num.to_s.length

  loop do 
    num = rotate_rightmost_digits(num, number_of_rotations)
    number_of_rotations -= 1
    break if number_of_rotations <= 0
  end
  
  num
end


# Example:
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845