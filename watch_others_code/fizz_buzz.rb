=begin
write a method that takes two arguments: the first is the starting number, and the second is the ending number. 

Print out all numbers between the two numbers except if a number is divisible by 3, print out "Fizz", 
if a number is divisible by 5, print out "Buzz", and if a number is divisible by 3 and 5, print out "FizzBuzz".

fizzbuzz(1, 10)
fizzbuzz(1, 15)

----

input: two integers:
  1) starting_number; and
  2) ending_number
output: print out all numbers between the two numbers (including them), except:
  - if a number is divisible by 3, print "Fizz",
  - if a number is divisibly by 5, print "Buzz", and
  - if a number is divisble by both 3 and 5, print out "FizzBuzz"

----

algorithm:
- initialize results to []
- from starting_number up to ending_number, do the following for each num:
    - if num is evenly divisibly by 3 and 5:
      - add "Fizzbuzz" to results
    - else if num is evenly divisible by 3:
      -  add "Fizz" to results
    - else if num is evenly divisible by 5:
      - add "Buzz" to results
    else:
      - add num to results
- join results with commas separating each element and output
=end

def fizzbuzz(starting_number, ending_number)
  results = []
  
  starting_number.upto(ending_number) do |num|
    if num % 3 == 0 && num % 5 == 0
      results << "FizzBuzz"
    elsif num % 3 == 0
      results << "Fizz"
    elsif num % 5 == 0
      results << "Buzz"
    else
      results << num
    end
  end

  puts results.join(", ")
end


fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz