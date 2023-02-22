=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array 
that contains the product of each pair of numbers from the arguments that have the same index. 
You may assume that the arguments contain the same number of elements.

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

----

input: two array arguments, both containing a list of numbers
return: an array that contains the product of each pair of numbers from the arguments that have the same index
rules:
  - assume that the arguments contain the same number of elements

----

algorithm:
- initialize product_arr to []
- iterate over arr1 with index, and for each num and index:
  - initialize product to num * arr2[index]
  - add product to product_arr
- return product_arr

=end

def multiply_list(arr1, arr2)
  product_arr = []

  arr1.each_with_index do |num, index|
    product = num * arr2[index]
    product_arr << product
  end

  product_arr
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
=begin

Further Exploration
The Array#zip method can be used to produce an extremely compact solution to this method.
Read the documentation for zip, and see if you can come up with a one line solution (not counting the def and end lines).

---

algorithm:
- invoke the zip method on arr1 and pass in arr2 as an argument:
  - iterate over the nested array and transform each subarray as follows: 
    - invoke the reduce method to derive the product of the subarray's elements
  -> flatten the subarrays

=end

# def multiply_list(arr1, arr2)
#   arr1.zip(arr2).map { |subarray| subarray.reduce(:*) }.flatten
# end

# p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]