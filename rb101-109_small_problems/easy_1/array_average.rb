# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array. 
# The array will never be empty and the numbers will always be positive integers. 
# Your result should also be an integer.

# input: an array (containing integer elements)
# output: return integer (consisting of average of input array's integer elements)
# rules:
# - input array will never be empty
# - integer elements will always be positive numbers
# return value must be an integer

# algorithm:
# define average method that accepts 1 paramter arr
# - initialize sum variable and assign to it sum of elements of arr
# - divide sum by arr's size

def average(arr)
  sum = arr.reduce(:+)
  sum/arr.size
end

# Examples:
puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40
# The tests above should print true.



# Further Exploration:
# Currently, the return value of average is an Integer. 
# When dividing numbers, sometimes the quotient isn't a whole number, therefore, 
# it might make more sense to return a Float. Can you change the return value 
# of average from an Integer to a Float?

def average(arr)
  sum = arr.reduce(:+)
  sum.to_f/arr.size
end

puts average([1, 6]) == 3.5
