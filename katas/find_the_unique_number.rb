=begin

input: an array of numbers (not necessarily integers)
  - all numbers are equal except for one
return: the uniq number in the input array
rules:
  - guaranteed that input array contains at least 3 numbers
  - think about performance (NA)

----

algorithm:
iterate through each element of arr and return the first element:
  - whose count is 1

=end

def find_uniq(arr)
  arr.detect { |element| arr.count(element) == 1 }
end

p find_uniq([1,1,1,1,0]) == 0
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55