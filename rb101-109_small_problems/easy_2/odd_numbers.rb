# Print all odd numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# input: nothing
# output: print all odd numbers from 1 to 99 (including them) on separate lines

# algorithm:
# create counter variable and set to 0
# loop as follows:
#   - add 1 to counter
#   - print counter if counter is odd
#   - break out of loop when counter is greater than or equal to 99

counter = 0
loop do
  counter += 1
  puts counter if counter.odd?
  break if counter >= 99
end