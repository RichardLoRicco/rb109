=begin

A triangle is classified as follows:
- right: One angle of the triangle is a right angle (90 degrees)
- acute:  All 3 angles of the triangle are less than 90 degrees
- obtuse: One angle is greater than 90 degrees.

To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0: 
if either of these conditions is not satisfied, the triangle is invalid.

Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol :right, :acute, :obtuse, or :invalid depending on 
whether the triangle is a right, acute, obtuse, or invalid triangle.

You may assume integer valued angles so you don't have to worry about floating point errors. 
You may also assume that the arguments are specified in degrees.

----

input: three integers -> three angles of a potential triangle (in degrees)
return: a symbol:
  - options are as follows:
    1. :acute -> all three angles less than 90 degrees
    2. :right -> one angle is a right angle (90 degrees)
    3. :obtuse -> one angle is greater than 90 degrees
    4. :invalid -> if sum of three angles is not 180
rules:
  - assume integer valued angles
  - assume that arguments are specified in degrees

----

algorithm:
define triangle method that accepts 3 parameters, angle1, angle2, and angle3
  - return :invalid if sum of three angles is not 180
  - return :acute if all angles are less than 90
  - return :right if one angle is 90
  - return :obtuse if one angle is greater than 90

=end

def triangle(angle1, angle2, angle3)
  sum = angle1 + angle2 + angle3
  return :invalid if sum != 180
  return :invalid if angle1 == 0 || angle2 == 0 || angle3 == 0
  return :acute if angle1 < 90 && angle2 < 90 && angle3 < 90
  return :right if angle1 == 90 || angle2 == 90 || angle3 == 90
  return :obtuse if angle1 > 90 || angle2 > 90 || angle3 > 90
end


# Examples:
p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid