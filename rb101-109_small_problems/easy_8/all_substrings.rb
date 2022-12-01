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

algorithm:
define method substring that accepts 1 parameter string
  initialize results to []
  from 0 to the size of string, do the following for each start_index:
    current_substring is equal to string's characters from start_index to -1
    add the return value of invoking the leading_substrings method and passing in current_substring as an argument to results array
  implicitly return results array

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
  results = []
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]
