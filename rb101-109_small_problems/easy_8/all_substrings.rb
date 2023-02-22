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
return: a list of all substrings of the input string (an array)
rules:
  - returned list should be ordered by where in the string the substring begins
  - use leading_substrings method from prior exercise

----

algorithm:
- initialize all_substrings to []
- from 0 up to size of string - 1, do the following for each index
  - invoke the leading_substrings method and pass in string[index..-1]
    -> add return value to all_substrings
- flatten all_substrings
  -> implicitly return all_substrings

=end

def leading_substrings(string)
  substring_arr = []
 
  0.upto(string.size - 1) { |end_index| substring_arr << string[0..end_index] }
 
  substring_arr
 end
 


def substrings(string)
  all_substrings = []
  0.upto(string.size - 1) do |index|
    all_substrings << leading_substrings(string[index..-1])
  end
  all_substrings.flatten
end


p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]