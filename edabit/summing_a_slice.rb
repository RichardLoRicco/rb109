=begin

Given an array and an integer n, return the sum of the first n numbers in the array.

Worked Example
sum_first_n_nums([9, 8, 7, 6], 3) ➞ 24
# The parameter n is specified as 3.
# The first 3 numbers in the list are 9, 8 and 7.
# The sum of these 3 numbers is 24 (9 + 8 + 7).
# Return the answer.
Notes
If n is larger than the length of the array, return the sum of the whole array.

----

input: an array and an integer n
return: the sum of the first n numbers in the array
rules:
  - if n is larger than the length of the array

----

algorithm:
- return sum of arr's elements if n >= size of arr
- initialize sum to 0
- n times do the following for each index:
    - add arr[index] to sum
- return sum

=end

def slice_sum(arr, n)
  return arr.reduce(:+) if n >= arr.size

  sum = 0
  n.times { |index| sum += arr[index] }
  sum
end

# Examples
p slice_sum([1, 3, 2], 2) == 4
p slice_sum([4, 2, 5, 7], 4) == 18
p slice_sum([3, 6, 2], 0) == 0