# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

=begin

input: an array of integers, numbers
return: an array whose elements denote how many numbers in the array are smaller than the number in that index position
        of the input array
rules:
  - if a given number occurs multiple times in the array, it should only be counted once
notes:
  - iterate over and transform numbers array based on count of numbers below number in a uniq_numbers array

----

algorithm:
- initialize uniq_numbers to array of unique values of numbers array
- iterate over numbers and transform each number as follows:
  - return the count of elements less than number in uniq_numbers

=end

def smaller_numbers_than_current(numbers)
  uniq_numbers = numbers.uniq
  numbers.map do |number|
    uniq_numbers.count { |num| num < number }
  end
end


# Examples:
p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]
# The tests above should print "true".