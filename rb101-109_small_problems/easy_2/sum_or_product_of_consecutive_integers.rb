# Write a program that asks the user to enter an integer greater than 0, then asks if the user 
# wants to determine the sum or product of all numbers between 1 and the entered integer.

# inputs:
# - integer (greater than 0)
# - string character 's' or 'p' (for sum or product)
# output:
# - outputs the product or sum using string interpolation

# algorithm:
# ask user for integer greater than 0
# - save integer as num
# ask user to enter 's' for sum or 'p' for product
# - same as operation
# if operation equals 's'
# -> compute sum and output
# if operation equals 'p'
# -> compute product and output
# else
# -> ask user to try again

def compute_sum(number)
(1..number).reduce(:+)
end

def compute_product(number)
  (1..number).reduce(:*)
end



puts "Please enter an integer greater than 0:"
num = gets.chomp.to_i

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp.downcase

if operation.start_with?('s')
  sum = compute_sum(num)
  puts "The sum of the integers between 1 and #{num} is #{sum}."
elsif operation.start_with?('p')
  product = compute_product(num)
  puts "The product of the integers between 1 and #{num} is #{product}."
else
 puts "You failed to enter 's' or 'p'. Run program again to reattempt."
end




# Examples:
# >> Please enter an integer greater than 0:
# 5
# >> Enter 's' to compute the sum, 'p' to compute the product.
# s
# The sum of the integers between 1 and 5 is 15.


# >> Please enter an integer greater than 0:
# 6
# >> Enter 's' to compute the sum, 'p' to compute the product.
# p
# The product of the integers between 1 and 6 is 720.