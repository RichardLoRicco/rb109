# Build a program that randomly generates and prints Teddy's age. 
# To get the age, you should generate a random number between 20 and 200.

# input: nothing
# output: print a string
# rules:
# - randomly generate and print Teddy's age
# - age must be a random number between 20 and 200

# Algorithm:
# inialize variable age and assign to it a random number between 20 and 200
# output age using string interpolation

age = rand(20..200)
puts "Teddy is #{age} years old!"

# Example Output
# Teddy is 69 years old!




# Further exploration:
# Modify this program to ask for a name, and then print the age for that person.
# For an extra challenge, use "Teddy" as the name if no name is entered.

# input: a name (use "Teddy" if none given)
# output: print a string
# rules:
# - must ask for name
# - if no name entered, use "Teddy" as name
# - randomly generate and print age
# - age must be a random number between 20 and 200

# Algorithm:
# - ask for name
# - assign response to newly initialized name variable
# - initialize variable age and assign to it a random number between 20 and 200
# - output name and age using string interpolation


puts "What is your name?"
name = gets.chomp
name = "Teddy" if name.empty?

age = rand(20..200)
puts "#{name} is #{age} years old!"