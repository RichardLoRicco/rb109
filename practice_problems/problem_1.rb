# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

=begin

input: an array of numbers
  - integers
return: return an array of numbers
  -> for each number in input array, find out how many numbers in the array are smaller than it
  -> *think the map method here
rules:
  - when counting numbers, only count unique values
    -> i.e., if a given number occurs multiple times in the array, it should only be counted once.

----

algorithm:
initialize arr_unique to new array consisting only of unique elements of arr

iterate over arr, transforming each num as follows:
  - return the number of elements in arr_uniq that is less than num
    -> 

=end

def smaller_numbers_than_current(arr)
  arr_unique = arr.uniq

  arr.map do |num|
    arr_unique.count { |n| n < num }
  end
end

# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".