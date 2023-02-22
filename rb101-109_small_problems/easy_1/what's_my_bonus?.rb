=begin

Write a method that takes two arguments, a positive integer and a boolean, 
and calculates the bonus for a given salary. If the boolean is true, 
the bonus should be half of the salary. If the boolean is false,
 the bonus should be 0.

----

input: 2 arguments:
  1. a positive integer
  2. a boolean
output: return bonus
  - if boolean is true, bonus is half of salary
  - if boolean is false, bonus is 0

----

algorithm
define calculate_bonus method that accepts 2 parameters, pos_int and bool
    - if bool is true
      -> return pos_int / 2
    - otherwise (if bool is false)
      -> return 0

=end

def calculate_bonus(pos_int, bool)
  bool ? pos_int / 2 : 0
end


# Examples:
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
# The tests above should print true.