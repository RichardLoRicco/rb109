# Given a non-empty string check if it can be constructed by taking a substring of it and appending multiple copies of the substring together. 
# You may assume the given string consists of lowercase English letters only.

# Example 1:
# Input: "abab"
# Outout: True
# Explanation: It's the substring "ab" twice.

# Example 2:
# Input:"aba"
# Output: False

=begin
----

input: a string
output: a boolean
  - true if input string can be constructed by taking a substring of it and appending multiple copies of the substring together
  - false if not
rules:
  - assume the given string consists of lowercase english letters only

----

algorithm
define repeated_substring_pattern method that accepts 1 parameter string
  initialize array_of_substrings to empty array

  add all substrings from index 0 to halfway through string to array_of_substrings if the length of the substring is a multiple of the length of string
    - from 0 up to half of string's size, for each starting_index:
      - iterate from 1 up to half of string's size, and for each slice_length:
        - add the slice of string from starting_index with length slice_length to array_of_substrings if string's length is evenly divisible by
          slice_length
    - iterate over array_of_substrings and for each substring:
      - return true if substring multiplied by (string's length divided by substring's length) is equal to string
    
    - return false

=end

def repeated_substring_pattern(string)
  array_of_substrings = []

  0.upto(string.size / 2) do |starting_index|
    1.upto(string.size / 2) do |slice_length|
      array_of_substrings << string.slice(starting_index, slice_length) if string.length % slice_length == 0
    end
  end

  array_of_substrings.each do |substring|
    return true if substring * (string.length / substring.length) == string
  end

  false
end


p repeated_substring_pattern("abab") == true 
p repeated_substring_pattern("aba") == false 
p repeated_substring_pattern("aabaaba") == false 
p repeated_substring_pattern( "abaababaab") == true 
p repeated_substring_pattern("abcabcabcabc") == true