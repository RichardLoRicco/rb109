=begin

input: a string of digits
return: the greatest product of five consecutive digits in the input string of digits
rules:
  - input string always has more than 5 digits
  
----

algorithm:
initialize 5_digit_array to empty array
initialize last_index to size of n - 1

split n into an array of string chars and iterate over it with index so that for each char and
index we do the following:
  - add an array slice from index to index + 5 to 5_digit_array if index + 5 is less than 
    or equal to last_index

iterate over each subarray in 5_digit_array and transform each subarray as follows:
  - convert each element into an integer and multiply all of the integers together
-> then return the highest sum

=end

def greatest_product(n)
  array = n.split("")
  five_digit_array = []
  last_index = n.size - 1
  
  array.each_with_index do |digit, index|
    if index + 4 <= last_index
      five_digit_array << array[index..index + 4]
    end
  end
  five_digit_array.map do |subarray|
    subarray.map { |digit| digit.to_i }.reduce(:*)
  end.max
end

p greatest_product("123834539327238239583") == 3240