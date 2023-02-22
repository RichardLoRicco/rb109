# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

=begin

input: an array of integers
return: the minimum sum of 5 consecutive numbers in the array
  -> if array contains less than 5 elements, return nil instead

----

algorithm:
- initialize sum to nil
- initialize stop_index to size of arr - 1
- initialize start_index to 0
- inialize end_index to 4

- if length of arr < 5, return nil
  
- loop as follows:
    - if sum is nil, reassign sum to arr[start_index..end_index]
    - else if sum of elements arr[start_index..end_index] < sum, reassign sum to same
    - increment start_index by 1
    - increment end_index by 1
    - break if end_index > stop_index
- return sum

=end

def minimum_sum(arr)
  sum = nil
  stop_index = arr.size - 1
  start_index = 0
  end_index = 4

  return nil if arr.size < 5

  loop do
    if sum.nil?
      sum = arr[start_index..end_index].reduce(:+)
    else
      sum = arr[start_index..end_index].reduce(:+) if arr[start_index..end_index].reduce(:+) < sum
    end

    start_index += 1
    end_index += 1
    break if end_index > stop_index
  end

  sum
end

# Examples:
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10
# The tests above should print "true".