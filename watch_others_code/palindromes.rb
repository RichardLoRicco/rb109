# Write a method that will return all palindromes within a string.

=begin

input: a string
return: all palindromes within the string
rules:
  implicit:
    - palindromes must be 2 characters or more

----

algorithm:
- initialize last_index to size of string - 1
- initialize palindrome_substrings to []
- from 0 up to last_index-1, do the following for each index1:
  - from index1+1 up to last_index, do the following for each index2:
    - initialize slice to string[index1..index2]
    - add slice to palindrome_substrings if slice is equal to slice reversed
- return palindrome substrings

=end

def palindromes(string)
  last_index = string.size - 1
  palindrome_substrings = []

  0.upto(last_index - 1) do |index1|
    (index1 + 1).upto(last_index) do |index2|
      slice = string[index1..index2]
      palindrome_substrings << slice if slice == slice.reverse
    end
  end

  palindrome_substrings
end

p palindromes('ppop') == ['pp', 'pop']




# # Write a method that finds the longest substring that is a palindrome within a string.

def longest_palindrome(string)
  last_index = string.size - 1
  palindrome_substrings = []
  
  0.upto(last_index - 1) do |index1|
    (index1 + 1).upto(last_index) do |index2|
      slice = string[index1..index2]
      palindrome_substrings << slice if slice == slice.reverse
    end
  end

  palindrome_substrings.sort_by { |substring| substring.length }[-1]
end

p longest_palindrome("ppop") == 'pop'
