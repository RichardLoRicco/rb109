# Build a program that asks a user for the length and width of a room in meters and then displays the area
# of the room in both square meters and square feet.

# Note: 1 square meter == 10.7639 square feet

# Do not worry about validating the input at this time.

# inputs:
#   1. length (integer)
#   2. width (integer)
# output: 2 floats using string interpolation
# rules:
# - calculate the area of the room in both square meters and square feet
# - 1 square meter == 10.7639 square feet
# - use string interpolation to output

# algorithm:
# create constant to store conversion from meter to square feet
# ask for length in meters
#   -> store as length
# ask for width in meters
#   -> store as width
# calculate area in meters -> save as area_meters
# calculate area in square feet -> safe as area_square_feet

SQUARE_METERS_TO_SQUARE_FEET = 10.7639

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

area_meters = (length * width).round(2)
area_square_feet = area_meters * SQUARE_METERS_TO_SQUARE_FEET.round(2)

puts "The area of the room is #{area_meters} square meters (#{area_square_feet} square feet)."


# Example Run
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).


# Further Exploration:
# Modify this program to ask for the input measurements in feet, 
# and display the results in square feet, square inches, and square centimeters.


SQUARE_FEET_TO_SQUARE_INCHES = 144
SQUARE_FEET_TO_SQUARE_CENTIMETERS = 929.03

puts "Enter the length of the room in feet:"
length = gets.chomp.to_f

puts "Enter the width of the room in feet:"
width = gets.chomp.to_f

area_square_feet = (length * width).round(2)
area_square_inches = (area_square_feet * SQUARE_FEET_TO_SQUARE_INCHES).round(2)
area_square_centimeters = (area_square_feet * SQUARE_FEET_TO_SQUARE_CENTIMETERS).round(2)

puts "The area of the room is #{area_square_feet} square feet."
puts "This is #{area_square_inches} square inches and #{area_square_centimeters} square centimeters."