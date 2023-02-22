=begin

input: an integer
return: the sum of all the multiples of 3 or 5 below the input number
  - return 0 if input number is negative
  - consists of an integer
rules:
  - if a number is a multiple of both 3 and 5, only count it once
  
----

algorithm:
initialize sum to 0

if n is less than 0, return 0

from n down to 1, do the following for each num
  - if num is divisible by 3 or 5, add num to sum

return sum

=end

def solution(number)
  sum = 0
 
  return 0 if number < 0
   
  (number-1).downto(1) do |num|
   if (num % 3 == 0 || num % 5 == 0)
      sum += num
   end
  end
 
   sum
end

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168