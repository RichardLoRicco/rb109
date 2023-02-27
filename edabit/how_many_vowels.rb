=begin

Create a function that takes a string and returns the number (count) of vowels contained within it.


Notes:
a, e, i, o, u are considered vowels (not y).
All test cases are one word and only contain letters.


----

input: a string
return: the number (count) of vowels contained within the input string
rules:
  - aeiou are considered vowels
  - all test cases are one word and only contain letters

----

algorithm:
- count the number of occurences of vowels (aeiou) in downcased string

=end

def count_vowels(string)
  string.downcase.count("aeiou")
end

# Examples
p count_vowels("Celebration") == 5
p count_vowels("Palm") == 1
p count_vowels("Prediction") == 4