# Suppose you have an arbitrary natural number (the target) and a set of 
# one or more additional natural numbers (the factors). Write a program 
# that computes the sum of all numbers from 1 up to the target number 
# that are also multiples of one of the factors. 

# For instance, if the target is 20, and the factors are 3 and 5, that gives
# us the list of multiples 3, 5, 6, 9, 10, 12, 15, 18. 
# The sum of these multiples is 78.

# If no factors are given, use 3 and 5 as the default factors.

# Inputs:
#   target number
#   set of factors

# Outputs:
#   sum of multiples

# Rules:
#   the multiples to be summed must be unique -> Ex) 15
#   target value is the limit, but is not considered a multiple
#   all numbers are natural numbers: they are the set of integers >= 0

# Mental Models
# Determine a list of all multiples of a set of factors up to a target
# value, then filter the list of multiples to the unique values.
# Finally, compute and retur the sum of the unique multiples.
# Or...
# Incrementally build a list of numbers that are multiples of a set of one or more
# factors. Add a multiple to the list only if it is not yet on the list. Finally,
# compute and return the sume of the numbers on the list.

# Examples / Test Cases
# Example 1
#   Inputs:
#     target number: 20
#     factors: [3, 5]
#   Output:
#     78
# Example 2
#   Inputs:
#     target number: 20
#     factors: [3]
#   Output:
#     63
# Example 3
#   Inputs:
#     target number: 20
#     factors: [5]
#   Output:
#     30
# Example 4
#   Inputs:
#     target number: 20
#     factors: []
#   Output:
#     78
# Example 5
#   Inputs:
#     target number: 1
#     factors: []
#   Output:
#     0
# Example 6
#   Inputs:
#     target number: 20
#     factors: [19]
#   Output:
#     19


# Data Structure
# We need to collect the values that are multiples of our factors., and then add
# them up. An array seems like a good fit for this collection of multiples.

# Algorithm
# First Mental Model:
#   1. Create an empty array called `multiples` that will contain the multiples.
#   2. Check whether the list of factors is empty. If there are no factors, 
#      set the list to `[3, 5]`.
#   3. For every `factor` in the `factors` list:
#     1. Set the `current_multiple` to `factor` to keep track of the multiples of `factor`.
#     2. While `current_multiple` < `target`
#       1. Append the `current_multiple` to `multiples`.
#       2. Add `factor` to `current_multiple`.
#   4. Filter duplicate numbers from `multiples`.
#   5. Compute and return the sum of the numbers in `multiples`. 

# Second Mental Model:
#   1. Create an empty array called `multiples` that will contain the list of `multiples`
#   2. Check whether the list of factors is empty. If there are no factors, set the list to [3, 5]
#   3. For every factor in the factors list:
#     1. Set the `current_multiple` to factor to keep track of the `multiples` of factor.
#     2. While `current_multiple` < `target`
#       1. Is the `current_multiple` in `multiples` already?
#         1. Yes - do nothing
#         2. No - Append the `current_multiple` to `multiples`.
#       2. Add factor to `current_multiple`.
#   4. Compute and return the sum of the numbers in `multiples`.

# Code with Intent
def sum_of_multiples(target, factors)
  multiples = []
  factors = [3, 5] if factors.length == 0

factors.each do |factor|
  current_multiple = factor
  while current_multiple < target
    multiples << current_multiple
    current_multiple += factor
  end
end

multiples.uniq.reduce(:+)


end


sum_of_multiples(20, [3, 5])  # returns 78
sum_of_multiples(20, [3])     # returns 63
sum_of_multiples(20, [5])     # returns 30
sum_of_multiples(20, [])      # returns 78
sum_of_multiples(1, [])       # returns 0
sum_of_multiples(20, [19])    # returns 19