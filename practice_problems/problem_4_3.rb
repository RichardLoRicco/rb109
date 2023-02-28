# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

=begin

input: an array of integers
return: the 2 numbers that are closest together in value
rules:
  - the numbers don't have to be consecutive in the input array
  - first number can be greater than, equal to, or less than the second number
    -> what matters is that the are the closest to each other, not which is greater than the other

----

algorithm:
- initialize closest_pair to first to numbers of integers
- initialize smallest_difference to the difference between larger of closest_pair's elements and the smaller element
- intialize last_index to size of integers - 1

- from 0 up to last_index-1, do the following for each index1:
  - from (index1 + 1) up to last_index, do the following for each index2
    - initialize pair to [integers[index1], integers[index2]]
    - initialize difference to difference between larger of pair's elements and the smaller element
    - if difference < smallest_difference:
        - reassign smallest_difference to difference
        - reassign closest_pair to pair
- return closest_pair


=end

def closest_numbers(integers)
  closest_pair = [integers[0], integers[1]]
  smallest_difference = closest_pair.sort[1] - closest_pair.sort[0]
  last_index = integers.size - 1

  0.upto(last_index-1) do |index1|
    (index1+1).upto(last_index) do |index2|
      pair = [integers[index1], integers[index2]]
      difference = pair.sort[1] - pair.sort[0]
      if difference < smallest_difference
        smallest_difference = difference
        closest_pair = pair
      end
    end
  end

  closest_pair
end

# Examples:
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
# The tests above should print "true".