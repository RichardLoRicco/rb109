# Write a method that counts the number of occurrences of each element in a given array.

# input: an array
# output: an integer
# rules:
# - method outputs the number of occurrences of each element in the input array

# Algorithm:
# define method count_occurrences that accepts 1 parameter, arr
# - initialize an empty hash, hsh
# - iterate over the elements in arr and:
#   - check if element is a key in hash
#      1. if no, add element as key and 1 as value to hsh
#      2. if yes, increment value for given key by 1
# - output each element of hsh


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

def count_occurrences(arr)
  hsh = {}
  arr.each do |element|
    if hsh.has_key?(element)
      hsh[element] += 1
    else
      hsh[element] = 1
    end
  end
  
  hsh.each { |key, value| puts "#{key} => #{value}" }
end


count_occurrences(vehicles)



# Expected Output
# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2