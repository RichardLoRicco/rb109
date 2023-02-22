=begin
Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 

The return value should be arranged in order from shortest to longest substring.

---

input: a string
return: a list of all substirng of the input string that start at the beginning of said string
rules:
  - return value should be arranged in order from shortest to longest substring

----

algorithm:
- initialize substring_arr to []
- from 0 up to size of string - 1, do the following for each end_index
  - add string[0..end_index] to substring_arr

- return substring_arr
=end

def leading_substrings(string)
  substring_arr = []
 
  0.upto(string.size - 1) { |end_index| substring_arr << string[0..end_index] }
 
  substring_arr
 end
 
 # Test Cases:
 p leading_substrings('abc') == ['a', 'ab', 'abc']
 p leading_substrings('a') == ['a']
 p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']