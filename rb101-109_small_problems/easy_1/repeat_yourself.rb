# Write a method that takes two arguments, a string and a positive integer, and prints 
# the string as many times as the integer indicates.

# Example:

# repeat('Hello', 3)

# Output:
# Hello
# Hello
# Hello

# inputs: a string and a positive integer
# outputs: string(s)
# rules:
# - method prints the input string as many times as the integer indicates 

# Algorithm
# - define method repeat that accepts two arguments, string and positive integer
#   - positive integer times do the following:
#     -> output string

def repeat(string, positive_integer)  
  positive_integer.times { puts string }
end

repeat('Hello', 3)