=begin

Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those
two numbers: addition, subtraction, product, quotient, remainder, and power. 
Do not worry about validating the input.

inputs: two positive integers
output: 4 different occurences of string interpolation:
rules:
- must calculate and output:
    1. addition
    2. subtraction
    3. product
    4. quotient
    5. remainder
    6. power

algorith:
ask user for first number
  - save as first_number
ask user for second number
  - save as second_number
calculate addition
  - output
calculate subtraction
  - output
calculate product
  - output
calculate quotient
  - output
calculate remainder
  - output
calculate power
  - output

=end

puts "Enter the first number:"
first_number = gets.chomp.to_i

puts "Enter the second number:"
second_number = gets.chomp.to_i

sum = first_number + second_number
puts "#{first_number} + #{second_number} = #{sum}"

difference = first_number - second_number
puts "#{first_number} - #{second_number} = #{difference}"

product = first_number * second_number
puts "#{first_number} * #{second_number} = #{product}"

quotient = first_number / second_number
puts "#{first_number} / #{second_number} = #{quotient}"

remainder = first_number % second_number
puts "#{first_number} % #{second_number} = #{remainder}"

power = first_number ** second_number
puts "#{first_number} ** #{second_number} = #{power}"


=begin
Example
==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

=end