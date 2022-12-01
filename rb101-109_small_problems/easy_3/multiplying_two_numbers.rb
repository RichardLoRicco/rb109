=begin

Create a method that takes two arguments, multiplies them together, and returns the result.


inputs: two numbers (integers or floats)
output: an integer or float (consisting of the product of the two arguments)

algorithm:
define multiply method which accepts 2 arguments, num1 and num2
- num1 * num 2 -> implicit return

=end

def multiply(num1, num2)
num1 * num2
end



# Example:
multiply(5, 3) == 15 # => true

=begin
Further Exploration
For fun: what happens if the first argument is an Array? What do you think is happening here?

If the first argument is an array, the method will multiply the first array object with the second integer object,
outputting an array whose elements consist of the first array argument repeating num2 number of times. 
An example is below

=end

p multiply([1, 2], 2) # => [1, 2, 1, 2]