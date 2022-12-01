# Write a method that takes one argument, a positive integer, and 
# returns a string of alternating 1s and 0s, always starting with 1. 
# The length of the string should match the given integer.


# input: a positive integer
# output: return a string
# rules:
# - the returned string must be of alternating 1s and 0s, always
#   starting with 1.
# - the length of the returned string should match the given integer
# questions:
# - what happens if 0 is an argument?

# algorithm:
# define stringy method which accepts 1 parameter pos_int
# - intialize variable arr and assign to it an empty array object
# - DO the following pos_int number of times:
#   - if arr is empty, append '1' to arr
#   - elsif arr's size is odd, append '0' to arr
#   - else, append '1' to arr
# - join arr to convert back to string

def stringy(pos_int)
  arr = []
  pos_int.times do |_|
    if arr.empty?
      arr << "1"
    elsif arr.size.odd?
      arr << "0"
    else
      arr << "1"
    end
  end
  arr.join
end



# Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
# The tests above should print true.

