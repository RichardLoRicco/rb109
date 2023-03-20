# https://leetcode.com/problems/minimum-subsequence-in-non-increasing-order/

# 1403. Minimum Subsequence in Non-Increasing Order

# Given the array nums, obtain a subsequence of the array whose sum of elements is strictly greater than the sum of the non included elements in each subsequence. 

# If there are multiple solutions, return the subsequence with minimum size and if there still exist multiple solutions, return the subsequence with the maximum total sum
# of all its elements. 
# A subsequence of an array can be obtained by erasing some (possibly zero) elements from the array. 

# Note that the solution with the given constraints is guaranteed to be unique. Also return the answer sorted in non-increasing order.

=begin

input: an array of numbers
return: an array consisting of a subsequence of input array whose sum of elements is strictly greater than the sum of the non-included elements in each subsequence
rules:
  - if there are multiple solutions, return the subsquence with min size
    - if there still are multiple solutions, return subsequence with max total sum of all of its elements
  - a subsequence of an array can be obtained by erasing sum (possibly zero) elements from the array
  - returned array should be sorted in decreasing order
notes:
- look for all subsequences, if subsequence is greater than the rest of the array, add to subsequences array
- return smallest subsequence sorted by number of elements, but if there are multiple then return the subsequence with the largest sum

----

algorithm:
- initialize subsquences to []
- initialize last_index to size of nums - 1

- from 0 up to last_index, for each index1:
  - from index1 up to last_index, for each index2
    - initialize subseq to nums[index1..index2]
    - intialize remaining to remaining elements
    - if sum of subseq is greater than sum of remaining, add subseq to subsequences array
    TEST HERE
   
  - sort subsequences by size, and select the subsequences that have the same size as the smallest subsequence
    - if returned array only has one nested array, then return this element reverse sorted
      
    - otherwise, sort the elements by their sums and return the largest, with its elements reverse sorted
      


=end

def min_subsequence(nums)
  subsequences = []
  last_index = nums.size - 1

  0.upto(last_index) do |index1|
    index1.upto(last_index) do |index2|
      new_arr = nums.dup
      subseq = new_arr.slice!(index1..index2)
      remaining = new_arr
      subsequences << subseq if subseq.sum > remaining.sum
    end
  end
  sorted_subsequences = subsequences.sort_by { |subsequence| subsequence.size }
  smallest_subsequences = sorted_subsequences.select { |sorted_subsequence| sorted_subsequence.size == sorted_subsequences[0].size }

  if smallest_subsequences.size == 1
    smallest_subsequences.flatten
  else
    smallest_subsequences.sort_by do |subsequence| 
     subsequence.sum
    end[-1].sort { |a, b| b <=> a }
  end
end

p min_subsequence([4,3,10,9,8]) == [10, 9]
p min_subsequence([4,4,7,6,7]) == [7, 7, 6]


# TA solution
# def min_subsequence(nums)
#   sorted_arr = nums.sort {|a, b| b <=> a}
#   sorted_arr.each_with_index do |num, index|
#     left_side = sorted_arr[0..index]
#     right_side = sorted_arr[index+1..-1]
#     return left_side if left_side.sum > right_side.sum
#   end
# end