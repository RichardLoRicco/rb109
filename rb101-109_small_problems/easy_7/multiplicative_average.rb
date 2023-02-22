=begin

Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result
by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

----

input: an array of integers
print: multiply all numbers of input array together, divide the result by the number of entries in array and print
       the result rounded to 3 decimal places
rules:
  - assume the array is non-empty

----

algorithm:
- initialize product to product of elements of array_of_integers
- initialize number_entries to size of array of integers
- initialize average to product / number of entries
  -> round to 3 decimal places (using Kernel#format)
- print

=end

def show_multiplicative_average(array_of_integers)
  product = array_of_integers.reduce(:*)
  number_entries = array_of_integers.size
  average = (product.to_f / number_entries)
  formatted_average = format('%.3f', average)
  puts "The result is #{formatted_average}"
end



# Examples:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667