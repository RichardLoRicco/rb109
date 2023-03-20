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
return: the maximum rotation of the argument
rules:
  - use the rotate_rightmost_digits method from prior exercise
  - don't have to handle multiple 0s

----

algorithm:
- from size of arr (converted to a string!) down to 2, do the following for each n:
  - reassign int to the return value of the following -> invoke the rotate_rightmost_digits method and pass in 
    int, and n as an argument to it
- return int

=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, n_digits)
  return num if n_digits == 1

  (num.to_s.chars[0, (num.to_s.length - n_digits)] + rotate_array(num.to_s.chars[(-1 * n_digits)..-1])).join("").to_i
end

def max_rotation(int)
  (int.to_s.size).downto(2) do |n|
    int = rotate_rightmost_digits(int, n)
  end
  int
end


# Example:
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845