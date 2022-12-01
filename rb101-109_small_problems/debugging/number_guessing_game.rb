=begin
A friend of yours wrote a number guessing game. The first version he shows you picks a random number between 1 and a provided 
maximum number and offers you a given number of attempts to guess it.

However, when you try it, you notice that it's not working as expected. Run the code and observe its behavior. 
Can you figure out what is wrong?

=end
# def valid_integer?(string)
#   string.to_i.to_s == string
# end

# def guess_number(max_number, max_attempts)
#   winning_number = (1..max_number).to_a.sample
#   attempts = 0

#   loop do
#     attempts += 1
#     break if attempts > max_attempts

#     input = nil
#     until valid_integer?(input)
#       print 'Make a guess: '
#       input = gets.chomp
#     end

#     guess = input.to_i

#     if guess == winning_number
#       puts 'Yes! You win.'
#     else
#       puts 'Nope. Too small.' if guess < winning_number
#       puts 'Nope. Too big.'   if guess > winning_number

#       # Try again:
#       guess_number(max_number, max_attempts)
#     end
#   end
# end

# guess_number(10, 3)


=begin

The problem lies in that we are invoking the guess_number method again upon guessing the incorrect answer. This resets attempts to 0 and will 
also reset the winning_number.

Furthermore, the method will continue looping even if we select the right guess that matches the winning_number.

We need to remove this additional method invocation and rely on the loop inside of the guess_number method
to continue prompting the user for guesses until the number of max attempts is reached. Furthermore, we need to introduce a break if the correct
number is guessed.

=end

require 'pry'

def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  # binding.pry

  loop do
    attempts += 1
    break if attempts > max_attempts
    
    # binding.pry

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
      break
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number
      # Try again:
    end
  end
end

guess_number(10, 3)