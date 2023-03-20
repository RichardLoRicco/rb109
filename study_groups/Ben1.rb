=begin 

# An array of integers is a SPIRAL if the integers increase to a max value,
# and then decrease down from there. Write a method that returns true if an
# array is a spiral, else return false.

=begin

input: an array of integers
return: true if input array is a spiral, false otherwise (i.e., return a boolean)
rules:
  - an array of integers is a spiral if the integers increase to a max value, the decrease from there.
  - input array doesn't need to mirror itself
  - can't be two of the max value (must be only one max value)
notes:
  - want to check that integers increase, then peak, then decrease
  - take index of the max value, then make sure elements increase up to it's index, and decrease after it's index

-----

return false if there are more than 1 of the max value
  -> find max value then check count in input array

- initialize last_index to size of integers - 1
- initialize max_value_index to index of the max value in integers array
- initialize first_half to slice of integers from 0...max_value
- initialize second_half to slice of integers from max_value + 1..last_index

- iterate over each element with index of first_half array, and for all elements and indexes do the following: (all?)
    - if index is not last index of first_half:
      - check that first_half[index + 1] is greater than element
    - else:
      - true

  -> IF THIS RETURNS FALSE, RETURN FALSE
- iterate over each element with index of second_half array, and for all elements and indexes do the following: (#all?)
    - if index is not last index of first_half:
      - check that first_half[index + 1] is less than element
    - else:
      - true
  -> IF THIS RETURNS FALSE, RETURN FALSE

- return true


=end

def spiral(integers)
  return false if integers.count(integers.max) != 1
  
  last_index = integers.size - 1
  max_value_index = integers.find_index(integers.max)

  first_half = integers[0..max_value_index]
  second_half = integers[max_value_index..last_index]

  return false if !first_half.each_with_index.all? do |int, index|
    if index != first_half.size - 1
      first_half[index + 1] > int
    else
      true
    end
  end

  return false if !second_half.each_with_index.all? do |int, index|
    if index != second_half.size - 1
      second_half[index + 1] < int
    else
      true
    end
  end

  true

end

#

# def spiral(integers)
#   return false if integers.count(integers.max) != 1
  
#   last_index = integers.size - 1
#   max_value_index = integers.find_index(integers.max)

#   first_half = integers[0..max_value_index]
#   second_half = integers[max_value_index..last_index]

#   first_half.sort == first_half && second_half.sort.reverse == second_half

end


p "-------sprial tests"
p spiral([1,2,3,2,1]) == true
p spiral([1,2,4,6,4,2,1]) == true
p spiral([0,3,5,4,3,2,1]) == true
p spiral([1,2,4,6,4,2,4]) == false
p spiral([1,5,4,6,4,2,4]) == false
p spiral([0,3,5,5,4,3,2,1]) == false


