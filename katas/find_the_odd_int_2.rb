=begin

Given an array of integers, find the one that appears an odd number of times.

There will always be only one integer that appears an odd number of times.

Examples
[7] should return 7, because it occurs 1 time (which is odd).
[0] should return 0, because it occurs 1 time (which is odd).
[1,1,2] should return 2, because it occurs 1 time (which is odd).
[0,1,0,1,0] should return 0, because it occurs 3 times (which is odd).
[1,2,2,3,3,3,4,3,3,3,2,2,1] should return 4, because it appears 1 time (which is odd).

----

input: an array of integers
return: the integer that appears an odd number of times
rules:
  - there will always be only one integer that appears and odd number of times
  
---- 

algorithm:
- initialize seq_uniq to array of unique values of seq
- iterate over seq_uniq and for each num:
  - return num if seq's count of num is odd

=end

def find_it(seq)
  seq_uniq = seq.uniq
  seq_uniq.each { |num| return num if seq.count(num).odd? }
end


p find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5]) == 5
p find_it([1,1,2,-2,5,2,4,4,-1,-2,5]) == -1
p find_it([20,1,1,2,2,3,3,5,5,4,20,4,5]) ==  5
p find_it([10]) == 10
p find_it([1,1,1,1,1,1,10,1,1,1,1]) == 10