# Write a program that will ask for user's name. The program will then greet the user.
# If the user writes "name!" then the computer yells back to the user.

# inputs:
# - name -> with or without "!"
# outputs:
# - greeting with name using string interpolation
# rules:
# - if the user ends input with "!", greet user in ALL CAPS

# algorithm
# ask user for name
# - store input as name
# check if name ends in "!"
# - if it does, greet with string interpolation in all caps,
# - else, greet with string interpolation without all caps

# puts "What is your name"
# name = gets.chomp

# if name.end_with?("!")
#   name = name.chop
#   puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
# else
#    puts "Hello #{name}"
# end


# Examples
# What is your name? Bob
# Hello Bob.

# What is your name? Bob!
# HELLO BOB. WHY ARE WE SCREAMING?


# Further Exploration
# Try modifying our solution to use String#chomp! and String#chop!, respectively.

puts "What is your name"
name = gets
name.chomp!

if name.end_with?("!")
  name.chop!
  puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
else
   puts "Hello #{name}."
end