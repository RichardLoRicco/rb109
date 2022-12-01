# Create a simple tip calculator. The program should prompt for a bill amount and a tip rate. 
# The program must compute the tip and then display both the tip and the total amount of the bill.

# inputs:
# - bill
# - tip percentage
# outputs:
# - tip
# - total amount of bill

# algorithm:
# ask for bill
# - save as bill
# ask for tip percentage
# - save as tip percentage
# multiple tip percentage by bill
# - save as tip
# add tip and bill
# - save as total 

puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_i

tip = (bill * (tip_percentage * 0.01)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{total}"



# Example:
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0



# Further Exploration
# Our solution prints the results as $30.0 and $230.0 instead of the more usual $30.00 and $230.00. 
# Modify your solution so it always prints the results with 2 decimal places.

# Hint: You will likely need Kernel#format for this.


puts "What is the bill?"
bill = gets.chomp.to_f

puts "What is the tip percentage?"
tip_percentage = gets.chomp.to_i

tip = (bill * (tip_percentage * 0.01)).round(2)
total = (bill + tip).round(2)

puts "The tip is $#{format('%.2f', tip)}"
puts "The tip is $#{format('%.2f', total)}"