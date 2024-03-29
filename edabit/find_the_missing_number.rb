=begin

Create a function that takes an array of numbers between 1 and 10 (excluding one number) and returns the missing number.


Notes:
The array of numbers will be unsorted (not in order).
Only one number will be missing.

----

input: an array of numbers from 1 to 10, excluding one number
return: the missing number
rules:
  - array of numbers is unsorted
  - only one number is missing

----

algorithm:
- from 1 up to 10, for each num:
  - return num if arr doesn't include num

=end

def missing_num(arr)
  1.upto(10){ |num| return num if !arr.include?(num) }
end


# Examples
p missing_num([1, 2, 3, 4, 6, 7, 8, 9, 10]) == 5
p missing_num([7, 2, 3, 6, 5, 9, 1, 4, 8]) == 10
p missing_num([10, 5, 1, 2, 4, 6, 8, 3, 9]) == 7