=begin

Create a function that takes an array of numbers and returns the second largest number.

Notes:
There will be at least two numbers in the array.

----

input: an array of numbers
return: the second largest number
rules:
  - there will be at least two numbers in the array
----

algorithm:
- sort numbers and return second to last index position

=end

def secondLargest(numbers)
  numbers.sort[-2]
end


# Examples
p secondLargest([10, 40, 30, 20, 50]) == 40
p secondLargest([25, 143, 89, 13, 105]) == 105
p secondLargest([54, 23, 11, 17, 10]) == 23