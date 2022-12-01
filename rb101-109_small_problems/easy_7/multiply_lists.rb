=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array 
that contains the product of each pair of numbers from the arguments that have the same index. 
You may assume that the arguments contain the same number of elements.

Examples:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

input: two arrays
- each contains a list of numbers
output: return a new array
- contains the product of each pair of numbers from the arguments that have the same index
rules:
- assume that the arguments contain the same number of elements

algorithm:
define multiply_list method that accepts 2 parameters, arr1 and arr2
  initialize arr_of_products to []
  iterate over arr1 with index and for each num:
    - multiply num by the element at position index of arr2 and add to arr_of_products
  implicitly return arr_of_products

=end

def multiply_list(arr1, arr2)
  arr_of_products = []
  arr1.each_with_index do |num, index|
    arr_of_products << num * arr2[index]
  end
  arr_of_products
end


# Test Cases:
p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]