=begin

Given a list of integers and a single sum value, return the first two values (parse from the left please) in order
of appearance that add up to form the sum.

If there are two or more pairs with the required sum, the pair whose second element has the smallest index is the solution.

sum_pairs([11, 3, 7, 5],         10)
#              ^--^      3 + 7 = 10
== [3, 7]

sum_pairs([4, 3, 2, 3, 4],         6)
#          ^-----^         4 + 2 = 6, indices: 0, 2 *
#             ^-----^      3 + 3 = 6, indices: 1, 3
#                ^-----^   2 + 4 = 6, indices: 2, 4
#  * the correct answer is the pair whose second value has the smallest index
== [4, 2]

sum_pairs([0, 0, -2, 3], 2)
#  there are no pairs of values that can be added to produce 2.
== None/nil/undefined (Based on the language)

sum_pairs([10, 5, 2, 3, 7, 5],         10)
#              ^-----------^   5 + 5 = 10, indices: 1, 5
#                    ^--^      3 + 7 = 10, indices: 3, 4 *
#  * the correct answer is the pair whose second value has the smallest index
== [3, 7]
Negative numbers and duplicate numbers can and will appear.

NOTE: There will also be lists tested of lengths upwards of 10,000,000 elements. Be sure your code doesn't time out.

----

input: an array of integers; and a single sum value
return: the first two values in order of appearance that add up to for the sum
rules:
  - if there are two or more pairs with the required sum, the pair whose second element has the
    smallest index is the solution
  - negative numbers can and will appear
  - return nil if there are no pairs of values that can be added to produce the sum
  - must return a pair -> one number that equals the sum will not work
examples:
    - sum_pairs([11, 3, 7, 5], 10) => [3, 7]
    - sum_pairs([4, 3, 2, 3, 4], 6) => [4, 2]
    - sum_pairs([0, 0, -2, 3], 2) => nil
    - sum_pairs([10, 5, 2, 3, 7, 5], 10 => [3, 7] because 7 has a lower index than 5 for [5, 5]

----

algorithm:
# create an array of all pairs that satisfy the sum
- initialize sum_pairs to []
- initialize last_index to size of list - 1
- from 0 up to last_index - 1, do the following for each first_int
  - from index1 + 1 to last_index, do the following for each second_int
    - initialize pair to [list[first_int], list[second_int]]
    - add pair to sum_pairs if the sum of the elements of pair = sum

# sort the sum_pairs by the index of the second element in list
- sort sum_pairs by the following for each pair:
    - the second element's index in list
    -> return the first pair in the resulting nested array

=end

def sum_pairs(list, sum)
  sum_pairs = []
  last_index = list.size - 1

  0.upto(last_index - 1) do |first_int|
    (first_int + 1).upto(last_index) do |second_int|
      pair = [list[first_int], list[second_int]]
      sum_pairs << pair if pair.reduce(:+) == sum
    end
  end

  return nil if sum_pairs.empty?

  sum_pairs.sort_by { |pair| list.find_index(pair[1]) }[0]
end

l1 = [1, 4, 8, 7, 3, 15]
l2 = [1, -2, 3, 0, -6, 1]
l3 = [20, -13, 40]
l4 = [1, 2, 3, 4, 1, 0]
l5 = [10, 5, 2, 3, 7, 5]
l6 = [4, -2, 3, 3, 4]
l7 = [0, 2, 0]
l8 = [5, 9, 13, -3]

p sum_pairs(l1, 8) == [1, 7] # "Basic: ["+l1.join(", ")+"] should return [1, 7] for sum = 8")
p sum_pairs(l2, -6) == [0, -6] # "Negatives: ["+l2.join(", ")+"] should return [0, -6] for sum = -6")
p sum_pairs(l3, -7) == nil # "No Match: ["+l3.join(", ")+"] should return nil for sum = -7")
p sum_pairs(l4, 2) == [1, 1] # "First Match From Left: ["+l4.join(", ")+"] should return [1, 1] for sum = 2 ")
p sum_pairs(l5, 10) == [3, 7] # "First Match From Left REDUX!: ["+l5.join(", ")+"] should return [3, 7] for sum = 10 ")
p sum_pairs(l6, 8) == [4, 4] # "Duplicates: ["+l6.join(", ")+"] should return [4, 4] for sum = 8")
p sum_pairs(l7, 0) == [0, 0] # "Zeroes: ["+l7.join(", ")+"] should return [0, 0] for sum = 0")
p sum_pairs(l8, 10) == [13, -3] # "Subtraction: ["+l8.join(", ")+"] should return [13, -3] for sum = 10")