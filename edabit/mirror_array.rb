=begin

Given an integer array, transform it into a mirror.

Notes:
Do not repeat the last item of the given array.

----

input: an array of integers
return: an array of integers which is a mirror of the input array
  -> basically, include the integers in the input array and then reverse them (but don't include the last element twice)
rules:
  - don't repeat the last item of the input array

----

algorithm:
- add nums[0..-1] to (nums[0..-2] reversed)

=end

def mirror(nums)
  nums + nums[0...-1].reverse
end


# Examples
p mirror([0, 2, 4, 6]) == [0, 2, 4, 6, 4, 2, 0]
p mirror([1, 2, 3, 4, 5]) == [1, 2, 3, 4, 5, 4, 3, 2, 1]
p mirror([3, 5, 6, 7, 8]) == [3, 5, 6, 7, 8, 7, 6, 5, 3]