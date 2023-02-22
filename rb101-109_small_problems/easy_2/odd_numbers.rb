=begin

Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

----
input: nothing
output: print all odd numbers from 1 to 99, inclusive
rules:
  - each number should be on a separate line -> use puts

algorithm:
from 1 up to 99, output each num (on separate line) if num is odd

=end

1.upto(99) { |num| puts num if num.odd? }
