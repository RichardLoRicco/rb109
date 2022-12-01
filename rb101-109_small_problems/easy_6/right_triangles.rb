=begin

Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars.

The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, 
and the other end at the upper-right.

Examples:
triangle(5)

    *
   **
  ***
 ****
*****


triangle(9)

        *
       **
      ***
     ****
    *****
   ******
  *******
 ********
*********

------------------------------------

input: a positive integer
output: string concatenation
rules:
- take a positive integer, n, as an argument, and display a right triangle whose sides each have n stars.
- The hypotenuse of the triangle should have one end at the lower-left of the triangle, and the other end at the upper-right.

algorithm:
define triangle method that accepts 1 parameter n
  spaces = n - 1
  stars = 1
  n times do the following:
    - output: spaces * " " + stars * "*"
    - subtract 1 from spaces
    - add 1 to stars

=end

def triangle(num)
  spaces = num - 1
  stars = 1
  num.times do |n|
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 1
  end
end


# Test Cases:
triangle(5)

#     *
#    **
#   ***
#  ****
# *****


triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********
