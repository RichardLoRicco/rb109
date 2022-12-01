=begin
Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array 
that contains the product of every pair of numbers that can be formed between the elements of the two Arrays. 
The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Examples:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]


input: two arrays
- each array contains a list of numbers
output: return a new array
- contains the product of every pair of numbrs that can be formed between the elements of the two arrays
rules:
- results should be sorted by increasing value

algorithm:
define multiply_all_pairs method that accepts 2 parameters, arr1 and arr 2
  initialize product_of_pairs to []
  iterate over arr1 and for each num1:
    - iterate over arr2 and for each num2:
      - add num1 * num2 to product_of_pairs
  implicitly return product_of_pairs sorted by increasing value

=end

def multiply_all_pairs(arr1, arr2)
  product_of_pairs = []
  arr1.each do |num1|
    arr2.each do |num2|
      product_of_pairs << num1 * num2
    end
  end
  product_of_pairs.sort
end


# Test Cases:
p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]