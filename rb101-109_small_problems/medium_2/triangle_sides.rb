=begin

A triangle is classified as follows:
- equilateral All 3 sides are of equal length
- isosceles 2 sides are of equal length, while the 3rd is different
- scalene All 3 sides are of different length

To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than
 the length of the longest side, and all sides must have lengths greater than 0: if either of
 these conditions is not satisfied, the triangle is invalid.

Write a method that takes the lengths of the 3 sides of a triangle as arguments, and 
returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the 
triangle is equilateral, isosceles, scalene, or invalid.

----

input: 3 numbers (can be integers or floating point numbers)
  - these represent the 3 sides of a triangle
output: return a symbol:
  - :equilateral if all 3 sides are of equal length
  - :isosceles if 2 sides of are equal length while the 3rh is different
  - :scalene if all 3 sides are of different length
  - :invalid if can't be a triangle:
    -> either the sum of the lengths of the 2 shortest sides aren't greater than the length of the longest side, or
    -> all sides don't have a length greater than 0

----

algorithm:
define triangle method that accepts 3 parameters, side1, side2, and side3
  - initialize sides to an array and add side1, side2, and side3 to said array
  - sort sides array (from smallest to largest)

  - return :invalid if the first element of array plus the second element of array are not greater than the last element of array
  - return :invalid if any element of array is less than 0

  - return :equilateral if all elements of array are equal to each other

  - return :isosceles if first element of array is equal to second or if second is equal to third

  - return :scalene

=end

def triangle(side1, side2, side3)
  array = [side1.to_f, side2.to_f, side3.to_f].sort
  
  return :invalid if array[0] + array[1] <= array [-1]
  return :invalid if array[0] < 0 || array[1] < 0 || array[-1] < 0

  return :equilateral if array[0] == array[1] && array[1] == array[-1]

  return :isosceles if array[0] == array[1] || array[1] == array[-1]

  return :scalene
end



# Examples:
p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
