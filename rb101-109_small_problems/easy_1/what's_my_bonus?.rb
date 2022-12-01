# Write a method that takes two arguments, a positive integer and a boolean, 
# and calculates the bonus for a given salary. If the boolean is true, 
# the bonus should be half of the salary. If the boolean is false,
#  the bonus should be 0.


# inputs: 
#   - a positive integer
#   - a boolean
# output: return a positive integer
# rules:
# - method calculates the bonus for a salary:
#   1. if input boolean is true, bonus is half of salary
#   2. if input boolean is false, bonus is 0

# algorithm
# define method calculate_bonus that accepts 2 parameters, salary and is_bonus
# - if is_bonus is true, multiply salary / 2 , else 0

def calculate_bonus(salary, is_bonus)
  is_bonus ? salary / 2 : 0
end

# Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
# The tests above should print true.