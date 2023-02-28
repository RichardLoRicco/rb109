=begin

There is an array with some numbers. All numbers are equal except for one. Try to find it!

find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55
It’s guaranteed that array contains at least 3 numbers.

The tests contain some very huge arrays, so think about performance.

----

input: an array of integers
return: find the one integer that isn't equal to the rest
rules:
  - all numbers are equal except for one
  - array is guaranteed to contain at least 3 numbers

----

algorithm:
- initialize uniq_numbers to array of unique values of numbers array
- sort uniq numbers by count in numbers array and:
  -> return the first index position

=end


def find_uniq(numbers)
  uniq_numbers = numbers.uniq
  uniq_numbers.sort_by { |num| numbers.count(num) }[0]
end


p find_uniq([1,1,1,1,0]) == 0
p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55