# Find the longest substring in alphabetical order.
# Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".
# The input will only consist of lowercase characters and will be at least one letter long.
# If there are multiple solutions, return the one that appears first.

=begin

input: a string, consisting of lowercase characters and at least 1 letter long
return: the longest alphabetical substring 
  - if there are multiple solutions, return the one that appears first
rules:
  implicit: same char can be back to back to be considered in alphabetical order ("aabb")

algorithm:
- initialize substrings to []
- initialize current to ""
- iterate through each char of string and for each char do the following:
    - if current is empty or if current[-1] <= char:
        - add char to current
    - otherwise:
      - add current to substrings
      - reassign current to char
- add current to substrings unless current is empty
- return the max substring in substrings


=end


def longest(string)
  substrings = []
  current = ""
  string.each_char do |char|
    if current.empty? || current[-1] <= char
      current << char
    else
      substrings << current
      current = char
    end
  end

  substrings << current unless current.empty?

  substrings.max_by { |substring| substring.size }
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') ==  'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'