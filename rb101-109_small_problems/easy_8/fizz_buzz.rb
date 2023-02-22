=begin
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", 
if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

----

input: a starting number and an ending number (both appear to be integers)
output: print out all numbers from the starting number to the ending number, except:
  - if a number is divisible by 3, print "Fizz"
  - if a number is divisible by 5, print "Buzz"
  - and if a number is divisible by both 3 and 5, print "FizzBuzz"

----

algorithm:
- initialize results to []
- from starting_num up to _ending_num, do the following for each num:
  - if num is divisible by 3 and 5, add "FizzBuzz" to results
  - if num is divisible by 3, add "Fizz" to results
  - if num is divisible by 5, add "Buzz" to results
  - otherwise, add num converted to string to results
- return results joined with commas

=end

def fizzbuzz(starting_num, ending_num)
  results = []

  starting_num.upto(ending_num) do |num|
    case
    when num % 3 == 0 && num % 5 == 0
      results << "FizzBuzz"
    when num % 3 == 0
      results << "Fizz"
    when num % 5 == 0
      results << "Buzz"
    else
      results << num.to_s
    end
  end

  results.join(", ")
end


# Test Case:
p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz