=begin
Find all pairs

You are given array of integers, your task will be to count all pairs in that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is between 0 and 1000

Examples:
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)

----

input: array of integers
return: the count of all pairs in the input array
rules:
  - return 0 if input array is empty or only one value
  - if there are more pairs of a certain number, count each pair only once

algorithm:
- initialize pair_count to 0
- initialize uniq_integers to array of unique values of integers array
- iterate over uniq_integers and for each uniq_int:
  - add the count of uniq_int in integers / 2 to pair_count
- return pair_count

=end

def pairs(integers)
  pair_count = 0
  uniq_integers = integers.uniq
  uniq_integers.each do |uniq_int|
    pair_count += integers.count(uniq_int) / 2
  end
  pair_count
end


p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
