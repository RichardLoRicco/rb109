=begin
The maximum sum subarray problem consists of finding the maximum sum of a contiguous subsequence in an array of integers.

Example:
max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6 #=> [4, -1, 2, 1]

The easy case is when the array is made up of only positive numbers and the maximum sum is the sum of the whole array. 
If the array is made up of negative numbers, return 0 instead. 

An empty array is considered to have zero greatest sum. Note that the empty array is also a valid subarray

----

input: an array of integers
  - could be empty
return: the maximum sum of a contiguous subsequence in the input array
  - if array is empty, return 0
  - if array is all negative numbers, return 0
rules:
  - an empty array is valid

----

algorithm:
- return 0 if arr is empty or if all of arr's elements are negativer

- initialize last_index to size of arr - 1
- initialize all_subsequences to []

# find all subsequences
- from 0 up to last_index, do the following for each index1
  - from index1 up to last_index, do the following for each index2:
    - add arr[index1..index2] to all_subsequences

# return largest sum
- initialize subsequence_sums to the following:
  - transform each subsequence in all_subsequences so that the elements are the sums of the subsequences
-> sort subsequence_sums and return last element


=end

def max_sequence(arr)
  return 0 if arr.empty? || arr.all? { |num| num < 0 }

  last_index = arr.size - 1
  all_subsequences = []

  0.upto(last_index) do |index1|
    index1.upto(last_index) do |index2|
      all_subsequences << arr[index1..index2]
    end
  end

  subsequence_sums = all_subsequences.map { |subsequence| subsequence.reduce(:+) }
  subsequence_sums.sort[-1]
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12
