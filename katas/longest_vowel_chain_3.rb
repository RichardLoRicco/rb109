=begin
Longest vowel chain
The vowel substrings in the word codewarriors are o,e,a,io. The longest of these has a length of 2.

Given a lowercase string that has alphabetic characters only and no spaces, return the length of the longest vowel substring. 

Vowels are any of aeiou.

----

input: a lowercase string 
  - only contains alphabetic characters
  - contains no spaces
return: the length of the longest vowel substring
rules:
  - vowels are any of aeiou
  - only dealing with lowercase alphabetic characters
notes:
  - thinking that we want to create a vowel length tracker and a longest vowel length tracker and then iterate/replace as we go

----

algorithm:
- initialize longest_vowel_count to 0
- initialize current_vowel_count to 0
- split string into array and iterate over each char so that for each char and index:
  - if char is a vowel, increment current_vowel_count by 1
  - otherwise, re-assign current_vowel_count to 0
  - if current_vowel_count > longest_vowel_count, reassign longest_vowel_count to value of current_vowel_count
- return longest_vowel_count

=end

def solve(string)
  longest_vowel_count = 0
  current_vowel_count = 1
  string.chars.each do |char|
    char =~ /[aeiou]/ ? current_vowel_count += 1 : current_vowel_count = 0
    longest_vowel_count = current_vowel_count if current_vowel_count > longest_vowel_count
  end
  longest_vowel_count 
end


p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8
