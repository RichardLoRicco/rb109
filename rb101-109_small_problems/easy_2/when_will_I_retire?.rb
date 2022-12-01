# Build a program that displays when the user will retire and how many years she has to work till retirement.

# input:
# - age
# - desired retirement age
# output:
# - years to retirement
# - this year
# - retirement year

# algorithm
# ask age
# - save as current age
# ask desired retirement age
# - save as desired retirement age
# initialize current year and assign this year to it
# calculate years to retirement -> (desired retirement age - age)
# calculate retirement year -> years to retirement + current year
# output all of the above using string interpolation

puts "What is your age?"
current_age = gets.chomp.to_i

puts "At what age would you like to retire?"
desired_retirement_age = gets.chomp.to_i

current_year = Time.now.year
years_to_retirement = desired_retirement_age - current_age
retirement_year = years_to_retirement + current_year

puts "It's #{current_year}. You will retire in #{retirement_year}."
puts "You have only #{years_to_retirement} years of work to go!"




# Example:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!
