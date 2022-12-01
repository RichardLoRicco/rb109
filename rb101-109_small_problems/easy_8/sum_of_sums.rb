=begin

Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.

Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35


input: an array
- consisting of numbers
output: an integer
- consisting of the sum of sums of each leading subsequence for the input array
rules:
- assume that the input array always contains at least 1 number

algorithm:
define sum_of_sums method that accepts 1 parameter arr_of_nums
  initialize sum variable to 0
  initialize length variable to 1
  loop as follows:
    add the elements of a slice of arr_of_nums from index 0 to length length to sum
    increment length by 1
    break out of the loop if length is greater than the size of arr_of_nums
  implicitly return sum

=end

def sum_of_sums(arr_of_nums)
  sum = 0
  length = 1
  loop do
    sum += arr_of_nums[0, length].reduce(:+)
    length += 1
    break if length > arr_of_nums.size
  end
  sum
end




# Test Cases:
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35