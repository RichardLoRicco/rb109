=begin

Create a function that takes a string and returns a new string with all vowels removed.

Notes:
"y" is not considered a vowel.
Expect a valid string for all test cases.

----

input: a string
return: a new string with all vowels removed
rules:
  - "y" is not a vowel
  - assume input will always be a valid string

----

algorithm:
- remove all lower and uppercase vowels from string (using gsub)

=end

def remove_vowels(string)
  string.gsub!(/[aeiouAEIOU]/, "")
end

# Examples
p remove_vowels("I have never seen a thin person drinking Diet Coke.") == " hv nvr sn  thn prsn drnkng Dt Ck."
p remove_vowels("We're gonna build a wall!") == "W'r gnn bld  wll!"
p remove_vowels("Happy Thanksgiving to all--even the haters and losers!") == "Hppy Thnksgvng t ll--vn th htrs nd lsrs!"