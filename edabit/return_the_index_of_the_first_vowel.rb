=begin

Create a function that returns the index of the first vowel in a string.


Notes:
Input will be single words.
Characters in words will be upper or lower case.
"y" is not considered a vowel.
Input always contains a vowel.
  
----

input: a string
return: the index of the first vowel in the input string
rules:
  - input is a single word
  - chars in words can be upper or lower case
  - "y" is not a vowel
  - input will always contain a vowel

----

algorithm:
- find index of first occurence of upper or lowercase vowel (use #=~)


=end
  
def first_vowel(string)
  string =~ /[aeiouAEIOU]/
end
  
  
# Examples
p first_vowel("apple") == 0
p first_vowel("hello") == 1
p first_vowel("STRAWBERRY") == 3
p first_vowel("pInEaPPLe") == 1