# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

=begin

input: an array of integers
return: the two numbers that are closest together in value

----

algorithm:
# create array containing all pairs of numbers
- initialize last_index to size of arr_ints - 1
- initialize all_pairs to []

- from 0 up to last_index - 1, do the following for each index1
  - from index1 + 1 to last_index, do the following or each index2
    - add [arr[index1], arr[index2]] to all_pairs

# find difference between each pair and return pair with smallest difference
- iterate over all_pairs and sort based on each pair as follows:
    - return difference of largest - smallest element in pair
    -> sort by this difference
-> return element at index 0 flattened


=end

def closest_numbers(arr_ints)
  last_index = arr_ints.size - 1
  all_pairs = []

  0.upto(last_index - 1) do |index1|
    (index1 + 1).upto(last_index) do |index2|
      all_pairs << [arr_ints[index1], arr_ints[index2]]
    end
  end

  all_pairs.sort_by do |pair|
    difference = pair.max - pair.min
  end[0]
end


# Examples:
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
# The tests above should print "true".