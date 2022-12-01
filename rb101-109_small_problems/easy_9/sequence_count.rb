=begin

Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number of a sequence 
that your method will create. The method should return an Array that contains the same number of elements as the count argument, while 
the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater, while the starting number can be any integer value. 
If the count is 0, an empty list should be returned.

Examples:
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []


input: two integers
- first argument is a count
- second argument is the first number of a sequence that the method will create
output: an array
- contains the same number of elements as the count argument
- values of each element will be multiples of the starting number
rules:
- assume that the count argument will always have a value of 0 or greater
- starting number can be any integer value
- if count is 0, empty list should be returned

algorithm:
define sequence method that accepts 2 parameters, count and starting_number
  initialize arr to []
  initialize running_total to 0
  count times do the following:
    add starting_number to running_total
    add running_total to arr
  implicitly return arr

=end

def sequence(count, starting_number)
  arr = []
  running_total = 0

  count.times do
    running_total += starting_number
    arr << running_total
  end

  arr
end



# Test Cases:
p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []