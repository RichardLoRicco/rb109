=begin

This Triangular Number Sequence is generated from a pattern of dots that form a triangle. 

The first 5 numbers of the sequence, or dots, are:
1, 3, 6, 10, 15
This means that the first triangle has just one dot, the second one has three dots, the third one has 6 dots and so on.

Write a function that returns the number of dots when given its corresponding triangle number of the sequence.

----

input: a number, denoting the number of a sequence
return: the number of dots
rules:
  - the dots of the sequence must be able to form a triangle
  - dots in triangle = num*(num+1)/2

=end

def triangle(num)
  num * (num + 1) / 2
end



# Examples
p triangle(1) == 1
p triangle(6) == 21
p triangle(215) == 23220