# take a string as an argument, return the string in reverse order without using the built-in reverse method.
#
# input: a String
# return: the string in reverse order without using the built-in Method
# rules:
#   - mutate input String
#   - reversing an empty string yields an empty String
#
# ----
#
# algorithm:
# - initialize reverse_arr
# - split string into an array of chars and iterate reverse over each char as follows:
#   - add char to reverse_arr (<<)
# - return reverse_arr joined
#
#
#

def reverse_string(string)
  reverse_arr = []
  string.chars.reverse_each { |char| reverse_arr << char }
  reverse_arr.join('')
end

p reverse_string('abcde') == 'edcba'
p reverse_string(' ') == ' '
p reverse_string('football') == 'llabtoof'
