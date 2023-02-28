=begin

input: an array of integers and a signel sum value
return: the first two values in the input array that add up to form the sum
  - return the values in an array
rules:
  - if there are 2 or more pairs with the required sum, the pair whose second element has the
    smallest index is the solution
examples:
  - [11, 3, 7, 5] & 10 => [3, 7]

----

algorithm:

=end

# This is not my solution, but rather the correct one
def sum_pairs(ints, s)
  def sum_pairs(ints, s)  # Define a method that takes an array of integers and a sum value as arguments
    seen = {}             # Create an empty hash to keep track of seen integers
    ints.each do |i|     # Loop through each integer in the array
      return [s-i, i] if seen[s-i]  # Check if the complement of the current integer has been seen before
                                    # If it has, return the current integer and its complement
      seen[i] = true      # Mark the current integer as seen by adding it to the hash
    end
    nil                   # If no pair is found, return nil
  end
end

p sum_pairs([1, 4, 8, 7, 3, 15], 8) #== [1, 7]