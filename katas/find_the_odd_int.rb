=begin

input: an array of integers
return: the integer that appears in the input array an odd number of times
rules:
  - there will always only be one integer that appears an odd number of times
examples:
  - [7] => 7
  - [0] => 0
  - [1, 1, 2] => 2
  - [0, 1, 0, 1, 0] => 0
  - [1, 2, 2, 3, 3, 3, 4, 3, 3, 3, 2, 2, 1] => 4
  
----

algorithm:
- initialize unique_values to an array whose elements are unique values of input seq
- iterate over unique_values and select as the value that for that value:
  -> is present in seq an odd number of times (#count method)
  -> flatten the return value to convert from array to integer
  
=end

def find_it(seq)
  unique_values = seq.uniq
  unique_values.select { |value| seq.count(value).odd? }[0]
end


# FASTER ALTERNATIVE:
# def find_it(seq)
#   seq.detect { |element| seq.count(element).odd? }
# end

p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) == 5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10