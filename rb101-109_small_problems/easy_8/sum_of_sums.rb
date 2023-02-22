=begin

Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array. 
You may assume that the Array always contains at least one number.

----

input: an array of numbers
output: return the sum of sums of the leading subsequence for that array
rules:
- assyme that the array always contains at least one number

----

algorithm:
define sum_of_sums method that accepts 1 parameter arr
  initialize running_sum to 0

  iterate through arr and transform each num as follows:
    - add num to running_sum
      -> will implicitly return running_sum
  -> sum the resulting array (using reduce(:+))

=end

def sum_of_sums(arr)
  running_sum = 0

  arr.map { |num| running_sum += num }.reduce(:+)
end


# Examples:
p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35