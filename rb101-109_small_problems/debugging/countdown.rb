=begin
Our countdown to launch isn't behaving as expected. Why? Change the code so that our program successfully counts down from 10 to 1.

=end


def decrease(counter)
  counter -= 1
end

counter = 10

10.times do
  puts counter
  decrease(counter)
end

puts 'LAUNCH!'

=begin

The decrease method is where the problem lies. When we pass in local variable counter as an argument to the decrease method, 
the integer object 10 that local variable counter is referencing is assigned to parameter counter. Therefore, both local 
variable counter and parameter counter point to the same object in memory. On line 8, however, we reassign parameter counter
to a new integer object. Therefore, the link is broken between parameter counter and the integer object referenced by local variable counter. 

Below we fix the problem by changing the decrease method so that it's return value is counter - 1. Therefore, when we invoke this method and pass
in local variable counter to it, the method will return a value that is one less than the integer object local variable counter references.
Furthermore, we reassign local variable counter to this return value, as can be seen on line 42 below. This will successfully increment counter
down from 10 to 1.

=end


def decrease(counter)
  counter - 1
end

counter = 10

10.times do
  puts counter
  counter = decrease(counter)
end

puts 'LAUNCH!'