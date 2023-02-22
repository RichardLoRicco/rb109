=begin
Given a non-empty string, check if it can be constructed by taking a substring of it and
appending multiple copies of the substring together. You may assume the given string consists of lowercase English letters only.

Example 1:
 - Input "abab"
 - Output: True
 - Explanation: It's the substring 'ab' twice.

Example 2:
 - Input: "aba"
 - Output: False

----

input: a non-empty string
return: true if input string can be constructed by taking a substring of it and appending multiple copies of the substring together
rules:
  - assume the input string consists of lowercase english letters only

----

algorithm:
- initialize substrings to []
- initialize last_index to size of string - 1
- from 0 up to last_index, do any of following prove true for each index:
  - initialize slice to string[0..index]
  - initialize multiplier to string's size / slice's size
  - does slice * multiplier == string ?


=end

def repeated_substring(string)
  substrings = []
  last_index = string.size - 1
  
  0.upto(last_index).any? do |index|
    slice = string[0..index]
    multiplier = string.size / slice.size
    slice * multiplier == string
  end
end

p repeated_substring('abab') == true
p repeated_substring('aba') == false
p repeated_substring('aabaaba') == false
p repeated_substring('abaababaab') == true
p repeated_substring('abcabcabcabc') == true
p repeated_substring('aaaaa') == true
