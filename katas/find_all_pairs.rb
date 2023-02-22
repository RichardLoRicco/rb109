=begin

input: an array of integers
return: return the count of all pairs in the array
rules:
  - array can be empty or contain only one value: if so, return 0
  - if there are more pairs of a certain number, count each pair only once
    -> e.g.: [0 0 0 0] => 2 (2 pairs of 0s)
  - max array length is 1000, range of values in the array is between 0 and 100
examples:
  - [0 0 0 0] => 2
  - [1, 2, 5, 6, 5, 1] => 2
  - [1, 2, 2, 20, 6, 20, 2, 6, 2] => 4
  
----

algorithm:
- initialize pairs_counter to 0
- iterate over each unique number of arr and for each num do the following:
  - initialize num_count to the number of times num is present in arr
  - increment pairs_counter by num_count/2
- return pairs_counter

=end



def pairs(arr)
  pairs_counter = 0
  
  arr.uniq.each do |num|
    num_count = arr.count(num)
    pairs_counter += num_count / 2
  end
  
  pairs_counter
end