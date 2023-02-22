=begin
Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an
 argument to the method. You may assume that the argument will always be an odd integer.

 input: an odd integer, n
 output: print a 4 pointed diamond in an n by n grid
 rules
 - assume that the argument will always be an odd integer.
 - height and width of diamond will be n
 - width of diamond for given row (i.e., number of stars) will be max width (i.e., n) - (2 * distance from center)
 - width of spaces for given row will be distance from center

 algorithm:
 # print a single row of the diamond
 define print_row method that accepts 2 parameters, grid_size and distance_from_center
  initialize number_of_stars = grid size - 2 * distance_from_center
  inialize stars = '*' x number_of_stars
  output stars centered to grid_size

 # iterate through the rows
 define diamond method that accepts 1 parameter grid_size
  initialize max_distance = (grid_size - 1) / 2
  from max_distance down to 0, do the following for each distance:
    - invoke the print_row method and pass in grid_size and distance as arguments
  from 1 up to max_distance, do the following for each distance:
    - invoke the print_row method and pass in grid_size and distance as arguments


=end

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end

# Test Cases:
diamond(1)
# *

diamond(3)
#  *
# ***
#  *

diamond(9)
#     *
#    ***
#   *****
#  *******
# *********
#  *******
#   *****
#    ***