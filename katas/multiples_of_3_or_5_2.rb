=begin

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.

Note: If the number is a multiple of both 3 and 5, only count it once.

----

input: an integer
return: the sum of all multiples of 3 or 5 below num
  - appears to be an integer
rules:
  - if number is a multiple of both 3 and 5, only count it once

----

algorithm:
- initialize multiples_sum to 0
- from 0 up to int-1, do the following for each num:
  - add num to multiples_sum if num is a multiple of 3 or 5
- return multiples_sum

=end

def solution(int)
  multiples_sum = 0
  0.upto(int-1) do |num|
    multiples_sum += num if num % 3 == 0 || num % 5 == 0
  end
  multiples_sum
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168