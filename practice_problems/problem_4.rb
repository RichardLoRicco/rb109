# Write a method that takes an array of integers and returns the# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

=begin

input: an array of integers
output: return the two numbers that are closest together in value
rules:
  - the numbers should be returned in the order in which they appears in the input array

----

algorithm:
1. iterate through arr to create nested array with combinations as subarrays
- initialize all_pairs to []
- initialize stop_index to size of arr - 1

- iterate through array with index and for each num and index1
  - iterate from index1 up to stop_index and for each index2
  -> add [arr[index1], arr[index2]] to all_pairs

- call the smallest_difference_pair method and pass in all_pairs as an argument

2. sort nested array by difference and return the subarray with the smallest difference
- sort the order of each pair in all_pairs by the difference between each pair's elements
  -> return the pair at index 0 of this sorted array

=end

def closest_numbers(arr)
  all_pairs = []
  stop_index = arr.size - 1

  arr.each_with_index do |_, index1|
    (index1 + 1).upto(stop_index) do |index2|
      all_pairs << [arr[index1], arr[index2]]
    end 
  end
  
  smallest_difference_pair(all_pairs)
end

def smallest_difference_pair(all_pairs)
  all_pairs.sort_by { |pair| pair.reduce(:-).abs }[0]
end

# Examples:
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
# The tests above should print "true".