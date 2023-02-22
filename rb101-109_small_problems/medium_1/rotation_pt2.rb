=begin
Write a method that can rotate the last n digits of a number. 


Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want. (Recommended!)

You may assume that n is always a positive integer.

----

input: a number
return: a number in which the last n digits of the input number are rotated
rules:
  - use rotate_array method from prior exercise
  - assume that n is always a positive integer

----

algorithm:
- convert num to string then array of chars -> assign to num_arr
- reassign num_arr[-1 * n_digits..-1] to rotate_array[num_arr-1 * n_digits..-1])
- return num_arr joined converted to an integer
  

=end


def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(num, n_digits)
  num_arr = num.to_s.chars
  num_arr[-1 * n_digits..-1] = rotate_array(num_arr[-1 * n_digits..-1])
  num_arr.join("").to_i
end


# For example:
p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917