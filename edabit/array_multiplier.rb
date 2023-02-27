=begin

Create a function that takes an array as an argument and returns a new nested array for each element in the original array. 

The nested array must be filled with the corresponding element (string or number) in the original array and each nested array 
has the same amount of elements as the original array.

Notes:
The given array contains numbers or strings.

----

input: an array
return: a new nested array for each element in the original array
rules:
  - the nested array must be filled with the corresponding element (string of number) in the original array and
    each nested array has the same amount of elements as the original array

----

algorithm:
- initialize size_of_nested_arrs to size of arr
- iterate through arr and transform each element as follows:
  - initialize sub_array to []
  - size_of_nested_arrs times do the following:
      - add element to subarray
  - return subarray


=end

def multiply(arr)
  size_of_nested_arrs = arr.size

  arr.map do |element|
    sub_array = []
    size_of_nested_arrs.times { sub_array << element }
    sub_array
  end
end

# Examples
p multiply([4, 5]) == [[4, 4], [5, 5]]
p multiply(["*", "%", "$"]) == [["*", "*", "*"], ["%", "%", "%"], ["$", "$", "$"]]
p multiply(["A", "B", "C", "D", "E"]) == [["A", "A", "A", "A", "A"], ["B", "B", "B", "B", "B"], ["C", "C", "C", "C", "C"],
                                        ["D", "D", "D", "D", "D"], ["E", "E", "E", "E", "E"]]