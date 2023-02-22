=begin

Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars.

The hypotenuse of the triangle (the diagonal side in the images below) should have one end at the lower-left of the triangle, 
and the other end at the upper-right.

----

input: a positive integer, n
output: display a right triangle whose sides each have n stars
  -> puts
rules:
- the hypotenuse of the triangle (diagonal) shoudl have one end at the lower left of the triangle

----

algorithm:
define triangle method that accepts 1 parameter, n
  n times do the following for each num
    reassign num to 1 + num
    print n - num * " " + num * "*"


=end

def triangle(n)
  n.times do |num|
    num += 1
    puts " " * (n - num)  + ("*" * num )
  end
end


# Examples:
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