=begin

The vowel substrings in the word codewarriors are o,e,a,io. 
The longest of these has a length of 2. 

Given a lowercase string that has alphabetic characters only (both vowels and consonants) and no spaces, 
return the length of the longest vowel substring. Vowels are any of aeiou.

----

input: lowercase string - consists only of alphabetic characters and no spaces
return: the length of the longest vowel substring (as integer)
rules:
  - vowels are any of aeiou
  - example: vowel substrings in the word "codewarriors" are o, e, a, io
    -> longest of these has length of 2

----

algorithm:
scan s for any vowels
  - (use "+" repetition character)
  -> sort by size and return size of the largest element

=end



def solve(s)
  s.scan(/[aeiou]+/).sort_by do |element|
    element.size
  end[-1].size
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3