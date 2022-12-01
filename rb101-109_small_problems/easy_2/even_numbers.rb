# Print all even numbers from 1 to 99, inclusive, to the console, with each number on a separate line.

# input: nothing
# output: print all even numbers from 1 to 99 inclusive on separate lines

# algorithm
# intialize counter variable and set to 0
# while counter is less than or equal to 99:
#   - print counter if counter is even
#   - add 1 to counter

counter = 1
while counter <= 99
  puts counter if counter.even?
  counter += 1
end