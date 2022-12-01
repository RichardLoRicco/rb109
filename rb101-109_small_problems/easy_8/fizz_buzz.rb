=begin
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. 
Print out all numbers from the starting number to the ending number, except if a number is divisible by 3, print "Fizz", 
if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

Example:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


inputs:
  1. an integer (starting number)
  2. an integer (ending number)
output:
- print out all numbers from starting number to ending number, BUT
  - if a number is divisible by 3, print "Fizz";
  - if a number is divisible by 5, print "Buzz"; and
  - if a number is divisible by 3 and 5, print "FizzBuzz"

algorithm:
define fizzbuzz method that accepts 2 parameters, starting_num and ending_num
    initialize results to []
    create an array of numbers from starting_num to ending_num: and
      -> from starting_num to ending_num, for each num do the following:
        - if num is divisible by 3 and 5:
            add "FizzBuzz" to results array
        - else if num is divisible by 3:
            add "Fizz" to results array
        - else if num is divisible by 5:
            add "Buzz" to results array
        - else:
            add num to results array
    print results array joined with commas

=end

def fizzbuzz(starting_num, ending_num)
  results = []
  (starting_num..ending_num).to_a.each do |num|
    case 
    when num % 3 == 0 && num % 5 == 0
      results << "FizzBuzz"
    when num % 3 == 0
      results << "Fizz"
    when num % 5 == 0
      results << "Buzz"
    else
      results << num
    end
  end
  puts results.join(", ")
end


# Test Case:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz