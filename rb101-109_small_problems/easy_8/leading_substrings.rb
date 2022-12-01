=begin

Write a method that returns a list of all substrings of a string. 
The returned list should be ordered by where in the string the substring begins. 
This means that all substrings that start at position 0 should come first, then all substrings that start at position 1, and so on. 
Since multiple substrings will occur at each position, the substrings at a given position should be returned in order from shortest to longest.

You may (and should) use the leading_substrings method you wrote in the previous exercise:

Examples:
substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

input: a string
output: an array
- returns a list of all substrings of a string
rules:
- returned list should be ordered by where in the string the substring begins
- should use leading_substrings method I wrote in prior exercise



=end

def leading_substrings(string)
  substring_arr = []
  slice_length = 1
  loop do
    substring_arr << string.slice(0, slice_length)
    break if slice_length == string.length
    slice_length += 1
  end
  substring_arr
end

def substrings(string)
  substring_arr = []
  length = string.length
  start_index = 0
  while length > 0
    substring_arr << leading_substrings(string[start_index, length])
    start_index += 1
    length -= 1
  end
  substring_arr.flatten
end


# Test Case:
p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
