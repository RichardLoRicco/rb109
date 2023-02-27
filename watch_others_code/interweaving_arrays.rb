=begin
Write a method that combines two Arrays passed in as arguments and returns a new Array that contains all
elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty and that they have the same number of elements.

----

input: two arrays, arr1 and arr2
return: a new array that contains all elements from both array arguments, with elements taken in alternation
rules:
  explicit:
    - assume that both input arrays are non-empty
    - assume that both input arrays have the same number of elements
  implicit:

----

algorithm:
- invoke the zip method on arr1 and pass in arr2
  -> flatten the resulting subarrays 


=end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end


p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, "a", 2, "b", 3, "c"]
