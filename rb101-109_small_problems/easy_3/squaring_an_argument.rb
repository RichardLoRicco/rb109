=begin

Using the multiply method from the "Multiplying Two Numbers" problem, write a method that computes the square of its argument (the square is the result of multiplying a number by itself).

input: a number (integer or float?)
output: a number (integer or float?) (consists of the square of the argument)
rules:
- calculate and return the square of the argument

algorithm:
define multiply method which accepts 2 parameter, num1 and num2
- num1 * num 2 -> implicit return

define square method that accepts 1 parameter, num
-invoke the multiply method and pass in num as an argument

=end


# def multiply(num1, num2)
#   num1 * num2
# end

# def square(num)
#   multiply(num, num)
# end



# # Example:
# p square(5) == 25
# p square(-8) == 64

=begin

Further Exploration
What if we wanted to generalize this method to a "power to the n" type method: cubed, to the 4th power, to the 5th, etc.
How would we go about doing so while still using the multiply method?

----

algorithm:
- initialize running_product to num
- initialize count to 1

- until count < n, do the following:
    - invoke the multiply method and pass in num and running_product
      -> assign the return value to running_product
    - increment count by 1
- return running_product

=end


def multiply(num1, num2)
  num1 * num2
  end

def square(num, power)
  running_product = num
  count = 2

  until count > power
    running_product = multiply(num, running_product)
    count += 1
  end
running_product
end



# Example:
p square(5, 2 )== 25
p square(3, 3 ) == 27
p square(2, 4) == 16