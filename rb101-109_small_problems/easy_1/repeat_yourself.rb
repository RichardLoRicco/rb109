=begin

Write a method that takes two arguments, a string and a positive integer, and prints 
the string as many times as the integer indicates.

Example:

repeat('Hello', 3)

Output:
Hello
Hello
Hello

-----

inputs: 2 arguments:
  1. a string
  2. a positive integer

output: print the string as many times as the integer indicates

algorithm:
define repeat method that accepts 2 parameters, string and pos_int
  - pos_int times, do the following:
    - output string (use puts method)

=end

def repeat(string, pos_int)
  pos_int.times { puts string }
end

repeat('Hello', 3)