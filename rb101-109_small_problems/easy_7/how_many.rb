# Write a method that counts the number of occurrences of each element in a given array.

=begin

input: an array
output: the number of occurences of each element of the input array
  - print each key value pair in a hash

----

algorithm:
- initialize occurrences_hash to empty hash
- iterate over arr and for each element:
  - increment element's value in occurrences_hash by 1
- iterate over occurrences_hash and for each key and value:
  - output key => value (using puts)

=end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  occurrences_hash = Hash.new(0)

  arr.each { |element| occurrences_hash[element] += 1 }

  occurrences_hash.each { |element, count| puts element + " => " + count.to_s }
end


count_occurrences(vehicles)

# Expected Output
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2