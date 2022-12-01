=begin

Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result
by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

Examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667


input: an array of integers
output: a float
- multiply all of the elements of array input together, divide the result by number of entries
rules:
- print result rounded to 3 decimal places
- assume array is non-empty

algorithm:
define show_multiplicative_average method that accepts 1 parameter arr_of_integers
  initialize product and assign to 0.0
  initialize number_of_elements and assign to count of arr's elements
  iterate through arr_of_integers and for each integer:
    - mulitply product by integer
  divide product by number_of_elements and round to 3 places

=end

def show_multiplicative_average(arr_of_integers)
  product = 1.0
  number_of_elements = arr_of_integers.size
  arr_of_integers.each do |integer|
    product *= integer
  end
  average = (product / number_of_elements).round(3)
  "The result is #{format('%.3f', average)}"
end


p show_multiplicative_average([3, 5])                # => The result is 7.500
p show_multiplicative_average([6])                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667