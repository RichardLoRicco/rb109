=begin

input: two arrays (array1 and array2)
return: true if the two input arrays have the same elements with the same "multiplicities"
rules:
  - same means that the elements in array2 are the elements in array1 squared, regardless of the order
  - multiplicities -> the multiplicity of a member is the number of times it appears
  
----

algorithm:
- return false if array1 or array2 is nil

- iterate over the elements of array2, and check whether the following is true for ALL elements:
  - array1 includes a square root of said element in array2

=end


def comp(array1, array2)
  return false if array1.nil? || array2.nil?
  
  array1.map { |num| num**2 }.sort == array2.sort
end

p comp( [121, 144, 19, 161, 19, 144, 19, 11], 
  [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true