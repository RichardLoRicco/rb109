=begin
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

inputs: 6 integers
outputs: output an integer and an array using string interpolation
rules:
- solicit 6 numbers from user
- print message describing whether or not 6th number appears amongst first 5 numbers

algorith:
initialize empty array `first_five_numbers`
ask for 1st number
- add to `first_five_numbers``
ask for 2nd number
- add to `first_five_numbers`
ask for 3rd number
- add to `first_five_numbers`
ask for 4th number
- add to `first_five_numbers`
ask for 5th number
- add to `first_five_numbers`
ask for last number
- assign to `last_number`
if `first_five_numbers` array includes `last_number`:
  output that it does
else
   output that it doesn't

=end

first_five_numbers = []

puts "Enter the 1st number:"
first_five_numbers << gets.chomp.to_i

puts "Enter the 2nd number:"
first_five_numbers << gets.chomp.to_i

puts "Enter the 3rd number:"
first_five_numbers << gets.chomp.to_i

puts "Enter the 4th number:"
first_five_numbers << gets.chomp.to_i

puts "Enter the 5th number:"
first_five_numbers << gets.chomp.to_i

puts "Enter the last number:"
last_number = gets.chomp.to_i

if first_five_numbers.include?(last_number)
  puts "The number #{last_number} appears in #{first_five_numbers}."
else
  puts "The number #{last_number} does not appear in #{first_five_numbers}."
end


# Examples:
# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 17
# The number 17 appears in [25, 15, 20, 17, 23].


# ==> Enter the 1st number:
# 25
# ==> Enter the 2nd number:
# 15
# ==> Enter the 3rd number:
# 20
# ==> Enter the 4th number:
# 17
# ==> Enter the 5th number:
# 23
# ==> Enter the last number:
# 18
# The number 18 does not appear in [25, 15, 20, 17, 23].