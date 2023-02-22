=begin

input: an array of integers and a signel sum value
return: the first two values in the input array that add up to form the sum
  - return the values in an array
rules:
  - if there are 2 or more pairs with the required sum, the pair whose second element has the
    smallest index is the solution
examples:
  - [11, 3, 7, 5] & 10 => [3, 7]

----

algorithm:
- initialize empty array all_sum_pairs
- initialize last_index to size of ints array - 1

- iterate through ints with index and for each num and index:
  - initialize index2 to index + 1
  loop as follows:
  - initialize pair to [num, ind[index2]]
  - add pair to all_sum_pairs if sum of the elements of pair equal sum
  - increment index2 by 1
  - break if index2 > last_index
  
  - sort all_sum_pairs by the index of the second character
    -> return the subarray at index position 0 of the sorted nested array
=end

def sum_pairs(ints, s)
  all_sum_pairs = []
  last_index = ints.size - 1
  
  ints.each_with_index do |num, index|
    index2 = index + 1
    loop do
      break if index2 > last_index
      pair = [num, ints[index2]]
      all_sum_pairs << pair if pair.reduce(:+) == s
      index2 += 1
    end
    all_sum_pairs.sort_by { |subarray| ints.index(subarray[1]) }[0]
  end
end

p sum_pairs([1, 4, 8, 7, 3, 15], 8) #== [1, 7]