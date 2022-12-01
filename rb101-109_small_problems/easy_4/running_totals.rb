=begin

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 
and each element has the running total from the original Array.

Examples:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

input: an array of integers
output: an array of integers
rules:
- return an array with the same number of elements as input array, but
each element has the running total from the original array

algorithm:
define running_total method that accepts 1 parameter arr
initialize sum variable and assign to it 0
iterate over arr, transforming each num as follows:
  - add each num to sum

=end

def running_total(arr)
  sum = 0

  arr.map { |num| sum += num }
end


# Test cases
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

=begin

Further Exploration
Try solving this problem using Enumerable#each_with_object or Enumerable#inject 
(note that Enumerable methods can be applied to Arrays).

algorithm:
define running_total method that accepts 1 parameter arr
- initialize a local variable sum to 0
- iterate over arr with [] and for each num:
  - add num to sum
  - add sum to []

=end

def running_total(arr)
  sum = 0
  arr.each_with_object([]) do |num, sum_arr|
    sum += num
    sum_arr << sum
  end
end


# Test cases
p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []