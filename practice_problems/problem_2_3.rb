# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

=begin

input: an array of integers
return: the minimum sum of 5 consecutive numbers in input array
rules:
  - if array contains less than 5 elements, return nil
  - input array can contain negative integers
notes:
  - create array of all possible sums, then sort and return sum at index 0

----

algorithm:
- return nil if size of integes < 5
- initialize last_index to size of integers - 1
- initialize sums to []

- from 0 up to last_index-4, do the following for each index1
  - initalize slice to integers[index1, 5]
  - add sum of slice's elements to sums array
- sort sums array
  -> return sum at index 0


=end

def minimum_sum(integers)
  return nil if integers.size < 5
  last_index = integers.size - 1
  sums = []

  0.upto(last_index-4) do |index1|
    slice = integers[index1, 5]
    sums << slice.reduce(:+)
  end

  sums.sort[0]
end


# Examples:
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
# The tests above should print "true".