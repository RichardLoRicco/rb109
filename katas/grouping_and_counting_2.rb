=begin

Your goal is to write the group_and_count method, which should receive an array as a unique parameter and return a hash. 
Empty or nil input must return nil instead of a hash. This hash returned must contain as keys the unique values of the 
array, and as values the counting of each value.

Example usage:
input = [1,1,2,2,2,3]
group_and_count(input)# == {1=>2, 2=>3, 3=>1}

The following methods were disabled:
Array#count
Array#length

----

input: an array
return: a hash whos keys are the unique values of the array and whose values are the count of each value
  - if input array is empty or input is nil, return nil
rules:
  - can't use Array#count method
  - can't use Array#length method
notes:
  - I want to iterate over each element of the input array and increment a hash key's value for each occurrence

----

algorithm:
- return nil if arr is empty or nil
- initialize hsh to empty Hash
- iterate over each element of arr, and for each element do the following:
    - increment hsh[element] by 1
- return hsh


=end

def group_and_count(arr)
  return nil if arr.nil? || arr.empty?
  hsh = Hash.new(0)
  arr.each { |element| hsh[element] +=1 }
  hsh
end

p group_and_count([1,1,2,2,2,3]) == {1=>2, 2=>3, 3=>1}
p group_and_count([]) == nil
p group_and_count(nil) == nil
p group_and_count([1, 7, 5, -1]) == {1=>1, 7=>1, 5=>1, -1=>1}
