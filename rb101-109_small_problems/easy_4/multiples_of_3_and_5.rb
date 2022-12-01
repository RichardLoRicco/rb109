=begin

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then
computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

Examples
multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

inputs: an integer
outputs: returns an integer
rules:
- search for all multiples of 3 or 5 that lie between 1 and the input integer
- compute the sum of those multiples
- assume that the number passed in is an integer greater than 1

algorithm:
define multisum method that accepts 1 parameter int
- initialize variable sum and set to 0
- iterate through 1 to int and:
  - if int is divisible by 3 or 5, add to sum
- return sum 

=end


def multisum(int)
  sum = 0
  (1..int).to_a.each do |num|
    if (num % 3 == 0) || (num % 5 == 0)
      sum += num
    end
  end
  sum
end


# Test Cases:
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168


=begin
Further Exploration
Investigate Enumerable.inject (also known as Enumerable.reduce), How might this method be useful in solving this problem? 
(Note that Enumerable methods are available when working with Arrays.) Try writing such a solution. 
Which is clearer? Which is more succinct?

=end

def multisum(int)
  int_arr = (1..int).to_a
  multiples_arr = int_arr.select do |num|
    num % 3 == 0 || num % 5 == 0
  end
  multiples_arr.reduce(:+)
end

# Test Cases
p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168