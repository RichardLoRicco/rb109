=begin

A value is omnipresent if it exists in every subarray inside the main array.

To illustrate:

[[3, 4], [8, 3, 2], [3], [9, 3], [5, 3], [4, 3]]
# 3 exists in every element inside this array, so is omnipresent.

Create a function that determines whether an input value is omnipresent for a given array.

Notes:
Sub-arrays can be any length.

----

input: a nested array and an integer
return: true if the integer is present in every subarray of the input array, false if not
rules:
  - sub-arrays can be any length

algorithm:
- iterate over each sub_arr of arr and check if for all sub_arrs:
  - sub_arr includes int

=end

def is_omnipresent(arr, int)
  arr.all? { |sub_arr| sub_arr.include?(int)}
end



# Examples
p is_omnipresent([[1, 1], [1, 3], [5, 1], [6, 1]], 1) == true
p is_omnipresent([[1, 1], [1, 3], [5, 1], [6, 1]], 6) == false
p is_omnipresent([[5], [5], [5], [6, 5]], 5) == true
p is_omnipresent([[5], [5], [5], [6, 5]], 6) == false