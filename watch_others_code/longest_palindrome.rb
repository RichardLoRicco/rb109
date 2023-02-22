=begin
Find the length of the longest substring in the given string that is the same in reverse.

Example:
longest_palindrome("I like racecars that go fast") == 7

If the length of the input string is 0, return value must be 0

----

input: a string
return: the length of the longest substring in the given string that is a palindrome (same in reverse)
rules:
  - if length of input string is 0, return value is 0

----

algorithm:
# return 0 if length of input string is 0
- return 0 if length of string is 0

# find all substrings that are palindromes
- initialize palindrome_substrings to []
- initialize last_index to size of string - 1
- from 0 up to last_index, do the following for each index1:
  - from index_1 up to last_index, do the following for each index2
    - add slice of string from index1 to index2 to palindrome substrings if that slice is equal to its reverse
      -> (use #reverse method)
    

# find longest palindrome substring and return its length
- sort each substring in palindrome_substrings by length and return the last index's length

=end

def longest_palindrome(string)
  return 0 if string.size == 0

  palindrome_substrings = []
  last_index = string.size - 1

  0.upto(last_index) do |index1|
    index1.upto(last_index) do |index2|
      slice = string[index1..index2]
      palindrome_substrings << slice if slice == slice.reverse
    end
  end

  palindrome_substrings.sort_by { |substring| substring.length }[-1].length
end



p longest_palindrome('') == 0
p longest_palindrome('a') == 1
p longest_palindrome('aa') == 2
p longest_palindrome('baa') == 2
p longest_palindrome('aab') == 2
p longest_palindrome('baabcd') == 4
p longest_palindrome('baab1kj12345432133d') == 9
p longest_palindrome("I like racecars that go fast") == 7

