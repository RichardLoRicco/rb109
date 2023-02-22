=begin

Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

----

input: nothing
output: print all even numbers from 1 to 99 inclusive, with each number on a separate line

----

algorithm:
from 1 up to 99, do the following for each num
  print num on a new line 

=end

1.upto(99) { |num| puts num if num.even?}