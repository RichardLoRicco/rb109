=begin
Write a function that converts a hash into an array, where each element represents a key-value pair in the form of an array.

----

input: a hash
return: an array, where each element represents a key-value pair in the form of an array
  - essentially return a nested array with each subarray being an key-value pair

----

algorithm:
- convert hsh to array (using #to_a method)

=end

def convert_to_array(hsh)
  hsh.to_a
end

# Examples
p convert_to_array({ "a" => 1, "b" => 2 }) == [["a", 1], ["b", 2]]
p convert_to_array({ "shrimp" => 15, "tots" => 12 }) == [["shrimp", 15], ["tots", 12]]
p convert_to_array({}) == []