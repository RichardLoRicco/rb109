=begin

Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array 
passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

Examples:
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

Note: for the test case list = ['abc'], we want to reverse the elements in the array. 
The array only has one element, a String, but we're not reversing the String itself, so the reverse! method call should return ['abc'].

----

input: an array
return: the input aray with its elements reversed in place
rules:
  - can't use Array#reverse or Array#reverse!
  - must mutate the array passed in as an argument

----

algorithm:
- initialize index to 0
- inialize reverse_index to -1

- until index > (length of arr - 1) / 2 , do the following:
  - swap arr[index] and arr[reverse_index]
  - increment index by 1
  - increment reverse_index - 1

- return arr
=end

def reverse!(arr)
  index = 0
  reverse_index = -1

  until index > (arr.length - 1) / 2
    arr[index], arr[reverse_index] = arr[reverse_index], arr[index]
    index += 1
    reverse_index -= 1
  end

  arr
end



# Test Cases
list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true