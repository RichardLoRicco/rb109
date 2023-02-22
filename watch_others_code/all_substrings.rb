# Write a method that finds all substrings in a string, no 1 letter words.

=begin

input: a string
return: all substrings in a string
rules:
  - no 1 letter words -> all substrings must be at least two characters

----

algorithm:
- initialize last_index to size of string - 1
- initialize all_substrings to []
- from 0 up to last_index-1, do the following for each index1:
  - from index1 + 1 up to last_index, do the following for each index2:
    - add string[index1..index2] to all_substrings
- return all_substrings
=end

def substrings(string)
  last_index = string.size - 1
  all_substrings = []

  0.upto(last_index-1) do |index1|
    (index1 + 1).upto(last_index) do |index2|
      all_substrings << string[index1..index2]
    end
  end

  all_substrings
end

p substrings("band") == ['ba', 'ban', 'band', 'an', 'and', 'nd']
p substrings("world") == ['wo', 'wor', 'worl', 'world', 'or', 'orl', 'orld', 'rl', 'rld', 'ld']
p substrings("ppop") == ['pp', 'ppo', 'ppop', 'po', 'pop', 'op']
