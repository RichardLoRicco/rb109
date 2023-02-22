# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

=begin

input: an array of integers
return: the minimum sum of 5 consecutive numbers in the array
rules:
  - if the input array contains less than 5 elements, method should return nil

-----

algorithm:
- return nil if count of nums_arr is less than 5

# create a list of all sums
- initialize sums_arr to []
- initialize last_index to size of nums_arr - 1
- from 0..last_index - 4, do the following for each index_a
  - initialize subslice to subslice of nums_arr from index_a to index_a + 5
  - add sum of subslice (used #reduce) to sums_arr

# return minimum sum
- sort sums_arr and return the element at index 0


=end

def minimum_sum(nums_arr)
  return nil if nums_arr.size < 5

  sums_arr = []
  last_index = nums_arr.size - 1
  
  (0..last_index-4).each do |index_a|
    subslice = nums_arr[index_a..index_a + 4]
    sums_arr << subslice.reduce(:+)
  end
  sums_arr.sort[0]
end

# Examples:
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
# The tests above should print "true".