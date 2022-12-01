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


input: an array 
output: the same array, but mutated so that it's elements are reversed
rules:
- the return value should be the same array object
- can't use Array#reverse or Array#reverse!

algorithm:
define method reverse! that accepts 1 parameter arr
- initialize variable reversed_arr and assign [] to it
- iterate through arr and for each element:
  - push that element to the front of reversed_arr

- initialize index variable and assign to 0
- iterate through arr each element and transform destructively as follows:
  - reassign element to the element at index position index of reversed_arr
  - increment index by 1
  - return element

=end

def reverse!(arr)
  reversed_arr = []
  arr.each do |element|
    reversed_arr.unshift(element)
  end
  
  index = 0
  arr.map! do |element|
    element = reversed_arr[index]
    index += 1
    element
  end
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